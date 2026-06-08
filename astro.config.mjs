import { defineConfig } from 'astro/config';
import mdx from '@astrojs/mdx';
import sitemap from '@astrojs/sitemap';

export default defineConfig({
  site: 'https://advikj1604-cmyk.github.io',
  integrations: [mdx(), sitemap()],
});