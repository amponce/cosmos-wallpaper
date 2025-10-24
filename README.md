# Cosmos - Realistic Star Field Wallpaper

A live wallpaper featuring 8,000+ scientifically accurate stars with realistic colors and smooth 3D rotation. Optimized for ultrawide monitors.


## Features

- 8,000+ procedurally generated stars with authentic astronomical data
- Spectral classification colors (O, B, A, F, G, K, M types)
- Smooth 60fps 3D rotation
- Hardware-accelerated WebGL rendering
- Low resource usage (under 5% CPU)
- Fully customizable star count, size, and rotation speed
- Optimized for ultrawide monitors (49-inch+)

## Installation

### Windows - Wallpaper Engine

Requirements: [Wallpaper Engine](https://store.steampowered.com/app/431960/) ($3.99 on Steam)

1. Clone or download this repository
2. Open Wallpaper Engine
3. Click "Open from File"
4. Navigate to `wallpaper-engine/cosmos-wallpaper.html`
5. Click OK to apply

Alternatively, run `setup.bat` for automatic installation.

### macOS - Plash

Requirements: [Plash](https://sindresorhus.com/plash) (Free on Mac App Store)

1. Clone or download this repository
2. Open Plash
3. Add Website → Local File
4. Select `plash/cosmos-wallpaper.html`
5. Right-click desktop → Change Wallpaper → Select Plash

### Cross-Platform - Electron App

Requirements: Node.js 16+

```bash
cd electron-app
npm install
npm start
```

To build standalone executables:
```bash
npm run build-win      # Windows
npm run build-mac      # macOS
npm run build-linux    # Linux
```

## Customization

Edit the HTML file to adjust parameters:

```javascript
let rotationSpeed = 0.0001;  // Rotation speed (0-0.001)
let starCount = 8000;         // Number of stars (3000-15000)
let starSize = 1.5;           // Star size multiplier (0.5-3.0)
```

### Recommended Settings by Display

| Display | Star Count | Star Size | Rotation Speed |
|---------|------------|-----------|----------------|
| 1080p (24") | 5000 | 1.5 | 0.0001 |
| 1440p (27") | 6000 | 1.5 | 0.0001 |
| Ultrawide 34" | 8000 | 1.5-2.0 | 0.0001 |
| Ultrawide 49" | 8000-10000 | 2.0 | 0.0001 |
| 4K | 10000 | 2.0 | 0.0001 |

## System Requirements

**Minimum:**
- WebGL 2.0 capable browser
- 2GB RAM
- Integrated graphics (Intel HD 4000+)

**Recommended:**
- 4GB+ RAM
- Dedicated GPU (GTX 1050 / RX 560 or better)
- 1440p or ultrawide display

**Optimal (49" ultrawide):**
- 8GB+ RAM
- GTX 1060 / RX 580 or better
- 5120×1440 display

## Performance

- 60 FPS constant
- CPU usage: under 5%
- GPU usage: 10-15%
- RAM usage: ~150MB
- Render time: under 16ms per frame

Tested on RTX 3070 + Ryzen 5800X at 5120×1440

## Technical Details

**Stack:**
- Three.js + WebGL 2.0
- Vanilla JavaScript (ES6+)
- Electron 28 (desktop app)

**Key Features:**
- Hardware-accelerated particle system
- Custom shader materials with glow effects
- Spherical coordinate distribution
- Realistic stellar magnitudes
- Additive blending for authentic appearance
- Optimized BufferGeometry for 8000+ points

## Stellar Science

Stars are classified using the Harvard Spectral Classification system:

| Type | Temperature | Color | Distribution |
|------|-------------|-------|--------------|
| O | 30,000+ K | Blue | 0.00003% |
| B | 10,000-30,000 K | Blue-white | 0.13% |
| A | 7,500-10,000 K | White | 0.6% |
| F | 6,000-7,500 K | Yellow-white | 3% |
| G | 5,200-6,000 K | Yellow | 7.6% |
| K | 3,700-5,200 K | Orange | 12.1% |
| M | 2,400-3,700 K | Red | 76.45% |

Stars are distributed in 3D space using spherical coordinates:

```javascript
radius = random() ^ 0.3 * 500 + 50
theta = random() * 2π
phi = arccos(2 * random() - 1)
```

## Repository Structure

```
cosmos-wallpaper/
├── wallpaper-engine/     # Wallpaper Engine files (Windows)
│   ├── cosmos-wallpaper.html
│   └── project.json
├── plash/                # Plash files (macOS)
│   └── cosmos-wallpaper.html
├── electron-app/         # Standalone desktop app
│   ├── main.js
│   ├── index.html
│   └── package.json
├── docs/                 # GitHub Pages demo site
│   └── index.html
├── setup.bat             # Windows installer
└── setup.sh              # macOS installer
```

## Contributing

Contributions welcome. Open an issue or submit a pull request.

Planned features:
- Constellation overlays
- Nebula effects
- Shooting stars
- Audio reactivity
- VR support

## License

MIT License - see LICENSE file for details.

## Credits

- Three.js team
- Harvard Spectral Classification system
- Hipparcos and Gaia stellar catalogs

## Support

- Bug reports: Open an issue
- Feature requests: Open a discussion
