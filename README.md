# Quartz v4

> “[One] who works with the door open gets all kinds of interruptions, but [they] also occasionally gets clues as to what the world is and what might be important.” — Richard Hamming

Quartz is a set of tools that helps you publish your [digital garden](https://jzhao.xyz/posts/networked-thought) and notes as a website for free.

🔗 Read the documentation and get started: https://quartz.jzhao.xyz/

[Join the Discord Community](https://discord.gg/cRFFHYye7t)

## Sponsors

<p align="center">
  <a href="https://github.com/sponsors/jackyzha0">
    <img src="https://cdn.jsdelivr.net/gh/jackyzha0/jackyzha0/sponsorkit/sponsors.svg" />
  </a>
</p>

## GitHub Pages Deployment

- Final Pages URL: `https://850011822.github.io/quartz`
- Deployment workflow: `.github/workflows/deploy-pages.yml`
- Publish branch: `v4`
- Quartz `baseUrl`: `850011822.github.io/quartz`

### Enable GitHub Pages

If GitHub Pages is not enabled yet, open the GitHub repository `850011822/quartz`, then go to:

`Settings` -> `Pages`

Under `Build and deployment`, set `Source` to `GitHub Actions`.

### Auto Deploy Flow

Every push to the `v4` branch triggers the GitHub Actions workflow that:

1. installs dependencies with `npm ci`
2. builds the site with `npx quartz build`
3. uploads the `public/` directory as the Pages artifact
4. deploys the artifact to GitHub Pages

This repository is configured for GitHub Project Pages, so the site is served from `/quartz` instead of the root domain.
