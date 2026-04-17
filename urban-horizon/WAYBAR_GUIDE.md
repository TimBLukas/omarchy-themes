# Urban Horizon Waybar - Installation & Usage Guide

## Files

- `waybar-config.jsonc` - modules and behavior
- `waybar-style.css` - main styling
- `waybar.css` - compatibility color definitions

## Install

### Copy files

```bash
cp waybar-config.jsonc ~/.config/waybar/config.jsonc
cp waybar-style.css ~/.config/waybar/style.css
omarchy-restart-waybar
```

### Symlink files

```bash
ln -sf ~/path/to/urban-horizon/waybar-config.jsonc ~/.config/waybar/config.jsonc
ln -sf ~/path/to/urban-horizon/waybar-style.css ~/.config/waybar/style.css
omarchy-restart-waybar
```

## Core look

- Position: top
- Height: 30
- Rounded module cards
- Light base with neutral muted accents

## Quick customization

### Change colors

Edit `waybar-style.css`:

```css
@define-color accent #8a6f5c; /* primary accent */
@define-color blue #5f7888;   /* info accent */
@define-color green #7f9186;  /* success accent */
```

### Move bar

Edit `waybar-config.jsonc`:

```json
"position": "top"
```

### Change height

```json
"height": 30
```

### Tune transparency

```css
window#waybar {
  background: alpha(@background, 0.85);
}
```

## Modules

- Left: launcher, workspaces, active window
- Center: clock
- Right: cpu, memory, disk, temperature, volume, network, battery, tray, power

## Troubleshooting

```bash
waybar -l debug
omarchy-restart-waybar
```

If icons are missing, install Nerd Font symbols and restart Waybar.
