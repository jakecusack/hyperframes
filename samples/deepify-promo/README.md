# Deepify Academy — Book promo videos

Reel-format (1080×1920) video compositions for Deepify Academy e-books. Each book has three variations using different storytelling templates, all locked to the Deepify navy + sky-blue brand.

## Books

| Slug                       | Title                                    |
| -------------------------- | ---------------------------------------- |
| `book-3a-second-brain`     | Build Your AI Second Brain (Book 3a)     |
| `book-3b-second-brain-201` | Build Your AI Second Brain 201 (Book 3b) |
| `book-voice-agent`         | Build Your Own AI Agent                  |
| `book-local-ai`            | Local AI Infrastructure                  |

## Variations (per book)

| Slug                  | What it does                                                                  |
| --------------------- | ----------------------------------------------------------------------------- |
| `01-hero-cover`       | Cover drops in as the anchor, then tagline → benefits → CTA                   |
| `02-kinetic-type`     | Big animated type for the first ~10s, cover revealed at the end as the payoff |
| `03-problem-solution` | Open on the pain ("Buried in notes?"), cover lands as the answer at ~6s       |

See `VARIATIONS.md` for the full menu (10 templates total — request any of the others and I'll add them).
See `_brand/DESIGN.md` for the palette, typography, and motion rules.

## Setup (one-time)

1. Drop cover images into `_assets/` with these filenames:
   - `book-3a.png` — _Build Your AI Second Brain_
   - `book-3b.png` — _Build Your AI Second Brain 201_
   - `voice-agent.png` — _Build Your Own AI Agent_
   - `local-ai.png` — _Local AI Infrastructure_

2. Run the distribution script from the repo root:

   ```bash
   bash samples/deepify-promo/setup.sh
   ```

   This copies each cover into the three variation folders for its book.

3. (Optional) Drop a 15-second ambient loop into each variation folder as `music.mp3` and add the audio tag (see individual READMEs).

## Preview a specific variation

```bash
bun run packages/cli/src/cli.ts preview samples/deepify-promo/book-3a-second-brain/01-hero-cover
```

## Render

```bash
bun run packages/cli/src/cli.ts render samples/deepify-promo/book-3a-second-brain/01-hero-cover \
  --output renders/book-3a-hero.mp4
```

## Render all 12 at once

From the repo root:

```bash
for book in book-3a-second-brain book-3b-second-brain-201 book-voice-agent book-local-ai; do
  for variant in 01-hero-cover 02-kinetic-type 03-problem-solution; do
    bun run packages/cli/src/cli.ts render "samples/deepify-promo/$book/$variant" \
      --output "renders/$book-$variant.mp4" --quality standard
  done
done
```

Each render takes ~30-60s at standard quality. 12 × ~45s ≈ 9 minutes for the full set.
