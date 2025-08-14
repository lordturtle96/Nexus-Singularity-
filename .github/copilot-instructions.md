# Copilot Instructions for Nexus-Singularity

**ALWAYS follow these instructions first. Only search for additional information or use bash commands if the instructions here are incomplete or found to be in error.**

## Project Overview

Nexus-Singularity is a single-page web application built with pure HTML, CSS, and JavaScript. The application is deployed as a static site via GitHub Pages with no build process required.

Always reference these instructions first and fallback to search or bash commands only when you encounter unexpected information that does not match the info here.

## Working Effectively

### Repository Setup and Validation
- Clone and validate the repository:
  - `git clone [repository-url]`
  - `cd Nexus-Singularity-` 
  - `ls -la` -- takes <1 second
  - `git status` -- takes <1 second

### HTML Validation
- Validate HTML syntax:
  - `python3 -c "import html.parser; parser = html.parser.HTMLParser(); parser.feed(open('index.html').read())"` -- takes <1 second
  - This command validates the HTML syntax and will fail if there are parsing errors

### Local Development Server
- Start local development server:
  - `python3 -m http.server 8000` -- starts immediately (1-2 seconds)
  - Open browser to `http://localhost:8000`
  - **NEVER CANCEL** the server while testing - let it run until validation is complete

### Complete Application Validation
- **ALWAYS** run complete validation after any changes:
  - `time ./validate.sh` -- takes **2 seconds** and validates everything
  - **NEVER CANCEL** this validation - it's quick and comprehensive
  - **CRITICAL**: This script validates HTML syntax, HTTP server, content loading, and key elements

### Validation Script Usage
- The repository includes `validate.sh` script that performs all necessary validation
- Make executable: `chmod +x validate.sh`
- Run with timing: `time ./validate.sh`
- Expected output: All tests pass in 2 seconds
- **If any validation fails, DO NOT proceed with further changes**

### Code Quality and Linting
- **WARNING**: Super-linter currently has branch configuration issues
- Manual linting alternatives:
  - HTML validation: Use the Python HTML parser command above
  - No package.json or npm scripts exist
  - No build process required - this is pure static HTML

## Manual Testing Scenarios

**ALWAYS** manually test these scenarios after making any changes:

### Core Functionality Test (Complete in 30-60 seconds)
1. Start local server: `python3 -m http.server 8000`
2. Navigate to `http://localhost:8000`
3. Verify page title is "The Nexus Singularity"
4. Click "Enter the Nexus" button - should show alert "Welcome to the Nexus! This will navigate to the main hub interface."
5. Click AI chat button (bottom right circular button) - should show alert "AI Chat interface will be integrated here..."
6. **Browser Console Verification**: Open developer tools and verify console logs show:
   - "Entering the Nexus..." when main button clicked
   - "Opening AI Chat interface..." when AI button clicked
7. **CRITICAL**: Test particle interaction by moving mouse around the page - particles should follow mouse movement

### Visual Validation Test (Complete in 15-30 seconds)
1. Verify cosmic background animation is running smoothly (gradient shifts)
2. Verify all text content loads properly:
   - "Core Purpose" banner at top
   - "Philosophical Insights" section with 4 quotes
   - "Real-World Riddles" section with 3 riddles
   - "ASCENDED PAVILION" and "PROCLAMATION PILLAR" content sections
