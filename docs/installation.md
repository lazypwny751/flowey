---
layout: default
title: "Installation Guide"
permalink: /installation/
---

# 📦 Installation Guide

<div class="sans-says">
  <p><em>"hey, installing stuff? sounds like you're gonna have a... good time."</em></p>
</div>

## 🚀 Quick Installation

### Method 1: From Source (Recommended)

```bash
# Clone the repository
git clone https://github.com/lazypwny751/flowey.git
cd flowey

# Install Perl dependencies
cpan install Getopt::Long::Descriptive

# Test the installation
./flowey.pl "It works!"
```

### Method 2: Pre-built Packages

We provide pre-built packages for Debian-based distributions:

#### Ubuntu/Debian
```bash
# Download the .deb package
wget https://github.com/lazypwny751/flowey/releases/latest/download/flowey-ubuntu_1.0.0_all.deb

# Install the package
sudo dpkg -i flowey-ubuntu_1.0.0_all.deb

# Install missing dependencies (if any)
sudo apt-get install -f
```

#### Linux Mint
```bash
# Download the Mint-specific package
wget https://github.com/lazypwny751/flowey/releases/latest/download/flowey-mint_1.0.0_all.deb

# Install the package
sudo dpkg -i flowey-mint_1.0.0_all.deb
```

## 🛠️ Development Setup

For contributors and developers:

```bash
# Clone the repository
git clone https://github.com/lazypwny751/flowey.git
cd flowey

# Install carton for dependency management
cpan install Carton

# Install dependencies with carton
carton install

# Run with carton
carton exec perl flowey.pl "Development mode activated!"
```

## 📋 System Requirements

- **Perl**: Version 5.10 or higher
- **Terminal**: Any ANSI color-capable terminal
- **Dependencies**: 
  - `Getopt::Long::Descriptive`
  - `File::Find` (core module)
  - `File::Which` (for character generation)

## 🎨 Optional Dependencies

For the best experience:

- **chafa**: Required for generating custom character files
  ```bash
  # Ubuntu/Debian
  sudo apt install chafa
  
  # Arch Linux
  sudo pacman -S chafa
  
  # macOS
  brew install chafa
  ```

## 🧪 Testing Your Installation

Once installed, test Flowey with these commands:

```bash
# Default behavior (random quote with random character)
flowey

# Custom message with Flowey
flowey "Determination fills your soul!"

# Try different characters
flowey -c sans "you're gonna have a bad time."
flowey -c papyrus "NYEH HEH HEH!"
flowey -c toriel "My child, you have grown so much."

# List all available characters
flowey --list
```

## 🔧 Troubleshooting

### Common Issues

**1. "Character file not found"**
```bash
# Check if assets directory exists
ls -la /usr/share/flowey

# Use custom assets directory
flowey -a ./flowies -c flowey "Testing!"
```

**2. "Command not found: flowey"**
```bash
# If installed from source, use full path
./flowey.pl "Hello world!"

# Or add to PATH
export PATH=$PATH:/path/to/flowey
```

**3. "Can't locate Getopt::Long::Descriptive"**
```bash
# Install missing Perl module
cpan install Getopt::Long::Descriptive

# Or using your package manager
sudo apt install libgetopt-long-descriptive-perl
```

---

<div class="toriel-says">
  <p><strong>* Toriel offers you some pie after a successful installation</strong></p>
  <p><em>"My child, you have done well. Now you can bring joy to the terminal with our friends from the Underground!"</em></p>
</div>

<style>
.sans-says {
  background: #87ceeb;
  border-left: 5px solid #4682b4;
  padding: 1rem;
  margin: 1.5rem 0;
  border-radius: 5px;
  font-style: italic;
}

.toriel-says {
  background: #f0e68c;
  border: 3px solid #daa520;
  padding: 1.5rem;
  margin: 2rem 0;
  border-radius: 10px;
  text-align: center;
}
</style>
