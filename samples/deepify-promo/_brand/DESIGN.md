# Deepify Academy — Brand Design System

Matches the official Deepify brand: near-black canvas, cyan primary accent, Space Grotesk for display type. Every composition in `samples/deepify-promo/` inherits these rules.

## Identity

- **Deepify Academy** — publisher / brand
- **Mood:** dark, technical, neon-accented. Developer-tool energy.
- **Do NOT:** introduce pastel tones, light backgrounds, or "friendly startup" motifs. The aesthetic is closer to a terminal than a bookshop.

## Colors

### Backgrounds

| Token          | Hex       | Role                             |
| -------------- | --------- | -------------------------------- |
| `--canvas`     | `#0A0E1A` | Primary background (near-black)  |
| `--canvas-alt` | `#111827` | Alt background (subtle gradient) |
| `--card`       | `#1F2937` | Card / code-block surface        |
| `--website-bg` | `#000814` | Website background (deepest)     |

### Accents

| Token        | Hex       | Role                                        |
| ------------ | --------- | ------------------------------------------- |
| `--accent`   | `#00D4FF` | Primary (cyan) — the word that matters      |
| `--accent-2` | `#7B61FF` | Secondary (purple) — sparingly, for variety |
| `--accent-3` | `#00FF88` | Tertiary (green) — success / checkmarks     |

**Rule:** one primary-accent (`--accent`) element per frame, maximum. You may add ONE secondary (`--accent-2` or `--accent-3`) for a separate semantic role (e.g., green check on a benefit while cyan is on the headline word).

### Text

| Token     | Hex       | Role                               |
| --------- | --------- | ---------------------------------- |
| `--text`  | `#E8ECF4` | Primary text (soft off-white)      |
| `--muted` | `#9CA3AF` | Secondary text, metadata, dividers |

### Social accents (when platform-targeted)

- X: `#1DA1F2` · TikTok: `#FF0050` · YouTube: `#FF0000` · Instagram: `#E1306C` · LinkedIn: `#0077B5`

Use these only when a video explicitly targets one platform (e.g., a TikTok-only cut can adopt TikTok pink as a secondary accent). Default is cyan.

## Typography

| Token    | Family               | Weight  | Usage                                |
| -------- | -------------------- | ------- | ------------------------------------ |
| display  | Space Grotesk, Inter | 700-800 | Big titles, kinetic words, CTA hero  |
| headline | Inter Tight, Inter   | 700-800 | Mid-scale headlines, tagline         |
| body     | Inter                | 400-500 | Author, description, metadata        |
| kicker   | Inter                | 500     | Uppercase, 0.28-0.32em track         |
| code     | JetBrains Mono       | 400-500 | Any monospace/code moment (reserved) |

Minimums on dark canvas: 22px body, 60px+ display, 4.5:1 contrast (off-white on near-black passes easily).

## Motion

- **Eases:** `power3.out`, `expo.out`, `power2.out`, `power2.inOut`
- **Forbidden:** `back.out`, `elastic`, `bounce` — undermines the precision
- **Durations:** 0.5-0.8s entrances, 0.4-1.0s holds, 0.5s scene crossfades
- **First motion:** offset 0.1-0.3s, never at t=0

## Scene transitions

Cross-fade 0.5s. No shader glitches, no whip pans.

## Logo usage

The Deepify Academy logo (`logo.png` in each project, distributed by `setup.sh` from `_assets/deepify-academy-400.png`) appears in the CTA scene above the button. Minimum size 120px tall, always on near-black canvas, never on a filled accent field.

## Per-variation tone overlay

- **Hero Cover** — straightforward. Cover is the hero.
- **Kinetic Type** — punchy, higher energy. Title is the hero. Tight 0.3-0.5s beats.
- **Problem → Solution** — empathetic lead, answer reveal. Slower first scene, accelerate once cover lands.

## What NOT to do

- No light backgrounds — if you need contrast, go darker, not lighter
- No warm earth tones (contradicts the neon-cyan identity)
- No serif type (book is technical, not literary)
- No more than one primary-cyan element per frame
- No `back.out` / `elastic` / `bounce` eases
- Don't stretch the cover — maintain portrait aspect ratio
- Don't put text over the middle of the cover image
- No more than 4 lines of text in a single frame
- Don't use the purple or green accent unless there's a specific semantic reason
