---
layout: default
title: Contributing
permalink: /contributing/
---

<style>
  body {
    background-color: #000;
    color: #fff;
    font-family: 'Courier New', monospace;
    line-height: 1.6;
  }
  
  .container {
    max-width: 900px;
    margin: 0 auto;
    padding: 20px;
  }
  
  .contributing-header {
    text-align: center;
    margin: 40px 0;
    border: 2px solid #fff;
    padding: 20px;
    background-color: #111;
  }
  
  .section-box {
    border: 1px solid #fff;
    padding: 20px;
    margin: 20px 0;
    background-color: #111;
  }
  
  .guidelines-box {
    border: 2px solid #ffd43b;
    padding: 15px;
    margin: 20px 0;
    background-color: #2d2a1a;
    color: #ffd43b;
  }
  
  .code-standards {
    border: 2px solid #51cf66;
    padding: 15px;
    margin: 20px 0;
    background-color: #1a2e1a;
    color: #51cf66;
  }
  
  code {
    background-color: #222;
    color: #fff;
    padding: 2px 6px;
    border: 1px solid #555;
  }
  
  pre {
    background-color: #222;
    color: #fff;
    padding: 15px;
    border: 1px solid #555;
    overflow-x: auto;
  }
  
  .nav-links {
    text-align: center;
    margin: 30px 0;
  }
  
  .nav-links a {
    margin: 0 15px;
    padding: 10px 20px;
    border: 1px solid #fff;
    text-decoration: none;
    display: inline-block;
    color: #fff;
  }
  
  .nav-links a:hover {
    background-color: #fff;
    color: #000;
  }
  
  .contributor-list {
    border: 1px solid #666;
    padding: 15px;
    margin: 20px 0;
    background-color: #222;
  }
</style>

<div class="container">
  <div class="contributing-header">
    <h1>🤝 Contributing to Flowey</h1>
    <p>Help make the Underground a better place!</p>
  </div>

  <div class="nav-links">
    <a href="/flowey">Home</a>
    <a href="/flowey/installation/">Installation</a>
    <a href="/flowey/usage/">Usage</a>
    <a href="/flowey/characters/">Characters</a>
  </div>

  <div style="text-align: center; margin: 30px 0; padding: 20px; border: 1px solid #fff; background-color: #111;">
    <p><em>"Despite everything, it's still you."</em></p>
  </div>

  <h2>🌟 Ways to Contribute</h2>

  <div class="section-box">
    <h3>🐛 Bug Reports</h3>
    <p>Found a bug? Help us squash it!</p>
    <ul>
      <li>Check if the issue already exists in <a href="https://github.com/lazypwny751/flowey/issues">GitHub Issues</a></li>
      <li>Provide detailed steps to reproduce</li>
      <li>Include your system information (OS, Perl version, etc.)</li>
      <li>Add screenshots or error messages if applicable</li>
    </ul>
    
    <div class="guidelines-box">
      <h4>Bug Report Template:</h4>
      <pre><code>**Bug Description:**
Brief description of the issue

**Steps to Reproduce:**
1. Run command: `flowey -c sans "test"`
2. Expected behavior
3. Actual behavior

**Environment:**
- OS: Ubuntu 22.04
- Perl Version: 5.34.0
- Flowey Version: 1.0.0

**Additional Context:**
Any other relevant information</code></pre>
    </div>
  </div>

  <div class="section-box">
    <h3>💡 Feature Requests</h3>
    <p>Have an idea for a new feature? We'd love to hear it!</p>
    <ul>
      <li>Describe the feature and why it would be useful</li>
      <li>Provide examples of how it would work</li>
      <li>Consider backward compatibility</li>
      <li>Be open to discussion and feedback</li>
    </ul>
  </div>

  <div class="section-box">
    <h3>🎨 Character Contributions</h3>
    <p>Add new characters to the Flowey universe!</p>
    <ul>
      <li>Create ASCII art using the <code>chafa</code> tool</li>
      <li>Follow the .flowey file format</li>
      <li>Include appropriate metadata</li>
      <li>Test thoroughly before submitting</li>
    </ul>
    
    <div class="code-standards">
      <h4>Character File Format:</h4>
      <pre><code>Meta:
author = your_username

Context:

Data:
[ASCII art content with ANSI color codes]</code></pre>
    </div>
  </div>

  <div class="section-box">
    <h3>📝 Documentation</h3>
    <p>Help improve our documentation!</p>
    <ul>
      <li>Fix typos and grammatical errors</li>
      <li>Add missing information</li>
      <li>Improve examples and tutorials</li>
      <li>Translate documentation</li>
    </ul>
  </div>

  <div class="section-box">
    <h3>🔧 Code Contributions</h3>
    <p>Ready to dive into the code? Here's how:</p>
    
    <h4>Development Setup:</h4>
    <pre><code># Fork and clone the repository
git clone https://github.com/YOUR_USERNAME/flowey.git
cd flowey

# Create a new branch for your feature
git checkout -b feature/awesome-feature

# Install dependencies
cpan install Getopt::Long::Descriptive

# Make your changes and test them
./flowey.pl "Test your changes"

