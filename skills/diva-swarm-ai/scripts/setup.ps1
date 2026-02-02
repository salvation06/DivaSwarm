param (
    [string]$Objective = ""
)

$TaskFile = "task.md"
$SkillDir = ".agent\skills\DivaSwarm"
$GlobalSkillDir = "$env:USERPROFILE\.antigravity\skills\DivaSwarm"

# 1. Check for Objective
if (-not $Objective) {
    Write-Host "DivaSwarm: No objective provided. Please trigger 'setup: <objective>' or provide it now."
    $Objective = Read-Host "Enter Project Objective"
}

if (-not $Objective) {
    Write-Error "DivaSwarm: Setup cancelled - No objective provided."
    exit 1
}

# 2. Create task.md
$TaskContent = @"
# STATE
**Objective**: $Objective
**Last Milestone**: Project initialized via DivaSwarm
**Current Blocker**: None
**Next Move**: Initialize Implementation Plan

## Tasks
- [x] Create project task list <!-- id: 1 -->
- [ ] Create implementation plan <!-- id: 2 -->
"@

Set-Content -Path $TaskFile -Value $TaskContent -Force
Write-Host "DivaSwarm: task.md created with objective: $Objective"

# 3. Create Local Skill Directory
if (-not (Test-Path $SkillDir)) {
    New-Item -ItemType Directory -Force -Path $SkillDir | Out-Null
}

# 4. Copy Global Skill to Local
if (Test-Path $GlobalSkillDir) {
    Copy-Item -Path "$GlobalSkillDir\*" -Destination $SkillDir -Recurse -Force
    Write-Host "DivaSwarm: Skill files synchronized to $SkillDir"
} else {
    Write-Warning "DivaSwarm: Global skill directory not found at $GlobalSkillDir. Only task.md was created."
}

Write-Host "DivaSwarm: Setup complete. You are runway ready."
