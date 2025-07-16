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
  <div class="determination-pulse">
    <p>*** You feel a strange presence... ***</p>
  </div>
</div>

# Welcome, Human! 

You've fallen into the **Underground**... but don't worry! This isn't a place of despair - it's where **Flowey** lives, your friendly ASCII art companion inspired by the beloved **Undertale** universe.

<div class="battle-box">
* A wild FLOWEY appeared!
* FLOWEY wants to help you with ASCII art!
* What will you do?
  > FIGHT   ACT
  > ITEM    MERCY
</div>

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

<div class="save-point">
  <p><strong>* FLOWEY</strong></p>
  <p><em>Stay determined!</em></p>
</div>

<div class="frisk-box">
  <p><strong>* You feel a strange presence...</strong></p>
  <p><em>Ready to begin your journey? Check out the [Installation Guide](installation.html) or explore the [Character Gallery](characters.html)!</em></p>
</div>

<style>
.flowey-banner {
  text-align: center;
  background: linear-gradient(45deg, #2d5016, #4a7c23);
  color: #f4e4bc;
  padding: 2rem;
  border-radius: 0;
  margin-bottom: 2rem;
  border: 4px solid #f4e4bc;
  position: relative;
  box-shadow: 
    0 0 0 2px #000,
    0 0 30px rgba(252, 255, 74, 0.5);
  animation: flowey-banner-glow 4s ease-in-out infinite;
}

@keyframes flowey-banner-glow {
  0%, 100% { 
    box-shadow: 
      0 0 0 2px #000,
      0 0 30px rgba(252, 255, 74, 0.5);
  }
  50% { 
    box-shadow: 
      0 0 0 2px #000,
      0 0 50px rgba(252, 255, 74, 0.8);
  }
}

.ascii-art {
  font-family: 'Pixel', 'Courier New', monospace;
  font-size: 1.4rem;
  color: #fcff4a;
  text-shadow: 
    2px 2px 0px #000,
    4px 4px 0px rgba(0,0,0,0.5);
  letter-spacing: 2px;
}

.determination-pulse {
  margin-top: 1rem;
  animation: determination-text 3s ease-in-out infinite;
}

@keyframes determination-text {
  0%, 100% { 
    color: #f4e4bc;
    transform: scale(1);
  }
  50% { 
    color: #fcff4a;
    transform: scale(1.05);
  }
}

.character-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
  gap: 1.5rem;
  margin: 2rem 0;
}

.character-card {
  background: #f8f9fa;
  border: 4px solid #000;
  border-radius: 0;
  padding: 1.5rem;
  text-align: center;
  transition: all 0.3s ease;
  font-family: 'Pixel', 'Courier New', monospace;
  position: relative;
  box-shadow: 
    4px 4px 0px #000,
    8px 8px 0px rgba(0,0,0,0.2);
}

.character-card:hover {
  transform: translate(-2px, -2px);
  box-shadow: 
    6px 6px 0px #000,
    10px 10px 0px rgba(0,0,0,0.2);
  border-color: #fcff4a;
  background: #fff;
}

.character-card:nth-child(1):hover { border-color: var(--soul-red); }
.character-card:nth-child(2):hover { border-color: var(--soul-cyan); }
.character-card:nth-child(3):hover { border-color: var(--soul-orange); }
.character-card:nth-child(4):hover { border-color: var(--soul-green); }
.character-card:nth-child(5):hover { border-color: var(--soul-purple); }
.character-card:nth-child(6):hover { border-color: var(--soul-yellow); }

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
