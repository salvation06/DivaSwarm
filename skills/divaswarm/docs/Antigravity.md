# DivaSwarm + Antigravity

Antigravity is the native environment for DivaSwarm v5.0.0, leveraging its advanced Artifact and Task Boundary tools.

## Key Integrations

### 1. Task Boundaries
DivaSwarm automatically maps its internal state updates to Antigravity's `task_boundary` tool. This ensures the user always sees a clean, high-level summary of the work.

### 2. Artifact Management
DivaSwarm uses Antigravity's artifact system for:
- `THE_PULSE.md`: The primary memory source.
- `implementation_plan.md`: The technical blueprint.
- `walkthrough.md`: The final proof-of-work.

## Best Practices in Antigravity

- **Use `task_boundary` frequently**: Ensure the `TaskStatus` describes the *next* step.
- **Keep Artifacts Concise**: Antigravity works best when artifacts are focused and not bloated.
- **Leverage `render_diffs`**: Use the Antigravity shorthand to show changes clearly in your manual walkthroughs.

## Quick Start
In Antigravity, simply start your prompt with a magic trigger like `ralph:` or `plan:`. The orchestrator will automatically initialize the environment.
