import {defineConfig} from 'vite'
import react from '@vitejs/plugin-react'

export default defineConfig({
    plugins: [react()],
    server: {
        host: '0.0.0.0', // Required to access from outside the container
        port: 3000,
        strictPort: true, // Fails if port is already in use
        watch: {
            usePolling: true // Better performance for mounted volumes in Docker
        },
        proxy: {
            '/api': {
                target: process.env.VITE_API_URL || 'http://backend:5000',
                changeOrigin: true,
                rewrite: (path) => path.replace(/^\/api/, '')
            }
        }
    }
})
