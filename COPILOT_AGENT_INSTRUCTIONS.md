# Copilot Coding Agent Instructions for Nexus-Singularity

## Purpose
This file provides onboarding and configuration instructions for GitHub Copilot Coding Agent in the Nexus-Singularity repository, following [Best practices for Copilot coding agent in your repository](https://gh.io/copilot-coding-agent-tips).

## 1. Project Overview
- **Type:** Single-page web application
- **Stack:** HTML, CSS, JavaScript (Vanilla)
- **Main File:** `index.html`
- **Theme:** Cosmic, philosophical, gold/dark palette
- **Deployment:** GitHub Pages & Netlify

## 2. Coding Agent Usage
- Use Copilot Coding Agent for feature development, bug fixes, refactoring, and documentation.
- All changes must maintain the cosmic/philosophical theme and responsive design.
- Use semantic HTML5, modern CSS, and vanilla JS patterns.
- Do not introduce frameworks (React, Vue, etc.) unless explicitly requested.

## 3. File Structure Guidance
- **Edit:** `index.html`, `README.md`, `netlify.toml`, `super-linter.yml`, `package.json`
- **Do Not Edit:** `.git/`, `.github/workflows/` (unless CI/CD), image assets (unless replacing)

## 4. Coding Conventions
- **CSS:** Use gold (#f4d03f), orange (#f39c12), dark (#2c3e50) colors. Prefer class names like `cosmic-particles`, `nexus-logo`.
- **JS:** Use ES6+, event listeners, placeholder functions for future AI/navigation.
- **HTML:** Semantic tags, meta for mobile, accessible headings.

## 5. Testing & Quality
- Manual checklist: No JS errors, particles animate, responsive, accessible, performant.
- Super-linter runs on push to main.

## 6. PR & Branching
- Use feature branches: `feature/<name>`
- Main branch protected, requires review and linter pass.
- PRs must describe changes and testing performed.

## 7. Issue Management
- Use templates for bugs/features.
- Label issues clearly.

## 8. Future Development
- Placeholder for AI chat, navigation, content sections.
- Consider CMS, user accounts, community features.

## 9. Troubleshooting
- See `.github/copilot-instructions.md` for common issues and patterns.

---

For more details, see `.github/copilot-instructions.md`.
