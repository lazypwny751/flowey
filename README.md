# 🌻 Flowey

> *"Howdy! I'm Flowey. Flowey the Flower!"*

A delightful ASCII art tool inspired by **cowsay** but themed around the beloved **Undertale** universe. Let your favorite characters deliver your messages with style!

![Flowey Demo](https://github.com/user-attachments/assets/993d5ef4-a843-4e3b-8aab-485cc810b8ac)

## ✨ Features

- 🎭 **Multiple Characters**: Choose from Flowey, Sans, Papyrus, Toriel, Asgore, and Frisk
- 💬 **Random Undertale Quotes**: No message? Get a random quote from the game
- 🎨 **Colorful ASCII Art**: Beautiful terminal art with ANSI colors
- ⚡ **Lightweight**: Pure Perl with minimal dependencies

## 🚀 Installation

### Quick Install
```bash
# Clone the repository
git clone https://github.com/lazypwny751/flowey.git
cd flowey

# Install dependencies
cpan install Getopt::Long::Descriptive
# or use carton for development
carton install
```

### Package Installation
Pre-built packages available for:
- 📦 **Debian/Ubuntu**: `flowey-ubuntu_1.0.0_all.deb`
- 🍃 **Linux Mint**: `flowey-mint_1.0.0_all.deb`

## 📖 Usage

```bash
# Default Flowey with random quote
./flowey.pl

# Custom message with default character (Ferris)
./flowey.pl "Determination fills your soul!"

# Choose a different character
./flowey.pl -c sans "you're gonna have a bad time."
./flowey.pl -c papyrus "NYEH HEH HEH!"

# Specify custom assets directory
./flowey.pl -a /path/to/flowies -c toriel "My child..."
```

### Available Characters
- 🌻 **flowey** (default) - The devious flower
- 💀 **sans** - The laid-back skeleton  
- 🍝 **papyrus** - The enthusiastic skeleton
- 🐐 **toriel** - The caring goat mother
- 👑 **asgore** - The king of monsters
- 👤 **frisk** - The determined human

## 🛠️ Development

```bash
# Development setup with carton
carton install
carton exec perl flowey.pl

# Build packages
make ubuntu  # Ubuntu/Debian package
make mint    # Linux Mint package
```

## 🎯 Examples

```bash
# Random Undertale quote with Sans
./flowey.pl -c sans

# Custom motivational message with Toriel  
./flowey.pl -c toriel "Stay determined, my child."

# Papyrus being... well, Papyrus
./flowey.pl -c papyrus "I, THE GREAT PAPYRUS, BELIEVE IN YOU!"
```

---

## 🤝 Contributing

Contributions are welcome!

1. Fork this repository
2. Create your feature branch (`git checkout -b feature/cool-stuff`)
3. Commit your changes (`git commit -m 'Add some cool stuff'`)
4. Push to the branch (`git push origin feature/cool-stuff`)
5. Open a pull request

Or just open an issue if you have feedback or suggestions.

## 📜 License

This project is licensed under the terms of the [GNU GPLv3 License](https://www.gnu.org/licenses/gpl-3.0.html).  
See the [LICENSE](https://github.com/lazypwny751/flowey/blob/main/LICENSE) file for details.

*Made with ❤️ and determination*
