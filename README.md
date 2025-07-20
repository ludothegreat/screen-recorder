# Simple Screen Recording on X11 with `ffmpeg` + `slop`

Lightweight, simple screen recording for X11 using `ffmpeg` and `slop`. It allows you to:

- Select an area of the screen to record (drag-to-select)
- Auto save the video with a timestamped filename
- Start/stop recording using i3 keybindings

---

## Requirements (Arch Linux)

Install the dependencies:

```bash
sudo pacman -S ffmpeg slop
```

## Install the Scripts

---

Clone the repository:

```bash
git clone https://github.com/ludothegreat/screen-recorder.git
```

Change to the `screen-recorder` directory:

```bash
cd screen-recorder
```

Copy the scripts to your preferred scripts directory (e.g., `~/scripts`) and make them executable:

```bash
mkdir -p ~/scripts
cp recordscreen.sh stopscreenrecord.sh ~/scripts/
chmod +x ~/scripts/recordscreen.sh ~/scripts/stopscreenrecord.sh
```

---

## i3 Keybindings (or adapt for your own window manager)

Edit your i3 config file (usually `~/.config/i3/config`) and add the following:

```bash
# Start screen recording
bindsym $mod+Shift+v exec ~/scripts/recordscreen.sh

# Stop screen recording
bindsym $mod+Shift+s exec ~/scripts/stopscreenrecord.sh
```

Reload i3 to apply the changes:

```bash
$mod+Shift+r
```

---
## Output

Recorded videos are saved in:

```
~/Videos/screencasts/
```

Filenames are automatically timestamped.

---

## To-Do (possible someday)

- [ ] Add `notify-send "Recording started"` and `"Recording stopped"` for visual feedback
- [ ] Add audio support (PulseAudio or PipeWire input)
- [ ] Display a red dot or indicator using `lemonbar`, `xeyes`, or a tray icon

---

## Notes

- Only works under X11 (not Wayland)
- Works great with i3, bspwm, Openbox, or any lightweight window manager but you'll need to create your own keybindings.
- Minimal resource usage — ideal for scripting and automation
