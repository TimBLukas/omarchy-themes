# Aurora Theme - Complete Color Reference

## Base Color Palette

| Color Name     | Hex Code  | RGB              | Usage                |
| -------------- | --------- | ---------------- | -------------------- |
| **Background** | `#1a1f2e` | rgb(26,31,46)    | Main dark background |
| **Foreground** | `#e5e9f0` | rgb(229,233,240) | Primary text color   |
| **Black**      | `#2e3440` | rgb(46,52,64)    | Dark UI elements     |

## Terminal Color Scheme

### Normal Colors

| Color   | Hex Code  | RGB              | Usage              |
| ------- | --------- | ---------------- | ------------------ |
| Black   | `#2e3440` | rgb(46,52,64)    | Dark backgrounds   |
| Red     | `#d08770` | rgb(208,135,112) | Errors/warnings    |
| Green   | `#a3be8c` | rgb(163,190,140) | Success states     |
| Yellow  | `#ebcb8b` | rgb(235,203,139) | Highlights         |
| Blue    | `#5e81ac` | rgb(94,129,172)  | Functions/info     |
| Magenta | `#b48ead` | rgb(180,142,173) | Keywords           |
| Cyan    | `#88c0d0` | rgb(136,192,208) | **PRIMARY ACCENT** |
| White   | `#d8dee9` | rgb(216,222,233) | Normal text        |

### Bright Colors

| Color   | Hex Code  | RGB              | Usage             |
| ------- | --------- | ---------------- | ----------------- |
| Black   | `#4c566a` | rgb(76,86,106)   | Borders/UI        |
| Red     | `#d98770` | rgb(217,135,112) | Bright errors     |
| Green   | `#b8d4a8` | rgb(184,212,168) | Bright success    |
| Yellow  | `#f0d99c` | rgb(240,217,156) | Bright highlights |
| Blue    | `#81a1c1` | rgb(129,161,193) | Bright info       |
| Magenta | `#c898be` | rgb(200,152,190) | Bright keywords   |
| Cyan    | `#8dd0e0` | rgb(141,208,224) | **BRIGHT ACCENT** |
| White   | `#eceff4` | rgb(236,239,244) | Bright text       |

## UI Accent Colors

| Purpose         | Hex Code  | Color Name      |
| --------------- | --------- | --------------- |
| Primary Accent  | `#88c0d0` | Aurora Teal     |
| Active Border   | `#88c0d0` | Aurora Teal     |
| Inactive Border | `#4c566a` | Storm Grey      |
| Hover State     | `#5e81ac` | Sky Blue        |
| Selection       | `#88c0d0` | Aurora Teal     |
| Orange Accent   | `#d08770` | Campfire Orange |
| Purple Accent   | `#b48ead` | Twilight Purple |
| Green Accent    | `#a3be8c` | Forest Moss     |

## Visual Settings

### Window Properties

- **Border Size:** 2px
- **Border Radius:** 10px (soft rounded)
- **Active Opacity:** 0.88 (88%)
- **Inactive Opacity:** 0.82 (82%)
- **Gaps (Inner):** 5px
- **Gaps (Outer):** 6px

### Shadows

- **Enabled:** Yes
- **Range:** 20px
- **Power:** 3
- **Color (Active):** `rgba(136, 192, 208, 0.15)` - Aurora glow
- **Color (Inactive):** `rgba(46, 52, 64, 0.3)` - Dark shadow

### Blur Effects

- **Enabled:** Yes
- **Size:** 7
- **Passes:** 4
- **Contrast:** 1.1
- **Brightness:** 1.15
- **Vibrancy:** 0.25

### Animations

- **Style:** Smooth & slow (elegant, dreamy)
- **Speed:** 2.2 - 3.5 seconds
- **Bezier Curves:**
  - ease: `0.40, 0.00, 0.20, 1.00`
  - easeOut: `0.15, 0.10, 0.20, 1.00`
  - easeIn: `0.50, 0.00, 0.70, 0.20`
  - float: `0.20, 0.08, 0.12, 1.00`

## Updated Files

All configuration files have been updated with Aurora theme colors:

1. ✅ **hyprland.conf** - Window manager config
2. ✅ **waybar.css** - Status bar
3. ✅ **walker.css** - App launcher
4. ✅ **kitty.conf** - Terminal
5. ✅ **alacritty.toml** - Terminal
6. ✅ **ghostty.conf** - Terminal
7. ✅ **gtk.css** - GTK theme
8. ✅ **mako.ini** - Notifications
9. ✅ **hyprlock.conf** - Lock screen
10. ✅ **colors.fish** - Fish shell
11. ✅ **btop.theme** - System monitor
12. ✅ **cava_theme** - Audio visualizer
13. ✅ **vscode_colors.json** - VSCode
14. ✅ **neovim.lua** - Neovim/LazyVim
15. ✅ **chromium.theme** - Browser
16. ✅ **superfile.toml** - File manager
17. ✅ **wofi.css** - App launcher
18. ✅ **swayosd.css** - On-screen display
19. ✅ **nwg-dock.css** - Dock
20. ✅ **vencord.theme.css** - Discord
21. ✅ **aether.override.css** - Aether theme override
22. ✅ **warp.yaml** - Warp terminal
23. ✅ **vicinae.toml** - Vicinae
24. ✅ **fzf.fish** - Fuzzy finder
25. ✅ **icons.theme** - Icon theme (Yaru-blue-dark)

## Theme Philosophy

Aurora combines:

- **Cosmic depths** - Deep blue backgrounds reminiscent of night skies
- **Northern lights** - Vibrant teal/cyan as the signature accent
- **Wilderness warmth** - Orange and purple tones from sunset and campfire
- **Natural balance** - Forest greens grounding the palette

Perfect for developers who want a mystical, atmospheric workspace with high contrast and vibrant accents.

---

**Theme Version:** 1.0.0  
**Created:** 2026-04-03  
**Base:** Omarchy Theme System
