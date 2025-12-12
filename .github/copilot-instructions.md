# Nexus Singularity
The Nexus Singularity is a single-page HTML web application with philosophical and cosmic themes. It features interactive elements, animated particles, and placeholder functionality for future AI integration.

Always reference these instructions first and fallback to search or bash commands only when you encounter unexpected information that does not match the info here.

## Working Effectively
- **No build system required** - this is a static HTML application with embedded CSS and JavaScript
- Serve the application locally:
  - `cd /home/runner/work/Nexus-Singularity-/Nexus-Singularity-`
  - `python3 -m http.server 8000` -- serves on http://localhost:8000, starts in 2-3 seconds. NEVER CANCEL.
- **CRITICAL**: Always use HTTP server for testing - direct file:// URLs are blocked by browser security
- Lint HTML code:
  - Install: `npm install -g htmlhint` -- takes 30-60 seconds. NEVER CANCEL.
  - Run: `htmlhint index.html` -- completes in under 10 seconds
- Validate with GitHub's Super Linter (used in CI):
  - `docker pull ghcr.io/super-linter/super-linter:v7.4.0` -- takes 2-5 minutes depending on network. NEVER CANCEL. Set timeout to 10+ minutes.
  - Note: Super Linter requires GitHub environment variables to run locally, but HTMLHint can be used independently

## Validation
- **ALWAYS manually test any changes** by starting the HTTP server and opening http://localhost:8000 in browser
- **Required end-to-end test scenarios:**
  1. Click "Enter the Nexus" button - should show alert with welcome message and log to console
  2. Click the "AI" button in bottom right - should show AI placeholder alert and log to console
  3. Verify cosmic particle animations are working (moving dots on background)
  4. Check responsive design on different screen sizes
- **ALWAYS run HTMLHint before committing** or GitHub Actions will fail
- Application startup: HTTP server starts in 2-3 seconds, page loads immediately
- **NEVER CANCEL** any docker pulls or installations - they may take several minutes but are essential for CI compatibility

## Common Tasks
The following are outputs from frequently run commands. Reference them instead of viewing, searching, or running bash commands to save time.

### Repository Root Structure
```
.github/               # GitHub Actions workflows and configuration
├── ISSUE_TEMPLATE/   # Issue templates
└── workflows/        # CI/CD workflows
    ├── deploy.yml    # GitHub Pages deployment
    └── github/       # Additional workflow files
.vscode/              # VS Code settings
├── settings.json     # GitHub PR branch ignores
Accessibility Check   # Accessibility workflow configuration
README.md            # Basic project readme (minimal content)
crucible proto.jpeg  # Project image asset
index.html          # Main application file (single-page app)
needed              # Project notes file
nexus-singularity welcome.jpeg  # Welcome image asset
package             # Package management notes
proclamation proto.jpeg         # Project image asset
super-linter.yml    # Super Linter workflow configuration
```

### Key Files Description
- **index.html**: Complete single-page application (18KB) containing HTML structure, CSS styles, and JavaScript functionality
- **GitHub Workflows**: 
  - `deploy.yml`: Deploys to GitHub Pages on main branch pushes
  - `super-linter.yml`: Runs Super Linter on main branch pushes
  - `Accessibility Check`: Runs pa11y accessibility tests (requires Chrome setup)

### Application Structure (from index.html analysis)
- **Interactive Elements:**
  - "Enter the Nexus" button: Shows welcome alert, logs to console
  - AI chat placeholder: Shows integration message, logs to console
  - Cosmic particle animations: Background visual effects
- **Content Sections:**
  - Core Purpose banner
  - Philosophical Insights section with quotes
  - Real-World Riddles section with three riddles
  - Ascended Pavilion and Proclamation Pillar cards (placeholder content)
- **Styling**: Cosmic gradient background, gold text, responsive design

### Tested Commands and Timing
```bash
# Start development server (2-3 seconds)
python3 -m http.server 8000

# HTML linting (under 10 seconds)
htmlhint index.html

# Install htmlhint globally (30-60 seconds)
npm install -g htmlhint

# Pull Super Linter image (2-5 minutes)
docker pull ghcr.io/super-linter/super-linter:v7.4.0
```

### Application URLs and Navigation
- **Local development**: http://localhost:8000 (via Python HTTP server)
- **Production**: Deployed via GitHub Pages (see deploy.yml workflow)
- **Main interactions**: Two clickable elements trigger JavaScript alerts and console logs

## Development Workflow
1. **Before making changes**: Start HTTP server and test current functionality
2. **During development**: Refresh browser to see changes (no build step required)
3. **Before committing**: Run `htmlhint index.html` to ensure HTML validity
4. **Testing changes**: Always test both interactive buttons and visual elements
5. **CI validation**: GitHub Actions will run Super Linter and accessibility checks on push

## Troubleshooting Common Issues
- **"ERR_BLOCKED_BY_CLIENT" error**: Use HTTP server instead of file:// URLs
- **Super Linter fails locally**: Expected due to missing GitHub environment variables - HTMLHint validation is sufficient for local development
- **Pa11y accessibility test fails**: Requires Chrome installation - this is handled in GitHub Actions environment
- **Application not loading**: Ensure you're using Python HTTP server on port 8000

Always validate your changes work by testing the complete user scenarios listed above before committing.