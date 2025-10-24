# 🌌 Cosmos - Realistic Star Field Wallpaper

**Transform your desktop with 8,000+ scientifically accurate stars**

🚀 **[Live Demo](https://amponce.github.io/cosmos-wallpaper)** • 📥 **[Download](https://github.com/amponce/cosmos-wallpaper/releases)**

![Wallpaper Engine](https://img.shields.io/badge/Wallpaper%20Engine-Supported-blue) ![macOS](https://img.shields.io/badge/macOS-Plash-purple) ![Cross Platform](https://img.shields.io/badge/Electron-All%20Platforms-green) ![License](https://img.shields.io/badge/license-MIT-green) ![Stars](https://img.shields.io/badge/stars-8000%2B-yellow)

## ✨ Features

- 🌟 **8,000+ Realistic Stars** with scientific spectral classification
- 🎨 **Accurate Colors** from blue giants to red dwarfs (O, B, A, F, G, K, M)
- 🔄 **Smooth 60fps** 3D rotation
- 🖥️ **Ultrawide Optimized** for 49-inch monitors
- ⚡ **Low Resource Usage** (<5% CPU)
- 🎛️ **Fully Customizable** star count, size, speed
- 🌍 **3 Platform Options** Windows/macOS/Linux

## 🚀 Quick Start

**Windows (Wallpaper Engine):** Download → Run `setup.bat` → Apply wallpaper

**macOS (Plash - FREE):** Download → Open in Plash → Set as wallpaper

**Cross-Platform (Electron):** Clone → `cd electron-app` → `npm install` → `npm start`

## 📦 What's Included

- `wallpaper-engine/` - Windows (Wallpaper Engine)
- `plash/` - macOS (Plash app)  
- `electron-app/` - Standalone desktop app
- `docs/` - Live demo site (GitHub Pages)

## 🎨 Customize

Edit the HTML files to adjust:
```javascript
let rotationSpeed = 0.0001;  // Speed
let starCount = 8000;         // Stars (3000-15000)
let starSize = 1.5;           // Size (0.5-3.0)
```

## 💻 System Requirements

**Minimum:** 2GB RAM, Integrated GPU, WebGL 2.0
**Recommended:** 4GB RAM, Dedicated GPU, 1440p+
**Optimal (49" UW):** 8GB RAM, GTX 1060+, 5120×1440

## 🛠️ Installation

### Windows - Wallpaper Engine ($3.99)
1. Install [Wallpaper Engine](https://store.steampowered.com/app/431960/)
2. Clone repo: `git clone https://github.com/amponce/cosmos-wallpaper.git`
3. Run `setup.bat` or open `cosmos-wallpaper.html` in Wallpaper Engine

### macOS - Plash (FREE)
1. Install [Plash](https://sindresorhus.com/plash) from App Store
2. Clone repo
3. Add `plash/cosmos-wallpaper.html` as local file in Plash

### Cross-Platform - Electron App
```bash
cd electron-app
npm install
npm start              # Dev mode
npm run build-win      # Build for Windows
npm run build-mac      # Build for macOS
```

## 🌟 Stellar Science

Uses real Harvard Spectral Classification:
- **O** (30,000+ K): Blue giants - 0.00003%
- **M** (2,400-3,700 K): Red dwarfs - 76.45% (most common)

Stars distributed with spherical coordinates for natural 3D space.

## 🎯 Performance

60 FPS | <5% CPU | 10-15% GPU | ~150MB RAM

Tested on RTX 3070 + Ryzen 5800X @ 5120×1440

## 📸 Screenshots

Coming soon! (Check back after first release)

## 🤝 Contributing

Ideas welcome! See issues for planned features:
- Constellation lines
- Nebula effects  
- Shooting stars
- VR support

## 📄 License

MIT License - see [LICENSE](LICENSE)

## 🙏 Credits

- Three.js team
- Wallpaper Engine
- Sindre Sorhus (Plash)
- Harvard Spectral Classification system

---

**Made with ❤️ for space enthusiasts**

⭐ Star this repo if you find it useful!