3. Verify cosmic color scheme: dark backgrounds with golden accents (#f4d03f)

### Responsive Design Test (Complete in 45-60 seconds)
1. Test desktop view (1920x1080 or browser default)
2. Test tablet view (resize browser to ~768px width)
3. Test mobile view (resize browser to ~375px width)
4. **CRITICAL**: Verify all content remains accessible and readable at all sizes
5. Verify navigation button remains clickable on mobile

### Browser Automation Testing (When using Playwright or similar)
```
Expected timing: 15-30 seconds for complete automation test
1. Navigate to http://localhost:8000/
2. Assert page title contains "Nexus Singularity"
3. Click button with text "Enter the Nexus"
4. Handle alert dialog and verify message
5. Click element with text "AI" (bottom-right button)
6. Handle alert dialog and verify AI message
7. Verify console logs contain expected function calls
8. Test responsive breakpoints: 375px, 768px, 1920px
```

## File Structure and Key Components

### Repository Root
```
.
├── .github/
│   ├── workflows/
│   │   ├── deploy.yml          # GitHub Pages deployment
│   │   └── github/workflows/super-linter.yml
│   └── copilot-instructions.md # This file
├── index.html                  # Main application (566 lines, 18KB)
├── super-linter.yml           # Linting configuration
├── README.md                  # Basic project info
├── *.jpeg                     # Image assets for cosmic theme
└── other files...
```

### Main Application File
- `index.html` - Contains all HTML, CSS, and JavaScript (566 lines)
- Embedded CSS with cosmic animations and responsive design
- Vanilla JavaScript with particle system and event handlers
- No external dependencies or frameworks

## Common Commands Reference

### Quick Commands (All take <1 second)
- `ls -la` - List repository contents
- `git status` - Check git status
- `wc -l index.html` - Count lines in main file
- `file index.html` - Verify file type

### Development Commands
- `python3 -m http.server [PORT]` - Start development server (1-2 seconds)
- Basic HTML validation (Python parser) - <1 second
- Content size check with curl - <1 second

### No Build Process
- **There is no package.json, npm scripts, or build process**
- **There are no dependencies to install**
- **No compilation or bundling required**
- The application runs directly from the HTML file

## Validation Requirements

### Before Committing Changes
1. **ALWAYS** run HTML syntax validation
2. **ALWAYS** test local server startup and response
3. **ALWAYS** manually test core user interactions
4. **ALWAYS** verify responsive design on different screen sizes

### CI/CD Validation
- GitHub Actions deploy workflow runs automatically on push to main
- Super-linter workflow attempts to run but has branch configuration issues
- Deployment to GitHub Pages typically completes in 2-3 minutes

## Development Patterns

### When Making Changes
- Edit `index.html` directly
- Test locally with Python HTTP server
- Verify functionality with manual browser testing
- No compilation or build steps required

### Cosmic Theme Guidelines
- Maintain dark backgrounds with golden accents (#f4d03f, #f39c12)
- Preserve smooth animations and transitions
- Keep philosophical content tone
- Test animation performance impact

### JavaScript Patterns
- Use vanilla JavaScript only
- Maintain existing placeholder functions: `enterNexus()`, `openAIChat()`
- Log user interactions to console for debugging
- Keep event handlers simple and focused

## Timing Expectations and Warnings

### Command Timeouts and Duration
- **NEVER CANCEL** any validation or testing command
- All commands complete quickly due to static nature of the application:
  - `./validate.sh` - **2 seconds** (NEVER CANCEL)
  - `python3 -m http.server` - **1-2 seconds** to start (NEVER CANCEL while testing)
  - HTML validation - **<1 second**
  - Git operations - **<1 second**
  - Manual browser testing - **1-2 minutes total**

### Known Issues and Workarounds
- **Super-linter branch issue**: The super-linter configuration expects "master" branch but repo uses "main"
  - **DO NOT** modify super-linter.yml without testing in CI
  - Use manual validation script `./validate.sh` instead
  - GitHub Actions linting will fail until branch config is fixed
- **No package.json**: This is intentional - no npm dependencies or build process exists
- **Large image files**: Repository contains large .jpeg files (700KB-1MB each) which is normal for cosmic theme assets

### Performance Notes
- Application loads quickly (18KB HTML file)
- Animations may impact performance on low-end devices
- Particle system uses JavaScript animation loops - test on various devices

This is a static HTML application with minimal complexity - focus on functionality validation and user experience testing rather than complex build processes.