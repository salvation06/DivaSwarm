# DivaSwarm Usage Guide (v6.1.0)

## 🏛️ The Orchestration Philosophy
DivaSwarm minimizes "Context Amnesia" and maximizes "Token Runway" using **State-Watchdog** failsafes and **JIT Registry** loading.

### 1. State-Watchdog Protocol
- **The Heartbeat**: If you go **10 turns** without updating `task.md`, the orchestrator will refuse to proceed until a pulse is performed.
- **Why**: Keeps the "North Star" goal visible and prevents hallucinated requirements over long sessions.

### 2. JIT (Just-In-Time) Agent Loading
DivaSwarm loads specialized agent context ONLY when needed. 
- **L1/L2 work**: Uses the lightweight core `SKILL.md`.
- **L3 work**: Triggers a `view_file` on the specialized `.agent.md`.
- **Benfit**: Saves thousands of tokens per turn on large projects.

### 3. Magic Triggers
Use these to set mode instantly:

| Trigger | Mode | Action |
|---------|------|--------|
| `plan:` | Planning | Technical blueprinting. |
| `setup:` | Onboarding | Automated project initialization. |
| `ralph:` | Executing | Architect + Executor sync. |
| `ulw:` | Reflex | Ultra-Low-Work. Zero talking. |
| `eco:` | Economy | `grep` + L1 agents. Token saver. |

### 4. Systematic Debugging (Ghost Sequence)
1. **Isolate**: Minimal reproduction.
2. **Trace**: Map flow via `Architect` (JIT loaded).
3. **Fix**: Atomic change via `Executor`.
4. **Verify**: Prove fix works via `QA-Tester`.

## 🎭 Agent Registry
Browse all 15+ agents in [registry.md](agents/registry.md).

### ⚖️ Dialectical Validation (Final Phase)
For mission-critical builds, use the **Dialectical Pair**:
- **`/agents:skeptic`**: Identifies factual failure points.
- **`/agents:believer`**: Rebuts with mitigations and success paths.
- **`/agents:diva`**: Enforces "The Best" route with lighthearted, high-energy flair.
- **Tip**: Run these sequentially after the **Diva** to "stress-test" your solution.

---
*DivaSwarm v6.1.0: Relentless. Token-Efficient. Precise.*
