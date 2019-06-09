const {remote} = require('electron')

 document.getElementById('close').addEventListener('click', closeWindow);
 document.getElementById('mini').addEventListener('click', minimizeWindow);

function closeWindow() {
  var window = remote.getCurrentWindow();
  window.close();
}

function minimizeWindow() {
  var window = remote.getCurrentWindow();
  window.minimize();
}
