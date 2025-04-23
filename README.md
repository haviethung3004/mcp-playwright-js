# MCP Playwright Server

A simple Model Context Protocol (MCP) server for browser and API automation using Playwright.

## Features
- Automate browsers (Chromium, Firefox, WebKit) via Playwright
- API testing tools (GET, POST, etc)
- Console log and screenshot capture
- Supports CDP (Chrome DevTools Protocol) connection

## Quick Start

1. **Install dependencies**
   ```sh
   npm install
   ```
2. **Build the project**
   ```sh
   npm run build
   ```
3. **Start Chrome in CDP mode**
   ```sh
   "C:\Program Files\Google\Chrome\Application\chrome.exe" --remote-debugging-port=9222"
   ```
4. **Start the server**
   ```sh
   node dist/index.js
   ```

## Usage
- Connect via MCP client or Claude Desktop
- See `docs/` for tool details and examples

## Test
```sh
node run-tests.cjs
```

## Add to Claude Desktop

1. Open your `claude_desktop_config.json` file (usually in `C:\Users\<your-user>\AppData\Roaming\Claude\claude_desktop_config.json`).
2. Add this entry under `"mcpServers"`:

```json
"mcp-playwright": {
  "command": "node",
  "args": [
    "C:\\Users\\<your-user>\\Documents\\mcp-playwright\\dist\\index.js"
  ]
}
```

Replace `<your-user>` with your Windows username.

---
MIT License
