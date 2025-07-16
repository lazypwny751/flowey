---
layout: default
title: "Welcome to the Underground"
permalink: /
---

<div class="flowey-banner">
  <pre class="ascii-art">
    🌻 FLOWEY 🌻
   Howdy! I'm Flowey.
   Flowey the Flower!
  </pre>
</div>

# Welcome, Human! 

You've fallen into the **Underground**... but don't worry! This isn't a place of despair - it's where **Flowey** lives, your friendly ASCII art companion inspired by the beloved **Undertale** universe.

## 🎭 What is Flowey?

Flowey is a delightful command-line tool that brings your favorite **Undertale** characters to life in ASCII art form. Just like `cowsay`, but with the charm and determination of the Underground!

```bash
$ flowey "Stay determined!"
```

### ✨ Features

- **Multiple Characters**: Choose from Flowey, Sans, Papyrus, Toriel, Asgore, and Frisk
- **Random Undertale Quotes**: No message? Get a random quote from the game  
- **Colorful ASCII Art**: Beautiful terminal art with ANSI colors
- **Lightweight**: Pure Perl with minimal dependencies

## 🚀 Quick Start

```bash
# Clone the repository
git clone https://github.com/lazypwny751/flowey.git
cd flowey

# Install dependencies  
cpan install Getopt::Long::Descriptive

# Run with default character
./flowey.pl "Determination fills your soul!"

# Choose a different character
./flowey.pl -c sans "you're gonna have a bad time."
```

## 🌟 Available Characters

<div class="character-grid">
  <div class="character-card">
    <h3>🌻 Flowey</h3>
    <p>The devious flower with a smile that's never just a smile</p>
  </div>
  
  <div class="character-card">
    <h3>💀 Sans</h3>
    <p>The laid-back skeleton who knows more than he lets on</p>
  </div>
  
  <div class="character-card">
    <h3>🍝 Papyrus</h3>
    <p>The enthusiastic skeleton who believes in you!</p>
  </div>
  
  <div class="character-card">
    <h3>🐐 Toriel</h3>
    <p>The caring goat mother who smells like cinnamon</p>
  </div>
  
  <div class="character-card">
    <h3>👑 Asgore</h3>
    <p>The king of monsters, quietly tending his flowers</p>
  </div>
  
  <div class="character-card">
    <h3>👤 Frisk</h3>
    <p>The determined human whose eyes say enough</p>
  </div>
</div>

---

<div class="determination-box">
  <p><strong>* You feel a strange presence...</strong></p>
  <p><em>Ready to begin your journey? Check out the [Installation Guide](installation.html) or explore the [Character Gallery](characters.html)!</em></p>
</div>

<style>
.flowey-banner {
  text-align: center;
  background: linear-gradient(45deg, #2d5016, #4a7c23);
  color: #f4e4bc;
  padding: 2rem;
  border-radius: 10px;
  margin-bottom: 2rem;
  border: 3px solid #f4e4bc;
}

.ascii-art {
  font-family: 'Courier New', monospace;
  font-size: 1.2rem;
  color: #fcff4a;
  text-shadow: 2px 2px 4px rgba(0,0,0,0.5);
}

.character-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 1.5rem;
  margin: 2rem 0;
}

.character-card {
  background: #f8f9fa;
  border: 2px solid #dee2e6;
  border-radius: 8px;
  padding: 1.5rem;
  text-align: center;
  transition: transform 0.2s, box-shadow 0.2s;
}

.character-card:hover {
  transform: translateY(-5px);
  box-shadow: 0 4px 15px rgba(0,0,0,0.1);
  border-color: #fcff4a;
}

.determination-box {
  background: linear-gradient(135deg, #ff6b6b, #feca57);
  color: white;
  padding: 1.5rem;
  border-radius: 10px;
  text-align: center;
  margin: 2rem 0;
  border: 3px solid white;
  font-weight: bold;
}

.determination-box a {
  color: white;
  text-decoration: underline;
}
</style>
