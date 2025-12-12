# Nexus-Singularity Development Instructions

Always follow these instructions first and only fallback to additional search and context gathering if the information in these instructions is incomplete or found to be in error.

## Project Overview

Nexus-Singularity is a philosophical and cosmic-themed single-page web application that serves as a digital sanctuary for elevated consciousness and intellectual exploration. This is a static HTML/CSS/JavaScript application deployed via GitHub Pages and Netlify.

## Working Effectively

Bootstrap, build, and test the repository:
- Install dependencies: `npm install` -- takes 3 seconds. No timeout needed.
- Build: `npm run build` -- instant completion (static site, no build required).
- Lint code: `npm run lint` -- takes 0.5 seconds. Expect 5 warnings about unused functions (these are placeholder functions for future features).
- Format code: `npm run format` -- takes 0.5 seconds.
- Check formatting: `npm run check` -- takes 0.5 seconds.

Run the development server:
- ALWAYS install dependencies first with `npm install`.
- Primary method: `npm run dev` or `npm start` 
- Alternative method: `python3 -m http.server 8000`
- Alternative method: `npx serve . --listen 8000`
- All methods serve on http://localhost:8000
- Servers start instantly, no timeout needed.

## Validation

Always manually validate any changes by running through complete user scenarios after making changes:
1. Load http://localhost:8000 in browser
2. Verify page loads without JavaScript errors (check browser console)
3. Test "Enter the Nexus" button - should navigate to Nexus Hub
4. Test AI button - should open AI chat interface
5. Test "Return to Origin" button - should return to main page
6. Test mobile responsiveness by resizing browser to 375px width
7. Verify cosmic particle animations are working
8. Check that background gradient animations run smoothly

Always run formatting and linting before committing changes:
- `npm run format` - formats HTML and Markdown files
- `npm run lint` - checks JavaScript in HTML file
- Both must pass or GitHub Actions CI will fail

## Key Project Information

### Primary Technologies
- **Frontend**: Single HTML file (`index.html`) with embedded CSS and JavaScript
- **Development Server**: Python3 http.server or npx serve
- **Deployment**: GitHub Pages (automatic) and Netlify
- **Code Quality**: ESLint for JavaScript, Prettier for formatting

### Required Dependencies
- Node.js 16+ (engines requirement in package.json)
- Python 3.x for development server
- Modern web browser for testing

### Build and Test Times
- `npm install`: 3 seconds
- `npm run lint`: 0.5 seconds  
- `npm run format`: 0.5 seconds
- `npm run check`: 0.5 seconds
- `npm run build`: instant (static site)
- Development server startup: instant

### Primary Colors and Theme
- Cosmic Gold: #f4d03f
- Cosmic Orange: #f39c12  
- Cosmic Dark: #2c3e50
- Philosophy: Cosmic consciousness, intellectual liberation, elevated awareness

## Repository Structure

```
Nexus-Singularity-/
├── .github/
│   ├── workflows/
│   │   ├── deploy.yml           # GitHub Pages deployment
│   │   └── super-linter.yml     # Code quality checks
│   ├── ISSUE_TEMPLATE/          # Issue templates
│   └── copilot-instructions.md  # This file
├── index.html                   # Main application (ALL code is here)
├── package.json                 # Dependencies and scripts
├── .eslintrc.json              # ESLint configuration
├── .prettierrc                 # Prettier configuration
├── netlify.toml                # Netlify deployment config
├── super-linter.yml           # Super-linter configuration
├── README.md                  # Basic project description
└── *.jpeg                     # Cosmic-themed images
```

### Key Files
- **`index.html`**: Contains ALL HTML, CSS, and JavaScript code
- **`package.json`**: Node.js project configuration with development scripts
- **`.github/workflows/deploy.yml`**: GitHub Pages deployment automation
- **`.github/workflows/github/workflows/super-linter.yml`**: Code quality automation

## Development Workflow

