# TT-copy-paste Lite v.2

> **TL;DR:** A minimalist AutoHotkey script for Copy/Paste. Remaps `Tab` + `1/2/4` to `Ctrl+C/V/A`. Designed for zero learning curve and one-handed operation.

## ⚡ What is the "Lite" Version?
This is a stripped-down version of the full [TanTadiTaz script](LINK_TO_FULL_REPO_IF_EXISTS).
While the original script turns the entire keyboard into a navigation grid, **Lite v.2** focuses strictly on the 5 most used commands.

**Why use Lite?**
*   **Zero Learning Curve:** You only need to remember 3 numbers.
*   **Safety:** No complex layers or modes that might interfere with other software.
*   **Focus:** Perfect if you just want to fix the "awkward Ctrl+C stretch" without changing your entire workflow.

## 🔦 The "Why"
Originally built because my keyboard's bottom row (`Ctrl`, `Alt`, `Shift`) stopped working after a liquid spill. I needed a way to copy/paste using only the top row. It turned out that `Tab` + Numbers is significantly faster and easier to hit in the dark than standard shortcuts.

---

## ⌨️ Key Mappings (The "Ta-n, Ta-di, Ta-La" System)

Hold `Tab` to activate. Release to use normal Tab.

### 1. Clipboard (Top Row Numbers)
| Shortcut | Action | Mnemonic |
| :--- | :--- | :--- |
| `Tab` + `1` | **Copy** (`Ctrl+C`) | Ta-**n** (One) |
| `Tab` + `2` | **Paste** (`Ctrl+V`) | Ta-**di** (Double) |
| `Tab` + `4` | **Select All** (`Ctrl+A`) | Ta-**La** (All) |

*(Note: `Tab+3` is disabled in Lite to prevent accidental Cuts)*

### 2. Utilities (WASD Row)
| Shortcut | Action | Use Case |
| :--- | :--- | :--- |
| `Tab` + `S` | **Enter** | Form submission |
| `Tab` + `D` | **Enter** | Alternative (Redundant but convenient) |

---

## 🛠 Installation

1. Install [AutoHotkey](https://www.autohotkey.com/).
2. Download `TT-Lite-v2.ahk` from this repo.
3. Run the script.

### Controls & Safety
*   **ScrollLock**: Toggle Script ON/OFF (Suspend). Use this if you need `Alt+Tab` or standard `Tab` behavior for gaming.
*   **Emergency Exit**: `Ctrl+Alt+Shift+Win+F12` (Terminates script instantly).

## ⚠️ Limitations
*   **Alt+Tab:** Standard Alt+Tab behavior is interrupted while the script is active (since `Tab` is now a modifier). Use `ScrollLock` to switch windows.
*   **Input Lag:** Tiny delay on the `Tab` key (AHK waits to see if you press a number).

## License
MIT. Simple code for simple problems.

---
*Created by Aleksandrs M. Orrin. Minimalist productivity.*
