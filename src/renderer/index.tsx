import { createRoot } from 'react-dom/client';
import App from './App';

const container = document.getElementById('root')!;
const root = createRoot(container);
root.render(<App />);

// call main in order to track-active-windows
window.electron.ipcRenderer.sendMessage('track-active-windows');