# Commit and push
git add .
git commit -m "Add awesome feature"
git push origin feature/awesome-feature</code></pre>
  </div>

  <h2>📋 Contribution Guidelines</h2>

  <div class="guidelines-box">
    <h3>Code Style</h3>
    <ul>
      <li>Follow Perl best practices</li>
      <li>Use meaningful variable names</li>
      <li>Add comments for complex logic</li>
      <li>Maintain backward compatibility when possible</li>
      <li>Test your changes thoroughly</li>
    </ul>
    
    <h4>Perl Style Guidelines:</h4>
    <pre><code># Use strict and warnings
use strict;
use warnings;

# Meaningful variable names
my $character_file = $opt->character . ".flowey";
my $assets_directory = $opt->assets;

# Proper indentation (4 spaces)
if ($condition) {
    do_something();
}

# Add comments for complex logic
# Parse the flowey file format
# Format: Meta:, Context:, Data:
sub parse_flowey_file {
    # Implementation here
}</code></pre>
  </div>

  <div class="section-box">
    <h3>Pull Request Process</h3>
    <ol>
      <li><strong>Fork</strong> the repository</li>
      <li><strong>Create</strong> a feature branch</li>
      <li><strong>Make</strong> your changes</li>
      <li><strong>Test</strong> thoroughly</li>
      <li><strong>Update</strong> documentation if needed</li>
      <li><strong>Submit</strong> a pull request</li>
    </ol>
    
    <div class="code-standards">
      <h4>Pull Request Template:</h4>
      <pre><code>## Description
Brief description of changes

## Type of Change
- [ ] Bug fix
- [ ] New feature
- [ ] Documentation update
- [ ] Character addition

## Testing
- [ ] Tested on Linux
- [ ] Tested on macOS
- [ ] Added new tests
- [ ] All existing tests pass

## Checklist
- [ ] Code follows style guidelines
- [ ] Self-review completed
- [ ] Documentation updated
- [ ] No breaking changes</code></pre>
    </div>
  </div>

  <h2>👥 Community</h2>

  <div class="section-box">
    <h3>Code of Conduct</h3>
    <p>We follow the principle of <strong>determination</strong> - be kind, helpful, and respectful to all contributors.</p>
    <ul>
      <li>Be respectful and inclusive</li>
      <li>Welcome newcomers and help them learn</li>
      <li>Focus on constructive feedback</li>
      <li>Respect different viewpoints and experiences</li>
    </ul>
  </div>

  <div class="contributor-list">
    <h3>🌟 Contributors</h3>
    <p>Thanks to all the amazing people who have contributed to Flowey!</p>
    <ul>
      <li><strong>lazypwny751</strong> - Project creator and maintainer</li>
      <li><em>Your name could be here!</em></li>
    </ul>
  </div>

  <h2>🚀 Development Roadmap</h2>

  <div class="section-box">
    <h3>Planned Features</h3>
    <ul>
      <li>🎨 Better ASCII art rendering</li>
      <li>🔧 Plugin system for custom character formats</li>
      <li>🌐 Web interface for character generation</li>
      <li>📱 Mobile-friendly character viewer</li>
      <li>🎵 Sound effects integration</li>
      <li>🏗️ Build system improvements</li>
    </ul>
  </div>

  <div class="section-box">
    <h3>Help Wanted</h3>
    <p>Looking for contributors in these areas:</p>
    <ul>
      <li><strong>Character Artists</strong> - Create new Undertale characters</li>
      <li><strong>Perl Developers</strong> - Improve core functionality</li>
      <li><strong>Package Maintainers</strong> - Help with distribution packages</li>
      <li><strong>Documentation Writers</strong> - Improve guides and examples</li>
      <li><strong>Testers</strong> - Test on different platforms and report issues</li>
    </ul>
  </div>

  <h2>📞 Getting Help</h2>

  <div class="section-box">
    <h3>Resources</h3>
    <ul>
      <li><strong>GitHub Issues:</strong> <a href="https://github.com/lazypwny751/flowey/issues">Report bugs and request features</a></li>
      <li><strong>Discussions:</strong> <a href="https://github.com/lazypwny751/flowey/discussions">General questions and ideas</a></li>
      <li><strong>Wiki:</strong> <a href="https://github.com/lazypwny751/flowey/wiki">Detailed documentation</a></li>
      <li><strong>Examples:</strong> Check out the <code>examples/</code> directory</li>
    </ul>
  </div>

  <div style="text-align: center; margin: 40px 0; padding: 20px; border: 2px solid #fff; background-color: #111;">
    <h3>🎉 Thank You!</h3>
    <p>Every contribution, no matter how small, helps make Flowey better for everyone.</p>
    <p><em>"You feel like you're going to have a good time contributing."</em></p>
  </div>

  <div style="text-align: center; margin: 40px 0; padding: 20px; border: 1px solid #fff; background-color: #111;">
    <p><strong>Ready to contribute?</strong></p>
    <p>Start by <a href="https://github.com/lazypwny751/flowey/fork">forking the repository</a> and making your first contribution!</p>
  </div>
</div>
