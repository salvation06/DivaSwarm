# DivaSwarm Best Practices (v4.0)

Maximize your orchestrator's performance and minimize token costs with these battle-tested patterns.

## 1. Master the # STATE Block 🧠
This is the most critical rule for context maintenance.
- **Pulse Every 5 Turns**: LLM context drifts. Manually updating the `# STATE` block at the top of `task.md` every few turns "resets" the agent's focus.
- **Be Prescriptive**: Don't just list what happened. Tell the agent what the **Next Move** must be. "Next Move: Read the error log in `dist/build.log`."
- **Archive Noise**: Once a task branch is closed, move its sub-tasks to an `# ARCHIVE` section at the bottom. This keeps the active context lean and fast.

## 2. Leveraged Invocations 🪄
Use syntax triggers to force the correct "Thinking Level" (L1-L3):
- **Forced Analysis (`ralph:`)**: Use this when you are stuck. It forces the high-reasoning Architect to trace the system BEFORE anything is changed.
- **Savings Mode (`eco:`)**: Use this for routine file work or documentation. It restricts the agent to cheaper tools and shallower reasoning.
- **Zero-Chat (`ulw:`)**: Use this for trivial fixes. "ulw: change the color to blue." It skips the apology/confirmation cycle.

## 3. The Systematic Debug Pattern 🚦
Never let an agent "guess" a fix. Force them to follow the sequence:
1. **Reproduction**: Create a minimal test first.
2. **Analysis**: Use `/agents:architect` to explain the error.
3. **Draft**: Create an `implementation_plan.md` (via `plan:`) for complex fixes.
4. **Execute**: Apply the fix.
5. **Validation**: Use `run_command` to prove the fix works immediately.

## 4. Token-Saving Maneuvers 💸
- **Grep Over Find**: Instruct agents to use `grep_search` for specific strings instead of `find_by_name`. It's faster and uses fewer tokens for result parsing.
- **View Chunks**: Use `view_file` with line ranges (`StartLine`/`EndLine`). Reading a 1,000-line file to fix one line is a token sin.
- **Compact Tasks**: Keep `task.md` descriptions under 10 words. "Fix syntax" is better than "Investigate why the syntax is broken in the main application file."

---
*Relentless. Precise. Token-Efficient.*
