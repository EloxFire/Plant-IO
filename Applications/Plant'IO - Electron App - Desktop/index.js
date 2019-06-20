
const {app, BrowserWindow} = require('electron')

app.on('ready', () => {
  // create main browser window
  mainWindow = new BrowserWindow({
      titleBarStyle: 'show',
      icon: 'assets/img/icon.png',
      frame: false,
      width: 1280,
      height: 720,
      show: false, // don't show the main window
      resizable: false,
      webPreferences: {
          nodeIntegration: true
      }
  });
  // create a new `splash`-Window
  splash = new BrowserWindow({width: 300, height: 450, icon:"assets/img/icon.png", transparent: false, frame: false, alwaysOnTop: true});
  splash.loadFile(`loader.html`);
  setTimeout(function () {
    mainWindow.loadFile(`index.html`);
  }, 1500);


  // if main window is ready to show, then destroy the splash window and show up the main window
  mainWindow.once('ready-to-show', () => {
    splash.destroy();
    mainWindow.show();
  });
  mainWindow.on('closed', () => {
    mainWindow = null;
  })


});
