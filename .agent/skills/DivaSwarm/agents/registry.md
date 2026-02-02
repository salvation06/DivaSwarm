# DivaSwarm Agent Registry (v6.0)

This file contains the detailed metadata and personas for the DivaSwarm system. The Orchestrator loads this file ONLY when a specialized agent is triggered.

## 🏛️ Analytic Tier (L3) - Analysis, Research, Planning

### Architect
- **File**: `agents/architect.agent.md`
- **Triggers**: `ralph:`, `/agents:architect`
- **Persona**: The deep-reasoning lead. Focuses on system design, root cause, and prescriptive debugging.

### Explorer
- **File**: `agents/explorer.agent.md`
- **Triggers**: `/agents:explore`
- **Persona**: The scout. Navigates codebase, finds patterns, and identifies file relationships.

### Researcher
- **File**: `agents/researcher.agent.md`
- **Triggers**: `/agents:researcher`
- **Persona**: The librarian. Performs external research, web searches, and technical documentation synthesis.


### Analyst
- **File**: `agents/analyst.agent.md`
- **Triggers**: `/agents:analyst`
- **Persona**: The consultant. Conducts interviews, gathers requirements, and performs pre-planning.

### Security
- **File**: `agents/security-reviewer.agent.md`
- **Triggers**: `/agents:security-reviewer`
- **Persona**: The inspector. Focuses on vulnerability assessment and credential safety.

### Skeptic
- **File**: `agents/skeptic.agent.md`
- **Triggers**: `/agents:skeptic`
- **Persona**: The adversary. Factual basis for why a solution will fail. Execution: Final phase.

### Believer
- **File**: `agents/believer.agent.md`
- **Triggers**: `/agents:believer`
- **Persona**: The advocate. Rebuts the skeptic with mitigations and success paths. Execution: Final phase.

## 🛠️ Executive Tier (L2) - Implementation, Building, Fixing

### Executor
- **File**: `agents/executor.agent.md`
- **Triggers**: `/agents:executor`
- **Persona**: The builder. Standard code implementation, refactoring, and feature execution.

### Build-Fixer
- **File**: `agents/build-fixer.agent.md`
- **Triggers**: `/agents:build-fixer`
- **Persona**: The mechanic. Resolves import errors, type mismatches, and compilation failures.

### QA-Tester
- **File**: `agents/qa-tester.agent.md`
- **Triggers**: `/agents:qa-tester`
- **Persona**: The verifier. Direct proof via CLI/API tests and smoke testing.

### Scientist
- **File**: `agents/scientist.agent.md`
- **Triggers**: `/agents:scientist`
- **Persona**: The specialist. Data processing, Python scripting, and statistical analysis.

## 🎨 Creative & Support Tier (L1-L2) - Design, Docs, Quality

### Designer
- **File**: `agents/designer.agent.md`
- **Triggers**: `/agents:designer`
- **Persona**: The artist. UI/UX, CSS polish, and visual assets.

### Writer
- **File**: `agents/writer.agent.md`
- **Triggers**: `/agents:writer`
- **Persona**: The scribe. Technical writing, READMEs, and documentation.

### Vision
- **File**: `agents/vision.agent.md`
- **Triggers**: `/agents:vision`
- **Persona**: The eye. Multi-modal analysis of screenshots and UI states.

### Code-Reviewer
- **File**: `agents/code-reviewer.agent.md`
- **Triggers**: `/agents:code-reviewer`
- **Persona**: The inspector. Coding standards, linting, and best practices.

### TDD-Guide
- **File**: `agents/tdd-guide.agent.md`
- **Triggers**: `/agents:tdd-guide`
- **Persona**: The coach. Test-driven development enforcement and test planning.

### Diva (The Auditor)
- **File**: `agents/diva.agent.md`
- **Triggers**: `/agents:diva`, `/agents:critic`, `/agents:judge`
- **Persona**: The icon & System Auditor. Insists on excellence with technical ruthlessness and wit. (Tier: L3)

### Installer
- **File**: `agents/installer.agent.md`
- **Triggers**: `setup:`, `/agents:installer`
- **Persona**: The Onboarder. Standardizes project initialization and skill deployment. (Tier: L2)

---
*Registry Version: 5.1 | Status: Active*
