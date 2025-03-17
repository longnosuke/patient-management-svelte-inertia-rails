import { svelte } from '@sveltejs/vite-plugin-svelte'
import { defineConfig } from 'vite'
import ViteRails from "vite-plugin-rails"

export default defineConfig({
  plugins: [
    svelte(),
    ViteRails({
      envVars: { RAILS_ENV: "development" },
      envOptions: { defineOn: "import.meta.env" },
      fullReload: {
        additionalPaths: [],
      },
    }),
  ],
})
