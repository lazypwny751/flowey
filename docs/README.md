# Flowey Documentation

This directory contains the GitHub Pages documentation for the Flowey project.

## Structure

- `_config.yml` - Jekyll configuration
- `_layouts/default.html` - Main layout template
- `index.md` - Homepage
- `installation.md` - Installation guide
- `usage.md` - Usage documentation
- `characters.md` - Character gallery
- `contributing.md` - Contributing guidelines

## Local Development

To preview the documentation locally:

```bash
# Install Jekyll (if not already installed)
gem install jekyll bundler

# Create Gemfile
echo 'source "https://rubygems.org"' > Gemfile
echo 'gem "github-pages", group: :jekyll_plugins' >> Gemfile

# Install dependencies
bundle install

# Serve locally
bundle exec jekyll serve

# Visit http://localhost:4000/flowey
```

## Theme

The documentation uses a custom black and white theme inspired by Undertale, featuring:

- Monospace fonts (Courier New)
- Black background with white text
- ASCII art elements
- Terminal-style aesthetics
- Responsive design

## Deployment

The documentation is automatically deployed to GitHub Pages when pushed to the main branch. 

Configure GitHub Pages in repository settings:
1. Go to Settings > Pages
2. Source: Deploy from a branch
3. Branch: main
4. Folder: /docs

The site will be available at: `https://lazypwny751.github.io/flowey`
