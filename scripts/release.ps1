param (
    [string]$Version,
    [string]$Token = $env:GITHUB_TOKEN,
    [switch]$DryRun
)

# 1. Version Detection
if (-not $Version) {
    $SkillPath = "c:\support\DivaSwarm\skills\divaswarm\SKILL.md"
    if (Test-Path $SkillPath) {
        $Content = Get-Content $SkillPath -Raw
        if ($Content -match "v(\d+\.\d+\.\d+)") {
            $Version = "v$($Matches[1])"
            Write-Output "Detected Version: $Version"
        }
    }
}

if (-not $Version) {
    $Version = "v7.3.0"
    Write-Output "Defaulting to Version: $Version"
}

# 2. Tagging Logic
Write-Output "Creating Git Tag: $Version"
if (-not $DryRun) {
    $Tags = git tag -l $Version
    if ($Tags) {
        Write-Output "Tag already exists locally."
    }
    else {
        git tag -a $Version -m "Release $Version"
        git push origin $Version
    }
}

# 3. GitHub API Release
$Repo = "salvation06/DivaSwarm"
$Uri = "https://api.github.com/repos/$Repo/releases"

# Use braces to avoid "drive-qualified" variable errors like $Version:
$ReleaseName = "DivaSwarm ${Version}: Couture Agent Expansion"
$BodyData = @{
    tag_name   = $Version
    name       = $ReleaseName
    body       = "Formal release of ${Version}. Introduces specialized agents (DevOps, PM, Sales, Marketing) for absolute peak orchestration."
    draft      = $false
    prerelease = $false
} | ConvertTo-Json

$Headers = @{
    "Accept" = "application/vnd.github.v3+json"
}
if ($Token) {
    $Headers.Add("Authorization", "token $Token")
}

Write-Output "Creating GitHub Release..."
if (-not $DryRun) {
    if (-not $Token) {
        Write-Output "ERROR: GITHUB_TOKEN missing."
        exit 1
    }
    try {
        $Resp = Invoke-RestMethod -Uri $Uri -Method Post -Body $BodyData -Headers $Headers -ContentType "application/json"
        Write-Output "Release created: $($Resp.html_url)"
    }
    catch {
        Write-Error "Failed: $_"
    }
}
else {
    Write-Output "[DRY-RUN] POST $Uri"
}
