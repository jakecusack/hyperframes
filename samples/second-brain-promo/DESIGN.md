# Second Brain Promo — Design

Style: **Soft Signal** (Stefan Sagmeister lineage). Warm, intimate, personal — the feeling of a well-worn notebook on a sunlit desk.

## Style Prompt

Cream paper canvas with a single warm amber accent. Type is humanist serif at body sizes and a delicate italic serif for the tagline. Nothing snaps or slams. Every entrance drifts on `sine.inOut` or `power1.out`. The book cover is the only hard-edged object in the frame, treated like a held object rather than a flat render — subtle shadow, slight lift on entry.

## Colors

- `#FFF8EC` — canvas (cream paper)
- `#2B2620` — ink (primary text)
- `#F5A623` — amber (accent: underlines, CTA, the word that matters)
- `#C4A3A3` — dusty rose (secondary text, dividers)
- `#8FAF8C` — sage (check marks on benefit bullets)

## Typography

- Headlines and cover title: **Fraunces** (humanist serif, soft optical grade)
- Tagline: **Fraunces Italic**
- Body, bullets, CTA: **Inter** (clean humanist sans for rhythm contrast)

## Motion

- Easing: `sine.inOut`, `power1.out`, `power2.out`. No `expo`, no `back.out`, no elastic.
- Durations: 0.6–1.1s for entrances. Holds of 1.5–2.5s between beats.
- Transitions between scenes: soft cross-fade (CSS opacity), no shader glitches.

## What NOT to Do

- No dark backgrounds — this book is about clarity.
- No hard cuts or snap-in motion — breaks the intimacy.
- No saturated reds/blues — stay in the warm earth family.
- No ALL CAPS headlines (undermines the personal tone). CTA button is the only exception, and even then: small caps, wide tracking.
- No more than one amber element per frame — the accent is a single note, not a chord.
