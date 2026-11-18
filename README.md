# Kito and the Seed

A 5-minute, dialogue-free Blender animation about AI data centres and water use.
A small yellow maintenance robot, Kito, finds a seed and gives it the last of the water.

- Blender 5.2, Eevee renderer
- 24 fps, 7200 frames (5 minutes), 1920x1080
- Project file: `Kito_and_the_Seed.blend`
- Soundtrack: `robot_soundtrack.wav` (keep it in the same folder as the .blend)

---

## 1. Install (once)
Rendering REQUIRES Blender. Only Blender can turn the project file into frames, so everyone who renders must install it.
Joining the video does not need Blender, only ffmpeg.

1. **Blender 5.2** from blender.org (required to render or edit)
2. **Git** from git-scm.com
3. **Git LFS** from git-lfs.com
4. **ffmpeg** (only for the person who joins the video, see section 5)

## 2. Get the project (once)
Open a terminal where you want the folder, then run:

    git lfs install
    git clone https://github.com/VictorNzai/kito-and-the-seed.git
    cd kito-and-the-seed

The two big files (the .blend and the .wav) download through Git LFS. This can take a few minutes.
Before every work session run `git pull` to get the latest version.

## 3. Test that your computer can render
Before a long render, test ONE frame. In the project folder run:

    "C:\Program Files\Blender Foundation\Blender 5.2\blender.exe" -b Kito_and_the_Seed.blend -o renders\test\f_#### -f 1

- It should create `renders\test\f_0001.png`. Open it and check it looks right (colours, no pink or black).
- Note how long it took. Multiply by 1200 to estimate your part.
- If Blender is installed somewhere else, edit the `BLENDER=` line at the top of `render_part.bat` to match.

## 4. Render your part
Each person renders ONE part. Write your name in the table.

| Part | Frames | Time in film | Name | Done |
|---|---|---|---|---|
| 1 | 1 - 1200 | 0:00 - 0:50 | | |
| 2 | 1201 - 2400 | 0:50 - 1:40 | | |
| 3 | 2401 - 3600 | 1:40 - 2:30 | | |
| 4 | 3601 - 4800 | 2:30 - 3:20 | | |
| 5 | 4801 - 6000 | 3:20 - 4:10 | | |
| 6 | 6001 - 7200 | 4:10 - 5:00 | | |

Open a terminal in the project folder and run the line for your part:

    render_part.bat 1 1 1200
    render_part.bat 2 1201 2400
    render_part.bat 3 2401 3600
    render_part.bat 4 3601 4800
    render_part.bat 5 4801 6000
    render_part.bat 6 6001 7200

(The numbers are: part number, first frame, last frame.)

What to expect:
- Frames are saved as `renders\partN\f_0001.png`, `f_0002.png`, and so on. Frame numbers match the whole film, so part 2 starts at `f_1201.png`.
- The window prints one line per frame. Leave it open until it stops.
- Do not use the laptop for heavy work while rendering.
- If it stops (power cut, crash), run the same line again. It re-renders from the first frame of your part. To continue, set the START number to the last finished frame + 1, for example `render_part.bat 2 1650 2400`.
- When finished, check that your folder has the right number of PNGs (1200 per part) and zip the `renders\partN` folder.
- Send the zip to the person joining the video (shared drive or WhatsApp). Do NOT commit renders to GitHub (they are ignored on purpose, they are too big).

## 5. Join everything into one video (one person only)
1. Install ffmpeg (ffmpeg.org, add it to PATH). Check by running `ffmpeg -version`.
2. Make a folder `renders\all` inside the project folder.
3. Unzip every part and copy ALL the PNGs into `renders\all`. You should end with 7200 files, `f_0001.png` to `f_7200.png`. Nothing should be missing or doubled.
4. In the project folder run:

       make_video.bat

5. You get `Kito_final.mp4` (1080p, 24 fps, soundtrack included, 5 minutes).
6. Play it from start to end. If a part is missing, the video will stop or jump, so re-render that part.

## 6. Working on the scene
- Only ONE person edits the .blend at a time. Blender files cannot be merged.
- Pull first (`git pull`), edit, press Ctrl+S, then:

      git add .
      git commit -m "what you changed"
      git push

  Then tell the group, so everyone pulls again before rendering.
- Do not render while someone is still changing the scene. Frames from different versions will not match.
- Everything added to the scene should come from BlenderKit (free assets) or be built in Blender.
- Always press Ctrl+S before closing Blender.

## 7. Viewing in Blender
- Open `Kito_and_the_Seed.blend`. Press Space to play.
- For 24 fps playback: Playback menu > Sync > Frame Dropping.
- Numpad 0 shows the active camera. The film cuts between cameras automatically.

## Problems
- "Blender not found": fix the path in `render_part.bat`.
- Pink or black frames: update your graphics drivers, then run the one-frame test again.
- Missing sound in Blender: the .wav must sit next to the .blend.
- `git push` fails on big files: run `git lfs install` and try again.

---

## 8. Getting help from AI (Claude Code)
If you get stuck, you can ask an AI assistant to help you run this project. Claude Code works well because it can read this README and run the commands for you.

### Option A: ask without any setup
Open claude.ai (or any AI chat) and paste the starter prompt below. Paste any error message you see, or attach a screenshot.

### Option B: Claude Code with Blender connected (optional, advanced)
This lets the AI see and control your open Blender. You do NOT need this to render.

1. Install Claude Code (see docs.claude.com for the current install steps).
2. Install `uv` (a Python tool) from docs.astral.sh/uv.
3. Add the Blender MCP server by running this in a terminal:

       claude mcp add blender -- uvx blender-mcp

4. In Blender: Edit > Preferences > Add-ons > install the "Blender MCP" add-on (`addon.py` from the blender-mcp project on GitHub: github.com/ahujasid/blender-mcp) and tick it on.
5. In Blender press N in the 3D view, open the **BlenderMCP** tab and click **Connect to Claude**.
6. Start Claude Code in the project folder (`claude`) and use the starter prompt below.

Note: this is a community tool and the steps can change. If something does not match, check that project's page on GitHub, or ask the AI to help you set it up.

### Starter prompt (copy and paste this)

    I am on a student team making a 5-minute Blender animation called "Kito and the Seed".
    The project is in this folder. Please read README.md first, then help me.
    Project facts: Blender 5.2, Eevee, 24 fps, 7200 frames, 1920x1080.
    Rendering is done in parts with render_part.bat (render_part.bat PART START END).
    The soundtrack is robot_soundtrack.wav and must sit next to the .blend file.
    My part number is: ___ (frames ___ to ___).
    What I need help with: ___
    Please explain in short, simple steps, one step at a time, and ask me to
    paste any error messages. Do not change the .blend file unless I ask you to.
    Do not push anything to GitHub without asking me.

### Good things to ask the AI
- "My render stopped at frame ___, how do I continue?"
- "The test frame comes out pink/black/empty, why?"
- "git push says the file is too large, what do I do?"
- "How do I check that I have all 7200 frames before joining?"
- "How do I make the render faster on my laptop?"
