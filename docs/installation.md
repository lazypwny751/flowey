---
layout: default
title: Installation Guide
permalink: /installation/
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
  
  .installation-header {
    text-align: center;
    margin: 40px 0;
    border: 2px solid #fff;
    padding: 20px;
    background-color: #111;
  }
  
  .method-section {
    border: 1px solid #fff;
    padding: 20px;
    margin: 20px 0;
    background-color: #111;
  }
  
  .requirements-box {
    border: 2px solid #fff;
    padding: 15px;
    margin: 20px 0;
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
  
  .warning-box {
    border: 2px solid #ff6b6b;
    padding: 15px;
    margin: 20px 0;
    background-color: #2d1515;
    color: #ff6b6b;
  }
  
  .success-box {
    border: 2px solid #51cf66;
    padding: 15px;
    margin: 20px 0;
    background-color: #1a2e1a;
    color: #51cf66;
  }
</style>

<div class="container">
  <div class="installation-header">
    <h1>📦 Installation Guide</h1>
    <p>Get Flowey up and running on your system</p>
  </div>

  <div class="nav-links">
    <a href="/">Home</a>
    <a href="/usage/">Usage</a>
    <a href="/characters/">Characters</a>
  </div>

  <div class="requirements-box">
    <h3>⚙️ System Requirements</h3>
    <ul>
      <li><strong>Perl 5.10</strong> or higher</li>
      <li><strong>CPAN</strong> package manager</li>
      <li><strong>Terminal</strong> with ANSI color support</li>
      <li><strong>Git</strong> (for source installation)</li>
    </ul>
  </div>

  <h2>🚀 Installation Methods</h2>

  <div class="method-section">
    <h3>Method 1: From Source (Recommended)</h3>
    <p>This is the recommended method for most users:</p>
    
    <pre><code># Clone the repository
git clone https://github.com/lazypwny751/flowey.git

# Navigate to the directory
cd flowey

# Install Perl dependencies
cpan install Getopt::Long::Descriptive

# Make executable (if needed)
chmod +x flowey.pl

# Test installation
./flowey.pl "Hello, Underground!"</code></pre>
  </div>

  <div class="method-section">
    <h3>Method 2: Pre-built Packages</h3>
    <p>For Debian-based distributions:</p>
    
    <h4>Ubuntu/Debian:</h4>
    <pre><code># Download the package
wget https://github.com/lazypwny751/flowey/releases/download/v1.0.0/flowey-ubuntu_1.0.0_all.deb

# Install the package
sudo dpkg -i flowey-ubuntu_1.0.0_all.deb

# Fix dependencies if needed
sudo apt-get install -f</code></pre>

    <h4>Linux Mint:</h4>
    <pre><code># Download the package
wget https://github.com/lazypwny751/flowey/releases/download/v1.0.0/flowey-mint_1.0.0_all.deb

# Install the package
sudo dpkg -i flowey-mint_1.0.0_all.deb

# Fix dependencies if needed
sudo apt-get install -f</code></pre>
  </div>

  <div class="method-section">
    <h3>Method 3: Direct Download</h3>
    <p>For a quick single-file installation:</p>
    
    <pre><code># Download the script directly
curl -O https://raw.githubusercontent.com/lazypwny751/flowey/main/flowey.pl

# Download character files
mkdir -p flowies/undertale
cd flowies/undertale
curl -O https://raw.githubusercontent.com/lazypwny751/flowey/main/flowies/undertale/flowey.flowey
curl -O https://raw.githubusercontent.com/lazypwny751/flowey/main/flowies/undertale/sans.flowey
# ... download other character files

# Install dependencies
cpan install Getopt::Long::Descriptive

# Make executable
chmod +x flowey.pl</code></pre>
  </div>

  <h2>🔧 Post-Installation Setup</h2>

  <div class="method-section">
    <h3>Setting up PATH (Optional)</h3>
    <p>To use Flowey from anywhere in your system:</p>
    
    <pre><code># Copy to system path
sudo cp flowey.pl /usr/local/bin/flowey
sudo cp -r flowies /usr/share/flowey/

# Or create a symbolic link
sudo ln -s $(pwd)/flowey.pl /usr/local/bin/flowey</code></pre>
  </div>

  <div class="method-section">
    <h3>Configuring Assets Directory</h3>
    <p>If you installed manually, you may need to specify the assets directory:</p>
    
    <pre><code># Use the -a flag to specify assets directory
./flowey.pl -a ./flowies "Your message here"

# Or set environment variable
export FLOWEY_ASSETS_DIR="$(pwd)/flowies"
./flowey.pl "Your message here"</code></pre>
  </div>

  <h2>✅ Verification</h2>

  <div class="success-box">
    <h3>Test Your Installation</h3>
    <p>Run these commands to verify everything is working:</p>
    
    <pre><code># Check version
flowey --version

# List available characters
flowey --list

# Test with a message
flowey "Determination fills your soul!"

# Test specific character
flowey -c sans "you're gonna have a bad time."</code></pre>
  </div>

  <h2>🐛 Troubleshooting</h2>

  <div class="warning-box">
    <h3>Common Issues</h3>
    
    <h4>Permission Denied</h4>
    <pre><code># Make the script executable
chmod +x flowey.pl</code></pre>
    
    <h4>Module Not Found</h4>
    <pre><code># Install missing Perl modules
cpan install Getopt::Long::Descriptive
cpan install File::Find</code></pre>
    
    <h4>No Characters Found</h4>
    <pre><code># Check assets directory
flowey --list

# Specify correct path
flowey -a /path/to/flowies "message"</code></pre>
    
    <h4>ANSI Colors Not Working</h4>
    <p>Make sure your terminal supports ANSI colors. Try a different terminal emulator or check your <code>TERM</code> environment variable.</p>
  </div>

  <div class="method-section">
    <h3>🆘 Getting Help</h3>
    <p>If you're still having issues:</p>
    <ul>
      <li>Check the <a href="https://github.com/lazypwny751/flowey/issues">GitHub Issues</a></li>
      <li>Read the <a href="/usage/">Usage Guide</a></li>
      <li>Open a new issue with your error details</li>
    </ul>
  </div>

  <div style="text-align: center; margin: 40px 0; padding: 20px; border: 1px solid #fff; background-color: #111;">
    <p><em>"You feel like you're going to have a good time configuring this."</em></p>
  </div>
</div>
