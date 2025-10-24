const { app, BrowserWindow, screen, Menu } = require('electron');
const path = require('path');

let mainWindow;

function createWindow() {
  // Get primary display dimensions
  const primaryDisplay = screen.getPrimaryDisplay();
  const { width, height } = primaryDisplay.workAreaSize;

  mainWindow = new BrowserWindow({
    width: width,
    height: height,
    x: 0,
    y: 0,
    frame: false, // No window frame
    transparent: false,
    alwaysOnTop: false,
    skipTaskbar: true, // Don't show in taskbar
    type: 'desktop', // Set as desktop window (Windows)
    webPreferences: {
      nodeIntegration: false,
      contextIsolation: true,
      backgroundThrottling: false // Keep animations running
    }
  });

  mainWindow.loadFile('index.html');

  // Hide menu bar
  mainWindow.setMenuBarVisibility(false);

  // Set below other windows on Windows
  if (process.platform === 'win32') {
    mainWindow.setAlwaysOnTop(false);
  }

  // On macOS, set window level to be behind normal windows
  if (process.platform === 'darwin') {
    mainWindow.setWindowLevel('desktop');
  }

  // Prevent window from being closed, hide instead
  mainWindow.on('close', (event) => {
    event.preventDefault();
    mainWindow.hide();
  });
}

app.whenReady().then(() => {
  createWindow();

  // Create a simple menu for quitting
  const menu = Menu.buildFromTemplate([
    {
      label: 'Cosmos Wallpaper',
      submenu: [
        { 
          label: 'Show Window',
          click: () => mainWindow.show()
        },
        { 
          label: 'Hide Window',
          click: () => mainWindow.hide()
        },
        { type: 'separator' },
        { 
          label: 'Quit',
          accelerator: 'CmdOrCtrl+Q',
          click: () => {
            app.exit(0);
          }
        }
      ]
    }
  ]);

  Menu.setApplicationMenu(menu);

  app.on('activate', () => {
    if (BrowserWindow.getAllWindows().length === 0) {
      createWindow();
    } else {
      mainWindow.show();
    }
  });
});

app.on('window-all-closed', () => {
  // Prevent app from quitting when window is closed
  // User must quit from menu or tray
});

// Quit when all windows are closed on non-macOS platforms
if (process.platform !== 'darwin') {
  app.on('before-quit', () => {
    mainWindow.destroy();
  });
}
