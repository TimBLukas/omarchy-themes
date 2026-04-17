# Aurora Waybar - Installation & Usage Guide

## Files Included

- **waybar-config.jsonc** - Main configuration (modules, layout, behavior)
- **waybar-style.css** - Custom styling (colors, animations, effects)
- **waybar.css** - Simple color definitions (for backward compatibility)

## Installation

### Option 1: Manual Installation

1. **Copy configuration files:**

```bash
cp waybar-config.jsonc ~/.config/waybar/config.jsonc
cp waybar-style.css ~/.config/waybar/style.css
```

1. **Restart Waybar:**

```bash
killall waybar
waybar &
```

### Option 2: Symlink (Recommended)

This keeps your theme repo as the source:

```bash
ln -sf ~/path/to/aurora-nights/waybar-config.jsonc ~/.config/waybar/config.jsonc
ln -sf ~/path/to/aurora-nights/waybar-style.css ~/.config/waybar/style.css
```

### Option 3: Hyprland Auto-start

Add to your `~/.config/hypr/hyprland.conf`:

```conf
exec-once = waybar
```

## Customization

### Change Bar Position

Edit `waybar-config.jsonc`:

```json
"position": "top"    // or "bottom"
```

### Adjust Bar Height

```json
"height": 30    // Change to 40 or 50 for taller bar
```

### Add/Remove Modules

**Left section:**

```json
"modules-left": ["custom/launcher", "hyprland/workspaces", "hyprland/window"]
```

**Center section:**

```json
"modules-center": ["clock"]
```

**Right section:**

```json
"modules-right": ["cpu", "memory", "disk", "temperature", "pulseaudio", "network", "battery", "tray", "custom/power"]
```

Remove any module you don't want by deleting it from the array.

### Change Colors

Edit `waybar-style.css` at the top:

```css
@define-color accent #d08770; /* Change primary accent */
@define-color blue #5e81ac; /* Change blue accent */
@define-color green #a3be8c; /* Change green accent */
```

### Modify Time Format

Edit `waybar-config.jsonc`:

```json
"clock": {
    "format": " {:%H:%M}",           // 24-hour
    // OR
    "format": " {:%I:%M %p}",        // 12-hour with AM/PM
    // OR
    "format": " {:%H:%M:%S}",        // With seconds
}
```

### Change Icon Set

If icons don't display, install Nerd Fonts:

```bash
sudo pacman -S ttf-nerd-fonts-symbols-mono
# or
sudo apt install fonts-nerd-font
```

### Adjust Transparency

Edit `waybar-style.css`:

```css
window#waybar {
  background: alpha(@background, 0.85); /* 0.0 = transparent, 1.0 = opaque */
}
```

## Module Actions

### Click Actions

| Module         | Left Click           | Right Click |
| -------------- | -------------------- | ----------- |
| **Launcher**   | Open Walker          | -           |
| **Workspaces** | Switch workspace     | -           |
| **Clock**      | Toggle date format   | -           |
| **CPU**        | Open btop            | -           |
| **Memory**     | Open btop            | -           |
| **Disk**       | Open btop            | -           |
| **Volume**     | Open pavucontrol     | Mute/unmute |
| **Network**    | Open network manager | -           |
| **Power**      | Open wlogout         | -           |

### Scroll Actions

- **Volume**: Scroll to adjust (5% increments)
- **Calendar**: Navigate months

## Troubleshooting

### Waybar not starting?

```bash
# Check for errors
waybar -l debug

# Check if another instance is running
killall waybar
waybar &
```

### Icons not showing?

Install required fonts:

```bash
# Arch
sudo pacman -S ttf-font-awesome ttf-nerd-fonts-symbols

# Ubuntu/Debian
sudo apt install fonts-font-awesome fonts-nerd-font
```

### Modules not working?

**Battery module requires:**

```bash
# Check battery path
ls /sys/class/power_supply/
```

**Network module requires:**

- NetworkManager installed

**Audio module requires:**

- PulseAudio or PipeWire

### Wrong colors?

Make sure you're using the `waybar-style.css` file, not the old `waybar.css`.

## Notes

- **Launcher**: Configured for Walker. Change to `rofi` or `wofi` if needed
- **Power menu**: Uses `wlogout`. Install it or change to your preference
- **System monitor**: Clicks open `btop`. Change to `htop` if preferred
- **Terminal**: Configured to use `kitty`. Change to your terminal

## Style Features

- **Orange glow on hover** - All interactive elements
- **Smooth 0.3s transitions** - Fluid animations
- **Pulsing alerts** - Critical battery/temp warnings
- **Color-coded modules** - Each has a distinct color
- **Active workspace highlight** - Orange border + glow
- **Responsive design** - Adapts to screen size

## Advanced Customization

### Add Custom Modules

Example - Add a weather module:

```json
"custom/weather": {
    "exec": "curl wttr.in/?format=1",
    "interval": 3600,
    "format": "{}",
    "tooltip": false
}
```

Then add styling in `waybar-style.css`:

```css
#custom-weather {
  color: @blue;
  padding: 0 12px;
}
```

### Adjust Workspace Count

Edit persistent workspaces in `waybar-config.jsonc`:

```json
"persistent-workspaces": {
    "1": [],
    "2": [],
    "3": [],
    "4": [],
    "5": [],
    "6": [],   // Add more
    "7": [],
    "8": [],
    "9": [],
    "10": []
}
```

---

**For more help, check the official Waybar wiki:**
<https://github.com/Alexays/Waybar/wiki>
