#!/bin/bash

echo "============================================"
echo "  COSMOS WALLPAPER - SETUP (macOS)"
echo "============================================"
echo ""

# Check if Plash is installed
if ! open -Ra "Plash" 2>/dev/null; then
    echo "[!] Plash not found!"
    echo ""
    echo "Please install Plash from:"
    echo "  - Mac App Store (FREE)"
    echo "  - https://sindresorhus.com/plash"
    echo ""
    read -p "Press Enter to open Plash website..."
    open "https://sindresorhus.com/plash"
    exit 1
fi

echo "[+] Plash is installed!"
echo ""

# Get the wallpaper file path
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
WALLPAPER_FILE="$SCRIPT_DIR/plash/cosmos-wallpaper.html"

if [ ! -f "$WALLPAPER_FILE" ]; then
    echo "[!] Wallpaper file not found at: $WALLPAPER_FILE"
    exit 1
fi

echo "[+] Wallpaper file found!"
echo ""
echo "============================================"
echo "  SETUP COMPLETE!"
echo "============================================"
echo ""
echo "Next steps:"
echo "1. Open Plash (should be opening now...)"
echo "2. Click 'Add Website'"
echo "3. Select 'Local File'"
echo "4. Navigate to: $WALLPAPER_FILE"
echo "5. Right-click desktop → Change Wallpaper → Select Plash"
echo ""
echo "Wallpaper location:"
echo "$WALLPAPER_FILE"
echo ""

# Launch Plash
open -a "Plash"

read -p "Press Enter to continue..."
