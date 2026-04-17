# AI Second Brain — 15s book promo

Demo composition promoting _Build Your AI Second Brain — A Complete Beginner's Guide_ by Jake Cusack (Deepify Academy). Branded in Deepify navy + sky blue.

## Required asset

Save the book cover as `cover.jpg` in this folder (next to `index.html`). The composition expects a 2:3 portrait image — anything close (e.g. the Amazon cover) works.

```
samples/second-brain-promo/
├── index.html
├── cover.jpg       ← you provide
├── DESIGN.md
└── README.md
```

## Preview

From the repo root:

```bash
bun run packages/cli/src/cli.ts preview samples/second-brain-promo
```

## Render

```bash
bun run packages/cli/src/cli.ts render samples/second-brain-promo --output second-brain-promo.mp4
```

## Optional: music

Drop a 15-second loop at `./music.mp3` and add this just before `</body>`:

```html
<audio
  id="bg-music"
  data-start="0"
  data-duration="15"
  data-track-index="5"
  data-volume="0.45"
  src="music.mp3"
></audio>
```

Keep `data-volume` around `0.4–0.5` so it sits under any future VO.

## Customize

- **Tagline / benefits / CTA** — edit the text directly in the scene divs.
- **Palette and motion** — see `DESIGN.md`.
