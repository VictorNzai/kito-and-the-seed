# Kito and the Seed

5-minute Blender animation (24 fps, 7200 frames, 1920x1080, Eevee, Blender 5.2). No dialogue.
Theme: AI data centres and water use.

## Get the project
    git lfs install
    git clone <repo-url>
Open `Kito_and_the_Seed.blend` in Blender 5.2. Keep `robot_soundtrack.wav` next to it.

## Render in parts (one part per person)
Run in a terminal inside the project folder:

| Part | Frames | Time in film | Who |
|---|---|---|---|
| 1 | 1 - 1200 | 0:00 - 0:50 | |
| 2 | 1201 - 2400 | 0:50 - 1:40 | |
| 3 | 2401 - 3600 | 1:40 - 2:30 | |
| 4 | 3601 - 4800 | 2:30 - 3:20 | |
| 5 | 4801 - 6000 | 3:20 - 4:10 | |
| 6 | 6001 - 7200 | 4:10 - 5:00 | |

    render_part.bat 1 1 1200
    render_part.bat 2 1201 2400
    (and so on)

Frames land in `renders\partN\f_####.png`. Do not commit them (too big).
Send your part's folder to whoever joins the video (zip or shared drive).

## Join the video
Put all PNGs in `renders\all\` and run `make_video.bat`.

## Working on the scene
- One person edits the .blend at a time. Pull first, edit, save, commit, push, and tell the group.
- Do not both edit the same part of the scene: Blender files cannot be merged.
- Everything in the scene comes from BlenderKit (free assets) or is built in Blender.
- Always Ctrl+S before closing Blender.
