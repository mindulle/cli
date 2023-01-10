import { defineConfig } from "vite";

export default defineConfig({
  build: {
    lib: {
      entry: "./lib/cli.ts",
      name: "CLI",
      fileName: "cli",
    },
  },
});
