# UITweaks

A customizable quality-of-life mod for The Witcher 3: Wild Hunt that gives you control over various UI and gameplay elements.

## Features

### 🎯 Adjustable Interaction Distance
- Customize how close Geralt needs to be to interact with objects
- Adjustable via in-game menu

### ✨ Loot Sparkle Control
- **Loot Sparkle Toggle**: Enable or disable the sparkle effect on lootable containers and bodies
- **Quest Item Sparkle Toggle**: Separately control sparkle effects on quest-related containers
- Perfect for players who prefer a more immersive experience without visual clutter

### 🐴 Single-Tap Horse Call (Gamepad)
- Call your horse with a single tap instead of holding the button
- Deactivates if you enable left stick sprint

### 📦 Item Quantity Display
- Display (quantity in inventory / quantity in stash) next to items in the loot popup.

## Installation

1. Download the latest release
2. Extract the `mods` folder to your Witcher 3 installation directory:
   ```
   <Witcher 3 Install Directory>\mods\UITweaks
   ```
3. Launch the game and configure settings via the in-game mod menu

## Configuration

All settings can be adjusted in-game through the **Mod Menu**:

- **Interact Distance**: Slider (0-10 meters)
- **Loot Should Sparkle**: Toggle
- **Quest Should Sparkle**: Toggle  
- **Disable Item Quantity**: Toggle
- **Disable Single Tap Horse**: Toggle

Also works without the menu using default settings. Individual components' scripts can be deleted as desired to remove specific features.

### Presets

The mod includes two presets:
- **Default**: All features enabled; interact @ 5.5.
- **Vanilla**: Original game behavior (all off).

## Requirements

- The Witcher 3: Wild Hunt v4.04

## Compatibility

This mod uses `@wrapMethod` annotations and edits LootPopup.ws for the item quantity feature 

## Technical Details

The mod modifies the following game behaviors:
- `CR4Player::OnSpawned` - Interaction distance
- `W3ActorRemains::OnFocusModeEnabled` - Loot sparkle effects
- `W3Container::PlayQuestItemFx` - Quest item sparkle effects
- `CPlayerInput::OnCommSpawnHorse` - Horse calling behavior

## Credits

Created by [Edwin-Holmes](https://github.com/Edwin-Holmes)

## Support

If you encounter any issues or have suggestions, please open an issue on the [GitHub repository](https://github.com/Edwin-Holmes/InteractSparkle).
