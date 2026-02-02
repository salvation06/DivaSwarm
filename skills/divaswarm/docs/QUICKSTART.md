# DivaSwarm v6.1.0 Quickstart

Get up and running with DivaSwarm in under 5 minutes.

---

## Installation

### Claude Code CLI (Global - All Projects)

**Windows:**
```powershell
# Create skills directory
mkdir "$env:USERPROFILE\.claude\skills\DivaSwarm" -Force

# Copy DivaSwarm
Copy-Item -Recurse "C:\support\DivaSwarm\.agent\skills\DivaSwarm\*" "$env:USERPROFILE\.claude\skills\DivaSwarm\"
```

**macOS/Linux:**
```bash
# Create skills directory
mkdir -p ~/.claude/skills/DivaSwarm

# Copy DivaSwarm
cp -r /path/to/DivaSwarm/.agent/skills/DivaSwarm/* ~/.claude/skills/DivaSwarm/
```

**Verify installation:**
```bash
ls ~/.claude/skills/DivaSwarm/
# Should show: SKILL.md, agents/, docs/
```

DivaSwarm will now auto-load in every Claude Code session.

---

### Antigravity (Global - All Projects)

**Option 1: User-level skills (Recommended)**
```bash
# Create Antigravity skills directory
mkdir -p ~/.antigravity/skills/DivaSwarm

# Copy DivaSwarm
cp -r /path/to/DivaSwarm/.agent/skills/DivaSwarm/* ~/.antigravity/skills/DivaSwarm/
```

**Option 2: Project-level (per project)**
```bash
# In your project root
mkdir -p .antigravity/skills/DivaSwarm
cp -r /path/to/DivaSwarm/.agent/skills/DivaSwarm/* .antigravity/skills/DivaSwarm/
```

**Option 3: Symlink (keep in sync with source)**
```bash
# Windows
mklink /D "%USERPROFILE%\.antigravity\skills\DivaSwarm" "C:\support\DivaSwarm\.agent\skills\DivaSwarm"

# macOS/Linux
ln -s /path/to/DivaSwarm/.agent/skills/DivaSwarm ~/.antigravity/skills/DivaSwarm
```

---

## First Use

### 1. Create a THE_PULSE.md in your project
```markdown
# STATE
**Objective**: <What you're building>
**Last Milestone**: Project initialized
**Current Blocker**: None
**Next Move**: <First step>

## Tasks
- [ ] Task 1 <!-- id: 1 -->
- [ ] Task 2 <!-- id: 2 -->
```

### 2. Use Magic Triggers

| Trigger | What It Does | Example |
|---------|--------------|---------|
| `plan:` | Create implementation plan | `plan: add user authentication` |
| `setup:` | Automated project initialization | `setup: build a mobile app` |
| `ralph:` | Deep analysis + execution | `ralph: debug the login failure` |
| `ulw:` | Quick fix, minimal chat | `ulw: fix the typo in header` |
| `eco:` | Token-saving mode | `eco: find all API routes` |
| `auto:` | Autonomous long tasks | `auto: refactor the database layer` |

### 3. Invoke Agents Directly

```
/agents:architect    - System design, root cause analysis
/agents:executor     - Implementation, refactoring
/agents:explore      - Find files, navigate codebase
/agents:critic       - Review code, find issues
/agents:qa-tester    - Verify changes work
```

---

## Quick Examples

**Debug a bug:**
```
ralph: the API returns 500 on POST /users
```

**Add a feature:**
```
plan: add dark mode toggle to settings page
```

**Quick fix:**
```
ulw: change button color to blue
```

**Find something:**
```
eco: where is the database connection configured?
```

---

## Directory Structure After Install

```
~/.claude/skills/DivaSwarm/     # Claude Code
~/.antigravity/skills/DivaSwarm/ # Antigravity
├── SKILL.md                      # Orchestrator
├── agents/                       # 15 specialized agents
│   ├── architect.agent.md
│   ├── executor.agent.md
│   ├── explorer.agent.md
│   └── ... (12 more)
└── docs/
    ├── QUICKSTART.md             # This file
    ├── USER_GUIDE.md             # Full documentation
    └── BEST_PRACTICES.md         # Tips & patterns
```

---

## Next Steps

1. Read the [Deep Dive](DeepDive.md) for architectural details.
2. Review Tool-Specific Guides:
    - [Antigravity](Antigravity.md)
    - [Claude CLI](Claude_CLI.md)
    - [Cursor](Cursor.md)
    - [CoPilot](CoPilot.md)
3. Check [Best Practices](BEST_PRACTICES.md) for token efficiency.

---

*DivaSwarm v6.1.0: Relentless. Token-Efficient. Precise.*
