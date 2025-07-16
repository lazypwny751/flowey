---
layout: default
title: Flowey - Undertale ASCII Art Tool
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
  
  .flowey-header {
    text-align: center;
    margin: 40px 0;
    border: 2px solid #fff;
    padding: 20px;
    background-color: #111;
  }
  
  .flowey-ascii {
    font-family: monospace;
    font-size: 6px;
    line-height: 1;
    color: #fff;
    white-space: pre;
    margin: 20px 0;
    overflow-x: auto;
    word-break: keep-all;
    max-width: 100%;
  }
  
  @media (max-width: 768px) {
    .flowey-ascii {
      font-size: 4px;
    }
  }
  
  @media (max-width: 480px) {
    .flowey-ascii {
      font-size: 3px;
    }
  }
  
  .quote-box {
    border: 2px solid #fff;
    padding: 15px;
    margin: 20px 0;
    background-color: #111;
    text-align: center;
    font-style: italic;
  }
  
  .feature-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 20px;
    margin: 30px 0;
  }
  
  .feature-card {
    border: 1px solid #fff;
    padding: 20px;
    background-color: #111;
  }
  
  .character-list {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
    gap: 15px;
    margin: 20px 0;
  }
  
  .character-item {
    border: 1px solid #fff;
    padding: 10px;
    text-align: center;
    background-color: #111;
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
  
  a {
    color: #fff;
    text-decoration: underline;
  }
  
  a:hover {
    color: #ccc;
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
  }
  
  .nav-links a:hover {
    background-color: #fff;
    color: #000;
  }
  
  .install-section {
    border: 2px solid #fff;
    padding: 20px;
    margin: 30px 0;
    background-color: #111;
  }
  
  .footer {
    text-align: center;
    margin: 50px 0 20px 0;
    padding: 20px;
    border-top: 1px solid #fff;
    font-size: 14px;
  }
</style>

<div class="container">
  <div class="flowey-header">
    <h1>🌻 FLOWEY</h1>
    <p>A delightful ASCII art tool inspired by <strong>cowsay</strong><br>
    but themed around the beloved <strong>Undertale</strong> universe</p>
  </div>

  <div class="quote-box">
    <p>"Howdy! I'm Flowey. Flowey the Flower!"</p>
  </div>

  <div class="nav-links">
    <a href="#installation">Installation</a>
    <a href="#usage">Usage</a>
    <a href="#characters">Characters</a>
    <a href="https://github.com/lazypwny751/flowey">GitHub</a>
  </div>

  <div class="flowey-ascii">
       ________________________
      /                        \
     |  "Howdy! I'm FLOWEY!"    |
     |  "Flowey the Flower!"    |
      \________________________/
              |
              |
          🌻 ╭─────╮
            │ ◕   ◕ │
            │   ω   │  
            ╰─────╯
               |||
            ╭──┴┴──╮
           ╱        ╲
          ╱  🌿🌿🌿  ╲
         ╱            ╲
        ╱______________╲
  </div>

  <h2>✨ Features</h2>
  <div class="feature-grid">
    <div class="feature-card">
      <h3>🎭 Multiple Characters</h3>
      <p>Choose from Flowey, Sans, Papyrus, Toriel, Asgore, and Frisk</p>
    </div>
    <div class="feature-card">
      <h3>💬 Random Quotes</h3>
      <p>No message? Get a random quote from the Undertale universe</p>
    </div>
    <div class="feature-card">
      <h3>🎨 Beautiful ASCII Art</h3>
      <p>Colorful terminal art with ANSI colors</p>
    </div>
    <div class="feature-card">
      <h3>⚡ Lightweight</h3>
      <p>Pure Perl with minimal dependencies</p>
    </div>
  </div>

  <h2 id="installation">📦 Installation</h2>
  <div class="install-section">
    <h3>Quick Start</h3>
    <pre><code># Clone and install
git clone https://github.com/lazypwny751/flowey.git
cd flowey
cpan install Getopt::Long::Descriptive

# Try it out!
./flowey.pl "Determination fills your soul!"</code></pre>

    <h3>Pre-built Packages</h3>
    <ul>
      <li>📦 Debian/Ubuntu: <code>flowey-ubuntu_1.0.0_all.deb</code></li>
      <li>🍃 Linux Mint: <code>flowey-mint_1.0.0_all.deb</code></li>
    </ul>
  </div>

  <h2 id="usage">🛠️ Usage Examples</h2>
  <pre><code># Random character with random quote
flowey

# Custom message with specific character
flowey -c toriel "My child, stay safe out there."

# List all available characters
flowey --list

# Generate new character from image
flowey --generate</code></pre>

  <h2 id="characters">🎯 Available Characters</h2>
  <div class="character-list">
    <div class="character-item">
      <strong>🌻 flowey</strong><br>
      The devious flower
    </div>
    <div class="character-item">
      <strong>💀 sans</strong><br>
      The laid-back skeleton
    </div>
    <div class="character-item">
      <strong>🍝 papyrus</strong><br>
      The enthusiastic skeleton
    </div>
    <div class="character-item">
      <strong>🐐 toriel</strong><br>
      The caring goat mother
    </div>
    <div class="character-item">
      <strong>👑 asgore</strong><br>
      The king of monsters
    </div>
    <div class="character-item">
      <strong>👤 frisk</strong><br>
      The determined human
    </div>
  </div>

  <h2>🤝 Contributing</h2>
  <p>Contributions are welcome! Feel free to open issues or submit pull requests on our <a href="https://github.com/lazypwny751/flowey">GitHub repository</a>.</p>

  <div class="quote-box">
    <p>"Stay determined!"</p>
  </div>

  <div class="footer">
    <p>Made with ❤️ and determination<br>
    Inspired by <strong>Undertale</strong> by Toby Fox<br>
    Licensed under GNU GPLv3</p>
  </div>
</div>
