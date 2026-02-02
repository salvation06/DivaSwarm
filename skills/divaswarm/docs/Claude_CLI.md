# DivaSwarm + Claude Code CLI

Optimizing DivaSwarm for the `claude-code` CLI environment.

## Installation
Ensure DivaSwarm is installed in your global skills directory:
- **Windows**: `%USERPROFILE%\.claude\skills\DivaSwarm`
- **Mac/Linux**: `~/.claude/skills/DivaSwarm`

## Usage Patterns

### Magic Triggers
Since CLI interaction is fast, use magic triggers to save typing:
- `ulw: fix that typo`
- `eco: search for "apiKey"`

### Memory Management
In the CLI, the `THE_PULSE.md` file is your anchor. Open it in a side-split if your editor supports it to watch the orchestrator update its state in real-time.

## CLI Performance Tips
- **Grep is King**: Use the `eco:` trigger to force the use of `grep` for faster searches in large repos.
- **Chunk Reading**: Always use `view_file` with line ranges to avoid hitting the CLI's output buffer limits.
