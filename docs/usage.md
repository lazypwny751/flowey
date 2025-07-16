---
layout: default
title: "Usage Guide"
permalink: /usage/
---

# 📖 Usage Guide

<div class="papyrus-says">
  <p><strong>"NYEH HEH HEH! THE GREAT PAPYRUS WILL TEACH YOU HOW TO USE FLOWEY!"</strong></p>
</div>

## 🎯 Basic Usage

### Default Behavior
```bash
# Random character with random Undertale quote
flowey

# Custom message with random character  
flowey "Your custom message here"
```

### Character Selection
```bash
# Specify a character
flowey -c flowey "Howdy! I'm Flowey!"
flowey -c sans "you're gonna have a bad time."
flowey -c papyrus "NYEH HEH HEH!"
flowey -c toriel "My child..."
flowey -c asgore "..."
flowey -c frisk "..."
```

### Input Methods

**Command Line Arguments:**
```bash
flowey "Determination fills your soul!"
```

**Standard Input (Pipe):**
```bash
echo "Stay determined!" | flowey
cat message.txt | flowey -c sans
```

**Interactive Mode:**
```bash
# If no message provided, shows random quote
flowey -c toriel
```

## ⚙️ Command Line Options

| Option | Short | Description | Example |
|--------|-------|-------------|---------|
| `--character` | `-c` | Select character | `flowey -c sans "hi."` |
| `--assets` | `-a` | Custom assets directory | `flowey -a ./my-flowies` |
| `--list` | `-l` | List available characters | `flowey --list` |
| `--random` | `-r` | Force random character | `flowey -r "surprise me!"` |
| `--quiet` | `-q` | Suppress message box | `flowey -q -c flowey` |
| `--generate` | `-g` | Character generator mode | `flowey --generate` |
| `--version` | `-v` | Show version | `flowey --version` |
| `--help` | `-h` | Show help | `flowey --help` |

## 🎨 Character Generator

Create your own character files:

```bash
flowey --generate
```

This interactive mode will guide you through:
1. **Image Path**: Path to your source image
2. **Output File**: Name for your `.flowey` file  
3. **Author**: Your name (optional)

**Requirements:** `chafa` must be installed for image conversion.

### Character File Format

Flowey uses a simple format for character files:

```
Meta:
author = lazypwny751

Context:

Data:
[ASCII art content with ANSI color codes]
```

## 🌟 Advanced Usage

### Custom Assets Directory
```bash
# Use a different character collection
flowey -a /path/to/custom/characters -c mycharacter "Hello!"

# Development testing
flowey -a ./flowies -c flowey "Testing new character!"
```

### Quiet Mode (ASCII Only)
```bash
# Show only the character, no message box
flowey -q -c sans

# Useful for scripts or when you only want the ASCII art
echo "Silent message" | flowey -q -c toriel
```

### Random Character Selection
```bash
# Force random character even if one is specified
flowey -r "Surprise me with any character!"

# Random character with random quote
flowey -r
```

## 📜 Example Scripts

### Daily Motivation Script
```bash
#!/bin/bash
# daily-motivation.sh

QUOTES=(
    "Stay determined!"
    "Believe in yourself!"
    "You can do this!"
    "Don't give up!"
    "Your journey continues..."
)

RANDOM_QUOTE=${QUOTES[$RANDOM % ${#QUOTES[@]}]}
flowey -c toriel "$RANDOM_QUOTE"
```

### Fortune with Flowey
```bash
# Combine with fortune command
fortune | flowey -c sans

# Or create a function
flowey-fortune() {
    fortune | flowey -c ${1:-flowey}
}
```

### Git Commit Messages
```bash
# Add some personality to your commits
git log --oneline -1 | flowey -c flowey
```

## 🎪 Character Personalities

Each character has their unique speaking style:

### 🌻 Flowey
- Cheerful but sinister
- *"Howdy! I'm Flowey. Flowey the Flower!"*

### 💀 Sans  
- Laid-back, lowercase
- *"you're gonna have a bad time."*

### 🍝 Papyrus
- ENTHUSIASTIC, UPPERCASE
- *"NYEH HEH HEH! I, THE GREAT PAPYRUS..."*

### 🐐 Toriel
- Caring, maternal
- *"My child, stay safe out there."*

### 👑 Asgore
- Usually silent, contemplative
- *"..."* (speaks through presence)

### 👤 Frisk
- Silent protagonist
- *"..."* (actions speak louder)

---

<div class="flowey-tips">
  <h3>🌻 Flowey's Pro Tips</h3>
  <ul>
    <li><strong>Tip 1:</strong> Use <code>flowey --list</code> to discover all available characters</li>
    <li><strong>Tip 2:</strong> Pipe long text files for dramatic character presentations</li>
    <li><strong>Tip 3:</strong> Create custom characters with your own images using <code>--generate</code></li>
    <li><strong>Tip 4:</strong> Add flowey to your shell prompt for daily motivation!</li>
  </ul>
</div>

<style>
.papyrus-says {
  background: #ffa500;
  border: 3px solid #ff8c00;
  padding: 1.5rem;
  margin: 2rem 0;
  border-radius: 10px;
  text-align: center;
  font-weight: bold;
  color: white;
  text-shadow: 2px 2px 4px rgba(0,0,0,0.5);
}

.flowey-tips {
  background: linear-gradient(135deg, #4a7c23, #2d5016);
  color: #f4e4bc;
  padding: 2rem;
  border-radius: 10px;
  border: 3px solid #fcff4a;
}

.flowey-tips h3 {
  color: #fcff4a;
  margin-top: 0;
}

table {
  width: 100%;
  border-collapse: collapse;
  margin: 1.5rem 0;
}

th, td {
  border: 1px solid #dee2e6;
  padding: 0.75rem;
  text-align: left;
}

th {
  background-color: #f8f9fa;
  font-weight: bold;
}

tr:nth-child(even) {
  background-color: #f8f9fa;
}
</style>