Create and test changes:
1. `cd /path/to/Nexus-Singularity-`
2. `npm install` (if dependencies not installed)
3. `npm run dev` (starts server on http://localhost:8000)
4. Open http://localhost:8000 in browser
5. Make changes to `index.html`
6. Refresh browser to see changes
7. Run validation scenarios (listed above)
8. `npm run format` (format code)
9. `npm run lint` (check for issues)
10. Commit changes

## Testing and Validation Scenarios

### Manual Testing Requirements
Execute these complete user workflows after making changes:
1. **Homepage Load Test**: Navigate to http://localhost:8000, verify page loads without JavaScript errors, check browser console for errors
2. **Navigation Test**: Click "Enter the Nexus" button → should show Nexus Hub with multiple sections
3. **AI Interface Test**: Click AI button → should open chat interface with greeting message
4. **Return Navigation Test**: Click "Return to Origin" → should return to main page
5. **Mobile Responsiveness Test**: Resize browser to 375px width → verify layout adapts properly
6. **Animation Test**: Observe cosmic particle system and background gradient animations → should run smoothly
7. **Interactive Elements Test**: Hover over buttons and sections → should show hover effects

### Browser Compatibility Testing
Test in these browsers:
- Chrome (latest)
- Firefox (latest)  
- Safari (latest)
- Edge (latest)

### Code Quality Validation
Always run before committing:
- `npm run lint` - expect 5 warnings about unused functions (these are placeholders for future features)
- `npm run format` - formats code automatically
- `npm run check` - verifies formatting is correct

## Common Commands and Their Outputs

### Repository Navigation
```bash
ls -la
# Output shows: index.html, package.json, .github/, .eslintrc.json, .prettierrc, netlify.toml, super-linter.yml, README.md, *.jpeg files
```

### package.json Scripts
```bash
npm run
# Available scripts:
# start: python3 -m http.server 8000
# dev: python3 -m http.server 8000  
# build: echo 'Static site - no build required'
# lint: eslint index.html --ext .html
# format: prettier --write *.html *.md
# check: prettier --check *.html *.md
# deploy:netlify: echo 'Deploy to Netlify: Push to main branch or use Netlify CLI'
# deploy:github: echo 'Deploy to GitHub Pages: Push to main branch'
```

### Linting Output (Expected)
```bash
npm run lint
# Expected output:
# /path/to/index.html
#    813:11  warning  'currentSection' is assigned a value but never used  no-unused-vars
#    816:16  warning  'enterNexus' is defined but never used               no-unused-vars
#    887:16  warning  'openAIChat' is defined but never used               no-unused-vars
#    955:16  warning  'closeAIChat' is defined but never used              no-unused-vars
#   1338:16  warning  'refreshUpdates' is defined but never used           no-unused-vars
# ✖ 5 problems (0 errors, 5 warnings)
```

## Deployment

### GitHub Pages (Automatic)
- Deploys automatically on push to main branch
- Uses `.github/workflows/deploy.yml` 
- No build process required (static site)
- Check GitHub Actions tab for deployment status

### Netlify (Optional)
- Configure via `netlify.toml`
- Build command: `echo 'Static site deployment - no build required'`
- Publish directory: `.` (root)
- Can deploy via Git integration or manual file upload

## Troubleshooting

### Common Issues
- **"Command not found"**: Ensure Node.js 16+ and Python 3.x are installed
- **"npm install fails"**: Check internet connection and npm registry access
- **"Linting fails"**: Run `npm run format` first, then `npm run lint`
- **"Page doesn't load"**: Verify development server is running on correct port
- **"Animations not working"**: Test in modern browser with JavaScript enabled
- **"Mobile layout broken"**: Check responsive CSS media queries in index.html

### JavaScript Console Errors
Some TypeErrors related to `adjustForMobile` function are expected during testing - these are from placeholder functionality and do not affect core features.

## File Structure Reference

Do not modify these files unless specifically needed:
- `.git/` directory (managed by Git)
- `.github/workflows/` (CI/CD configuration)
- `*.jpeg` files (cosmic theme images)
- `package-lock.json` (dependency lock file)

Always modify these files when making changes:
- `index.html` (main application code)
- `README.md` (if updating documentation)
- `.github/copilot-instructions.md` (this file, if updating instructions)

## Code Patterns and Standards

### CSS Conventions
- Use cosmic-themed class names: `cosmic-particles`, `nexus-logo`, `philosophical-quotes`
- Maintain color consistency: primary gold (#f4d03f), cosmic gradients
- Implement mobile-first responsive design
- Use smooth CSS animations for transitions

### JavaScript Conventions  
- Use vanilla JavaScript (no frameworks)
- Implement event listeners for interactivity
- Create placeholder functions for future features (causes lint warnings - this is expected)
- Use console.log for debugging, alert() for user feedback during development
- Follow modern ES6+ patterns

### HTML Structure
- Semantic HTML5 elements
- Proper viewport meta tag: `<meta name="viewport" content="width=device-width, initial-scale=1.0">`
- Accessible structure with meaningful headings