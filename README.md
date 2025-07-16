# 🌻 Flowey

> *"Howdy! I'm Flowey. Flowey the Flower!"*

A delightful ASCII art tool inspired by **cowsay** but themed around the beloved **Undertale** universe. Let your favorite characters deliver your messages with style!

![Flowey Demo](https://github.com/user-attachments/assets/993d5ef4-a843-4e3b-8aab-485cc810b8ac)

## ✨ Features

- 🎭 **Multiple Characters**: Choose from Flowey, Sans, Papyrus, Toriel, Asgore, and Frisk
- 💬 **Random Undertale Quotes**: No message? Get a random quote from the game
- 🎨 **Colorful ASCII Art**: Beautiful terminal art with ANSI colors
- ⚡ **Lightweight**: Pure Perl with minimal dependencies

## 🚀 Quick Start

```bash
# Clone and install
git clone https://github.com/lazypwny751/flowey.git
cd flowey
cpan install Getopt::Long::Descriptive

# Try it out!
./flowey.pl "Determination fills your soul!"
./flowey.pl -c sans "you're gonna have a bad time."
./flowey.pl -c papyrus "NYEH HEH HEH!"
```

## 📖 Documentation

Complete documentation available at: **[flowey.underground.dev](https://lazypwny751.github.io/flowey)**

- 📦 [Installation Guide](https://lazypwny751.github.io/flowey/installation/)
- 📚 [Usage Examples](https://lazypwny751.github.io/flowey/usage/)  
- 🎭 [Character Gallery](https://lazypwny751.github.io/flowey/characters/)

## 🎯 Available Characters

| Character | Emoji | Personality |
|-----------|-------|-------------|
| **flowey** | 🌻 | The devious flower |
| **sans** | 💀 | The laid-back skeleton |
| **papyrus** | 🍝 | The enthusiastic skeleton |
| **toriel** | 🐐 | The caring goat mother |
| **asgore** | 👑 | The king of monsters |
| **frisk** | 👤 | The determined human |

## � Installation Options

**From Source:**
```bash
git clone https://github.com/lazypwny751/flowey.git
cd flowey && cpan install Getopt::Long::Descriptive
```

**Pre-built Packages:**
- 📦 Debian/Ubuntu: `flowey-ubuntu_1.0.0_all.deb`
- 🍃 Linux Mint: `flowey-mint_1.0.0_all.deb`

## 🛠️ Usage Examples

```bash
# Random character with random quote
flowey

# Custom message with specific character
flowey -c toriel "My child, stay safe out there."

# List all available characters
flowey --list

# Generate new character from image
flowey --generate
```

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/awesome-feature`)
3. Commit your changes (`git commit -m 'Add awesome feature'`)
4. Push to the branch (`git push origin feature/awesome-feature`)
5. Open a Pull Request

## 📜 License

This project is licensed under the [GNU GPLv3 License](LICENSE).

---

> *Made with ❤️ and determination*  
> *Inspired by **Undertale** by Toby Fox*
