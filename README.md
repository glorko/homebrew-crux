# homebrew-crux

Homebrew tap for [Crux](https://github.com/glorko/crux).

**Clean install (e.g. new machine):**

1. Install Wezterm (required): `brew install --cask wezterm`
2. Tap and install crux:

```bash
brew tap glorko/crux
brew install --HEAD glorko/crux/crux
```

(The `--HEAD` flag is required; the formula has no stable release yet.)

3. `crux` and `crux-mcp` are in Homebrew’s bin (already on PATH). Verify: `crux --version`, `which crux-mcp`.
4. For Cursor MCP: in `~/.cursor/mcp.json` set `"command"` to `"/opt/homebrew/bin/crux-mcp"` (Apple Silicon) or `"/usr/local/bin/crux-mcp"` (Intel). Restart Cursor.
