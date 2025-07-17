---
layout: default
title: Usage Guide
permalink: /usage/
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
  
  .usage-header {
    text-align: center;
    margin: 40px 0;
    border: 2px solid #fff;
    padding: 20px;
    background-color: #111;
  }
  
  .command-section {
    border: 1px solid #fff;
    padding: 20px;
    margin: 20px 0;
    background-color: #111;
  }
  
  .example-box {
    border: 2px solid #51cf66;
    padding: 15px;
    margin: 20px 0;
    background-color: #1a2e1a;
    color: #51cf66;
  }
  
  .tip-box {
    border: 2px solid #ffd43b;
    padding: 15px;
    margin: 20px 0;
    background-color: #2d2a1a;
    color: #ffd43b;
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
  
  .option-table {
    width: 100%;
    border-collapse: collapse;
    margin: 20px 0;
  }
  
  .option-table th,
  .option-table td {
    border: 1px solid #fff;
    padding: 10px;
    text-align: left;
  }
  
  .option-table th {
    background-color: #222;
  }
</style>

<div class="container">
  <div class="usage-header">
    <h1>🛠️ Usage Guide</h1>
    <p>Learn how to use Flowey like a pro!</p>
  </div>

  <div class="nav-links">
    <a href="/flowey">Home</a>
    <a href="/flowey/installation/">Installation</a>
    <a href="/flowey/characters/">Characters</a>
  </div>

  <h2>📝 Basic Usage</h2>

  <div class="command-section">
    <h3>Simple Message</h3>
    <p>The most basic way to use Flowey:</p>
    <pre><code>flowey "Your message here"</code></pre>
    
    <div class="example-box">
      <h4>Example:</h4>
      <pre><code>$ flowey "Determination fills your soul!"</code></pre>
    </div>
  </div>

  <div class="command-section">
    <h3>Random Quote</h3>
    <p>Let Flowey surprise you with a random Undertale quote:</p>
    <pre><code>flowey</code></pre>
    
    <div class="example-box">
      <h4>Example Output:</h4>
      <pre><code>$ flowey
 ___________________________________
| It's a beautiful day outside.      |
| Birds are singing, flowers are     |
| blooming...                        |
|___________________________________|</code></pre>
    </div>
  </div>

  <h2>🎭 Character Selection</h2>

  <div class="command-section">
    <h3>Choose a Specific Character</h3>
    <p>Use the <code>-c</code> or <code>--character</code> flag:</p>
    <pre><code>flowey -c CHARACTER_NAME "message"
flowey --character CHARACTER_NAME "message"</code></pre>
    
    <div class="example-box">
      <h4>Examples:</h4>
      <pre><code># Sans being Sans
flowey -c sans "you're gonna have a bad time."

# Papyrus being enthusiastic
flowey -c papyrus "NYEH HEH HEH!"

# Toriel being caring
flowey -c toriel "My child, stay safe out there."

# Asgore being awkward
flowey -c asgore "Howdy!"</code></pre>
    </div>
  </div>

  <div class="command-section">
    <h3>Random Character</h3>
    <p>Let fate decide with the <code>-r</code> or <code>--random</code> flag:</p>
    <pre><code>flowey -r "message"
flowey --random "message"</code></pre>
  </div>

  <h2>📋 Command Line Options</h2>

  <table class="option-table">
    <thead>
      <tr>
        <th>Short</th>
        <th>Long</th>
        <th>Description</th>
        <th>Example</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td><code>-c</code></td>
        <td><code>--character</code></td>
        <td>Set character</td>
        <td><code>-c sans</code></td>
      </tr>
      <tr>
        <td><code>-a</code></td>
        <td><code>--assets</code></td>
        <td>Set assets directory</td>
        <td><code>-a /path/to/flowies</code></td>
      </tr>
      <tr>
        <td><code>-r</code></td>
        <td><code>--random</code></td>
        <td>Select random character</td>
        <td><code>-r</code></td>
      </tr>
      <tr>
        <td><code>-l</code></td>
        <td><code>--list</code></td>
        <td>List available characters</td>
        <td><code>-l</code></td>
      </tr>
      <tr>
        <td><code>-q</code></td>
        <td><code>--quiet</code></td>
        <td>Run quietly (no message box)</td>
        <td><code>-q</code></td>
      </tr>
      <tr>
        <td><code>-g</code></td>
        <td><code>--generate</code></td>
        <td>Generate new character file</td>
        <td><code>-g</code></td>
      </tr>
      <tr>
        <td><code>-v</code></td>
        <td><code>--version</code></td>
        <td>Show version information</td>
        <td><code>-v</code></td>
      </tr>
      <tr>
        <td><code>-h</code></td>
        <td><code>--help</code></td>
        <td>Show help message</td>
        <td><code>-h</code></td>
      </tr>
    </tbody>
  </table>

  <h2>🔧 Advanced Usage</h2>

  <div class="command-section">
    <h3>List Available Characters</h3>
    <p>See what characters you have installed:</p>
    <pre><code>flowey --list</code></pre>
    
    <div class="example-box">
      <h4>Example Output:</h4>
      <pre><code>Available characters:
- flowey
- sans
- papyrus
- toriel
- asgore
- frisk</code></pre>
    </div>
  </div>

  <div class="command-section">
    <h3>Custom Assets Directory</h3>
    <p>Specify a custom location for character files:</p>
    <pre><code>flowey -a /path/to/custom/flowies "message"</code></pre>
  </div>

  <div class="command-section">
    <h3>Quiet Mode</h3>
    <p>Show only the character art without the message box:</p>
    <pre><code>flowey -q -c flowey</code></pre>
  </div>

  <div class="command-section">
    <h3>Reading from STDIN</h3>
    <p>Pipe text to Flowey:</p>
    <pre><code>echo "Hello from the Underground!" | flowey
cat message.txt | flowey -c sans</code></pre>
  </div>

  <h2>🎨 Creating Custom Characters</h2>

  <div class="command-section">
    <h3>Generate Character from Image</h3>
    <p>Create new character files from images (requires <code>chafa</code>):</p>
    <pre><code>flowey --generate</code></pre>
    
    <div class="tip-box">
      <h4>💡 Tip:</h4>
      <p>Install <code>chafa</code> first:</p>
      <pre><code># Ubuntu/Debian
sudo apt install chafa

# Arch Linux
sudo pacman -S chafa

# macOS
brew install chafa</code></pre>
    </div>
    
    <p>The generator will prompt you for:</p>
    <ul>
      <li><strong>Image path</strong>: Path to your source image</li>
      <li><strong>Output file</strong>: Name for the .flowey file</li>
      <li><strong>Author</strong>: Your name (optional)</li>
    </ul>
  </div>

  <h2>💡 Pro Tips</h2>

  <div class="tip-box">
    <h3>🌟 Useful Tricks</h3>
    
    <h4>Create Aliases</h4>
    <p>Add to your <code>~/.bashrc</code> or <code>~/.zshrc</code>:</p>
    <pre><code>alias flowey-sans='flowey -c sans'
alias flowey-papyrus='flowey -c papyrus'
alias flowey-random='flowey -r'</code></pre>
    
    <h4>Fortune Integration</h4>
    <p>Combine with <code>fortune</code> for random quotes:</p>
    <pre><code>fortune | flowey -c sans</code></pre>
    
    <h4>Daily Quote</h4>
    <p>Add to your shell startup file:</p>
    <pre><code>flowey -r</code></pre>
    
    <h4>Git Integration</h4>
    <p>Use in your commit hooks:</p>
    <pre><code>#!/bin/bash
git log -1 --pretty=%s | flowey -c flowey</code></pre>
  </div>

  <h2>📚 Examples Gallery</h2>

  <div class="example-box">
    <h3>Character Showcase</h3>
    <pre><code># Flowey being devious
flowey -c flowey "In this world, it's kill or be killed!"

# Sans with his classic line
flowey -c sans "it's a beautiful day outside..."

# Papyrus being confident
flowey -c papyrus "I, THE GREAT PAPYRUS, WILL CAPTURE A HUMAN!"

# Toriel being motherly
flowey -c toriel "Stay safe, my child."

# Asgore being formal
flowey -c asgore "Human... it was nice to meet you."

# Frisk staying determined
flowey -c frisk "* You are filled with determination."</code></pre>
  </div>

  <div style="text-align: center; margin: 40px 0; padding: 20px; border: 1px solid #fff; background-color: #111;">
    <p><em>"You feel like you understand Flowey a little better now."</em></p>
  </div>
</div>
