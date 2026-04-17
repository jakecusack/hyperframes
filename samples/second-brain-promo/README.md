# Second Brain — 15s book promo

Demo composition promoting _Build Your Second Brain for Beginners_.

## Preview

From the repo root:

```bash
npx tsx packages/cli/src/cli.ts preview samples/second-brain-promo
```

## Render

```bash
npx tsx packages/cli/src/cli.ts render samples/second-brain-promo --output second-brain-promo.mp4
```

## Swap in real assets

1. **Cover image** — replace the `.cover` styled div in `index.html` with `<img src="cover.jpg" class="cover" alt="...">` once you have the real art. Drop the image next to `index.html`.
2. **Music** — drop a 15-second loop at `./music.mp3` (soft acoustic/ambient) and add the audio clip just before `</body>`:
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
3. **Tagline / benefits** — edit the text directly in the scene divs.

See `DESIGN.md` for the palette, typography, and motion rules this composition follows (Soft Signal style).
