# DivaSwarm + GitHub Copilot

Integrating DivaSwarm v5.0.0 with GitHub Copilot Chat and Autocomplete.

## Usage
Copilot works best with DivaSwarm when its rules are provided in the system prompt or via a `.github/copilot-instructions.md` file.

## Copilot Chat Patterns

### Strategic Triggers
- **`ralph:`**: Forces Copilot to analyze the entire file context before suggesting a fix.
- **`ulw:`**: Best for quick refactors or boilerplate generation.

### Multi-Agent Simulation
Even though Copilot is a single-agent interface, you can simulate DivaSwarm's tiers by explicitly asking:
`"Act as the /agents:architect and trace the error in this file."`

## Tips for Token Efficiency
- **Limit Context**: Use Copilot's selection-based chat to provide only the necessary code snippets, adhering to DivaSwarm's "View Chunks" rule.
- **State Updates**: Manually trigger a state update by asking Copilot to summarize the current task into your `THE_PULSE.md`.
