# Cosmos Wallpaper - Electron App

A standalone desktop application that runs the Cosmos star visualization as a live wallpaper.

## Features

- 🌌 8,000+ realistic stars with proper spectral classification
- 🎨 Beautiful color-coded stellar types (O, B, A, F, G, K, M)
- 🔄 Smooth continuous rotation with subtle camera movement
- 💻 Optimized for ultrawide monitors (49-inch and larger)
- ⚡ Low resource usage with hardware acceleration
- 🖥️ Runs as desktop background window

## Installation

### Prerequisites
- Node.js 16 or higher
- npm (comes with Node.js)

### Setup

1. Install dependencies:
```bash
npm install
```

2. Run in development mode:
```bash
npm start
```

3. Build standalone app:
```bash
# Windows
npm run build-win

# macOS
npm run build-mac
```

The built app will be in the `dist/` folder.

## Usage

Once running, the app creates a window that sits below your normal windows, acting as an animated wallpaper.

**Controls:**
- The app runs automatically in the background
- Use the menu bar icon to show/hide the window
- Quit from the app menu (Cmd/Ctrl+Q)

## Customization

Edit `index.html` to customize:

```javascript
let rotationSpeed = 0.0001;  // Rotation speed
let starCount = 8000;         // Number of stars
let starSize = 1.5;           // Star size multiplier
```

### Recommended Settings for 49" Monitors:

- Star Count: 8000-10000
- Rotation Speed: 0.0001 (very subtle)
- Star Size: 1.5-2.0

## Performance

The app uses WebGL and hardware acceleration for smooth performance.

**If you experience lag:**
1. Reduce `starCount` to 5000
2. Lower your display resolution
3. Close other GPU-intensive applications
4. Update your graphics drivers

## Technical Details

- **Framework:** Electron 28
- **Rendering:** Three.js (WebGL)
- **Stars:** Procedurally generated with realistic stellar distribution
- **Physics:** Real 3D coordinate system with spherical distribution

## License

MIT
