# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

Personal academic homepage for Linsen GUO, built with Jekyll and the [Minimal Light](https://github.com/yaoyao-liu/minimal-light) remote theme. Deployed via GitHub Pages on push to `main`.

## Development Commands

```bash
# Install dependencies
bundle install

# Serve locally (uses local config override that disables remote_theme)
./serve.sh

# Or manually:
bundle exec jekyll serve --port 4000 --config _config.yml,_config_local.yml
```

Local preview: http://localhost:4000

Note: `serve.sh` sets Homebrew Ruby paths for macOS. The `_config_local.yml` disables the `jekyll-remote-theme` plugin so the site builds without network access to GitHub.

## Architecture

This is a single-page academic homepage with a sidebar layout. There is no multi-page routing.

- **`_config.yml`** — Site metadata (name, affiliation, social links) and Jekyll settings. The remote theme (`yaoyao-liu/minimal-light`) provides base `style.css` only; the layout is fully custom.
- **`_layouts/homepage.html`** — The sole layout. Renders a two-column design: sticky sidebar (avatar, nav, social) + scrollable main content.
- **`index.md`** — Page content in Markdown with Liquid loops over data files.
- **`_includes/publications.md`** — Publication list partial, included by `index.md`.
- **`_data/`** — Structured content (YAML):
  - `publications.yml` — fields: title, authors, conference, pdf, code
  - `news.yml` — fields: date, content (HTML allowed)
  - `awards.yml` — fields: year, title
  - `education.yml` — fields: date, degree, school, info
- **`assets/css/custom.css`** — All custom styling (sidebar layout, typography, publications, dark mode, responsive breakpoints). This overrides the remote theme's styles.

## Content Editing Patterns

- To add a publication: append an entry to `_data/publications.yml`. Use `<strong>L Guo</strong>` to highlight the author's name.
- To add news: prepend to `_data/news.yml` (most recent first).
- Sections in `index.md` use `{#id}` anchors that correspond to sidebar nav links in `homepage.html`.
