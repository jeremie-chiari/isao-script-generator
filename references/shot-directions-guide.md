# Shot Directions & Camera Plan Guide

## Shot Types

| Shot Code | Description | When to Use | Duration |
|---|---|---|---|
| `[FACE CAM]` | Close-up face, direct eye contact | Concepts, transitions, tips, reactions | 15-30s |
| `[ÉCRAN LARGE]` | Full screen capture | Interface overview, demo start, code running | 30-45s max |
| `[ZOOM ÉCRAN]` | Zoomed screen on specific detail | Key code line, button, specific result | 10-20s |
| `[ÉCRAN + PiP]` | Screen + face cam picture-in-picture | Long demos to maintain human connection | 45-60s max |
| `[B-ROLL]` | Illustrative footage/visuals | Results, schemas, concept illustrations | 5-15s |

## 3-Minute Segment Shot Sequence

This is the standard shot rotation for any 3-minute segment:

```
0:00-0:30  → [FACE CAM] Introduction of the step/concept
0:30-1:00  → [ÉCRAN LARGE] Start of demo, show interface
1:00-1:15  → [ZOOM ÉCRAN] Close-up on key code/button
1:15-1:45  → [ÉCRAN + PiP] Continue demo with face visible
1:45-2:00  → [FACE CAM] Summary of what was just done
2:00-2:10  → [B-ROLL] Result illustration
2:10-2:40  → [ÉCRAN LARGE] Continue demo
2:40-3:00  → [FACE CAM] Transition to next step + tease
```

## Mandatory Rules

1. **Never stay on the same shot for more than 60 seconds**
2. **Every step change = return to face cam** (visual signal that something new begins)
3. **Every "wow" moment = cut to face cam** (show your reaction when code compiles, app launches, site deploys)
4. **Theory/explanation = face cam + supporting visuals** (never face cam alone for more than 30s — add schemas, animated text, screenshots)
5. **Face cam must ALWAYS be recording** during screen capture for editing flexibility

## Pre-Recording Checklist

- [ ] Face cam ON and recording (even during screen capture)
- [ ] Two angles if possible (tight face + wider bust/desk shot)
- [ ] Stable lighting on face (not dark or overexposed)
- [ ] Plan vocal reactions for wow moments ("Regardez ça !", "C'est fou")
- [ ] Script contains shot directions in brackets for every segment

## Asset Block per Segment

Every segment that shows a screen or visual must include an `<!-- ASSETS -->` block in the script. This enables unified production where filmmakers, editors, and AI asset creators work from the same document.

### When to Include

| Shot Type | Asset Block? | Typical Content |
|---|---|---|
| `[ÉCRAN LARGE]` | **Always** | Reference image of interface, animated video, zoom/highlight VFX |
| `[ÉCRAN + PiP]` | **Always** | Same as ÉCRAN + note PiP position |
| `[ZOOM ÉCRAN]` | **Often** | Detail shot image, zoom VFX |
| `[B-ROLL]` | **Always** | AI-generated image + video — primary use case |
| `[FACE CAM]` | **Only if overlay** | Only when graphic overlay, animated text, or B-roll insert is needed |

### Prompt Guidelines

**IMAGE prompts (Nano Banana 2)**:
- Write in French, descriptive and visual
- Include: subject, style, colors (use ISAO palette: cyan #00B2C2, anthracite #2D2D2D), framing, lighting, mood
- Be specific about what's visible on screen (UI elements, text, buttons)
- Avoid abstract concepts — describe what the eye sees
- Specify aspect ratio: 16:9 for video, 9:16 for short/reel

**VIDEO prompts (Seedance 2.0)**:
- Formula: `[Subject] + [Action] + [Camera] + [Scene] + [Style]` — 30 to 100 words max
- **One action verb per shot** — never stack multiple actions
- **One camera movement per shot** — no pan+zoom combos
- Source image must be min 1024px, framed like a "film still", simple lighting
- Leave breathing room around the subject (no extreme crops)
- Prompt must be consistent with the input image
- No negative prompts (Seedance ignores them)
- Max 2 characters per scene (face drift/warping beyond that)
- Don't mix contradictory styles
- Duration: 4-8s per clip, test at 3-5s first
- Use Fast mode for drafts, iterate one variable at a time
- Creativity slider at 0.3-0.4 for consistency

**MOTION prompts (Jitter.video)** — use instead of VIDEO when content is:
- Animated text, titles, lower thirds
- Graphic transitions between sections
- Animated schemas / infographics
- UI mockup animations (showing a flow)
- Branding elements (logo reveal, ISAO colors)
- Any "pure graphic" content without photo-realism

Jitter best practices:
- Structure: Hook > Introduction > Proof > CTA
- Organize timeline with named groups
- Never repeat the same animation (audience habituates)
- Subtle motion for calm moments, sharp for dynamic
- Export: MP4 or MOV, up to 4K
- Design in Figma → animate in Jitter (native plugin)

**Decision: VIDEO (Seedance) vs MOTION (Jitter)**:

| Content Type | Tool |
|---|---|
| Photo-realistic B-roll (landscape, object, scene) | Nano Banana 2 → Seedance 2.0 |
| Animated text, title, lower third | Jitter |
| Animated schema, infographic | Jitter |
| UI mockup in motion | Jitter |
| Real screenshot that animates | Seedance 2.0 (image source = screenshot) |
| Stylized graphic transition | Jitter |

**VFX notation**:
- Use standard editing vocabulary: ken burns, speed ramp, slide-in, fade, zoom, overlay
- Include percentages for zoom (e.g., "zoom 110% → 100%")
- Include durations for effects (e.g., "slide-in 0.5s")

**SON notation**:
- Distinguish punctual effects (whoosh, ding, impact, pop) from continuous ambiance (synth pads, background music)
- Note volume levels when critical (e.g., "très bas" for background)

## The "All-Screen" Problem

Even if content is fascinating, viewers eventually feel like they're watching a lecture or reading documentation. Their vision blurs, they lose emotional connection, they open another tab.

**Face cam serves 3 strategic functions:**
1. **Attention reset (Pattern Interrupt)** — Switching from screen to face forces the brain to "wake up"
2. **Authority** — People trust advice more when they see the expert's expressions and conviction
3. **Narration** — Screen = proof, Face cam = explanation and transition