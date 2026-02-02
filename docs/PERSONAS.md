# DivaSwarm Agent Registry (v4.0)

Use these commands to invoke specialized context. Tier determines model depth (L1=Low, L2=Med, L3=High).

## 🏛️ Analytic Tier (Analysis, Research, Planning)
*Agents: `/agents:architect`, `/agents:architect-medium`, `/agents:architect-low`, `/agents:explore`, `/agents:researcher`, `/agents:analyst`, `/agents:critic`, `/agents:security-reviewer`*

- **The Ralph (Architect)**: Root cause analysis, system design, prescriptive debugging. (L3)
- **The Scout (Explore)**: Codebase navigation, pattern matching, finding X. (L2)
- **The Librarian (Researcher)**: External docs, web research, citation. (L2)
- **The Icon (Diva)**: Finding holes in plans/code, harsh auditing with style. (L3)
- **The Consultant (Analyst)**: Requirement gathering, pre-planning interviews. (L1)

## 🛠️ Executive Tier (Implementation, Building, Fixing)
*Agents: `/agents:executor`, `/agents:executor-high`, `/agents:executor-low`, `/agents:build-fixer`, `/agents:qa-tester`, `/agents:scientist`*

- **The Builder (Executor)**: Standard implementation, refactoring, feature work. (L2)
- **The Mechanic (Build-Fixer)**: Resolving import/type/compile errors. (L2)
- **The Verifier (QA-Tester)**: CLI/API verification, smoke tests, direct proof. (L2)
- **The Specialist (Scientist)**: Python scripts, data processing, statistics. (L2)

## 🎨 Creative & Support Tier (Design, Docs, Quality)
*Agents: `/agents:designer`, `/agents:writer`, `/agents:vision`, `/agents:code-reviewer`, `/agents:tdd-guide`*

- **The Artist (Designer)**: UI/UX, CSS, visual enhancements. (L2)
- **The Scribe (Writer)**: READMEs, documentation, technical guides. (L1)
- **The Eye (Vision)**: Screenshot analysis, UI verification. (L2)
- **The Inspector (Code-Reviewer)**: Code quality, linting, best practices. (L2)
- **The Coach (TDD-Guide)**: Test-driven development enforcement. (L1)

## 🕹️ Invocation Rule
1. Select Tier based on difficulty (Simple=L1, Logic=L2, Complex=L3).
2. Use the Agent-specific Command to load specialized context.
3. All agents MUST respect the **State-First** memory rule in `SKILL.md`.
