# DivaSwarm + Cursor

Maximize DivaSwarm's potential within the Cursor AI editor.

## Setup
To use DivaSwarm in Cursor, you can add the contents of `SKILL.md` to your **Custom Instructions** (Settings -> Rules for AI) or include it in your `.cursorrules` file.

## Features in Cursor

### Magic Triggers in Chat
Use the triggers directly in the Cursor Chat (Ctrl+L) or Composer (Ctrl+I):
- `ralph: explain this code block`
- `plan: rewrite the sidebar component`

### Agent Delegation
While Cursor has its own agent, you can "force" DivaSwarm's personas by using the syntax: `/agents:architect`. This tells the AI to adopt the specific reasoning constraints of that persona.

## Best Practices
- **Use @ symbols**: Combine DivaSwarm triggers with Cursor's `@` symbol for targeted context (e.g., `ralph: fix @bug.log`).
- **Composer Mode**: When using Cursor Composer, use the `plan:` trigger first to ensure the AI understands the full scope before writing files.
