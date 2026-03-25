# Editing & Production Checklist

## Pre-Edit Verification (Every Video)

- [ ] Step roadmap visual appears within the first 30 seconds
- [ ] Following steps are blurred/locked and reveal progressively
- [ ] Step counter visible (e.g., "2/5") at every transition
- [ ] No single shot lasts more than 60 seconds without a change
- [ ] Pattern interrupt (graphic, sound, shot change) every 30-45 seconds
- [ ] Step transitions contain a tease of the next step
- [ ] Face cam used at every step change and every "wow" moment
- [ ] Final result shown with "delayed reveal" micro-tension
- [ ] Last 60 seconds follow the retention loop structure
- [ ] A bonus or tip is given in the last 30 seconds
- [ ] End screen with suggested video appears while still speaking

## Pattern Interrupt Schedule

| Interval | Type | Examples |
|---|---|---|
| Every 30s | Shot change | Screen → face cam or reverse |
| Every 45s | Graphic element | Animated text, arrow, code highlight, animated emoji |
| Every 60s | Sound break | Background music change, whoosh, pop, ding |
| Every 90s | Format break | B-roll insert, animated schema, timelapse, split screen |

## Roadmap Visual Variants

| Variant | Description | Best For |
|---|---|---|
| Progressive blur | Steps written but blurred, revealed as reached | Step-by-step tutorials |
| Padlock | Each step has a lock that opens when reached | "Ultimate guide" videos |
| Progress bar | Bar at bottom advancing with each step | Short videos (5-7 min) |
| Animated checklist | Steps check off with satisfying animation | "X things to know" videos |

## Tension Techniques

### 1. Countdown Visual
Display a counter that decrements (e.g., "3/5" in top-right corner).

### 2. Teaser Cut
Before transitioning to the next step, flash 1-2 seconds of that step's result, then cut back to face cam saying "On y va."

### 3. Value Stack
After each completed step, show a cumulative recap:
```
After step 1: ✅ Installation OK
After step 2: ✅ Installation OK → ✅ Configuration OK
After step 3: ✅ Installation OK → ✅ Configuration OK → ✅ First project OK
```

### 4. Cliff Before Break
Before any natural exit point, place a visual cliffhanger:
- Show the beginning of a result without finishing
- Cut to face cam: "Attendez de voir ce qui se passe quand on lance ça…"
- Then continue

### 5. Delayed Reveal
When showing an impressive visual result, DON'T show it immediately:
```
[SCREEN] Terminal: "Deploying..."
[FACE CAM] "Et là... on croise les doigts..."
[SCREEN] Terminal: "✅ Deployed"
[FACE CAM] Reaction + "Boom ! Regardez ça."
[SCREEN] The site appears
```

## Last 60 Seconds of Content

```
-60s: Last step in progress — editing rhythm ACCELERATES (faster cuts)
-45s: FINAL REVEAL — most visually satisfying moment of the video
-30s: FACE CAM — "Now that you know this, there's one thing nobody shows..."
-20s: BONUS/TIP — deliver the promised nugget
```

## Bridge Communauté ISAO (3 minutes — after bonus)

```
Phase 1 (30s):  [FACE CAM] Transition naturelle from content to community
Phase 2 (60s):  [ÉCRAN + PiP] Live Skool walkthrough (feed, classroom, lives, posts)
Phase 3 (45s):  [FACE CAM] Why + Price (5-7% solo vs 65% accompanied, 9€/mois, cancel anytime)
Phase 4 (45s):  [FACE CAM → END SCREEN] CTA + bridge to next video
```

### Bridge Checklist
- [ ] Transition links naturally to video content (no abrupt "pitch" feeling)
- [ ] Skool screencast is REAL and shows recent activity (< 1 week old)
- [ ] Member count and live schedule are up to date
- [ ] Price stated once clearly (9€/mois), not repeated
- [ ] "Annulable en un clic" mentioned
- [ ] Free YouTube alternative mentioned (anti-guru transparency)
- [ ] No urgency/scarcity language used
- [ ] End screen appears 5-10s before video ends, while still speaking
- [ ] Chapter added in packaging: "[TIMECODE] - La communauté ISAO (Skool)"

## AI Asset Verification

- [ ] Every [ÉCRAN], [ZOOM], [B-ROLL], [ÉCRAN + PiP] segment has an `<!-- ASSETS -->` block
- [ ] All IMAGE prompts are detailed enough for Nano Banana 2 (style, colors, framing)
- [ ] All VIDEO prompts reference the generated image and describe animation (duration, movement)
- [ ] All VFX notes use standard editing vocabulary with durations
- [ ] All SON notes distinguish punctual effects from continuous ambiance
- [ ] Asset prompts are consistent with ISAO palette (cyan #00B2C2, anthracite #2D2D2D)