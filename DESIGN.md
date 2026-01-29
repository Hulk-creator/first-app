# FocusFlow App UI Design

## Home Screen Layout

```
┌─────────────────────────────────────┐
│  ←    FocusFlow              ⋮     │  <- AppBar (Purple theme)
├─────────────────────────────────────┤
│                                     │
│                                     │
│            ◎  (Icon)               │  <- Focus icon (purple, size 80)
│        center_focus_strong          │
│                                     │
│      Welcome to FocusFlow          │  <- Title (28pt, bold)
│                                     │
│   Your productivity companion       │  <- Subtitle (16pt, gray)
│                                     │
│                                     │
│  ┌───────────────────────────┐    │
│  │ ⏱  Start Focus Session   │    │  <- ElevatedButton with icon
│  └───────────────────────────┘    │
│                                     │
│  ┌───────────────────────────┐    │
│  │ ✓  View Tasks            │    │  <- ElevatedButton with icon
│  └───────────────────────────┘    │
│                                     │
│  ┌───────────────────────────┐    │
│  │ ⚙  Settings              │    │  <- OutlinedButton with icon
│  └───────────────────────────┘    │
│                                     │
│                                     │
│                                     │
└─────────────────────────────────────┘
```

## Color Scheme

- **Primary Color**: Deep Purple (Colors.deepPurple)
- **Theme**: Material Design 3
- **AppBar**: Inverse primary color from color scheme
- **Buttons**: Default Material 3 styling with purple accents
- **Background**: White/System default

## Typography

- **App Title** (AppBar): Default AppBar text style
- **Welcome Title**: 28pt, Bold
- **Subtitle**: 16pt, Gray
- **Button Text**: Default button text style

## Icons

- **Focus Icon**: `Icons.center_focus_strong` (80pt, purple)
- **Timer Button**: `Icons.timer`
- **Tasks Button**: `Icons.task_alt`
- **Settings Button**: `Icons.settings`

## Button Styles

### Start Focus Session & View Tasks
- Style: ElevatedButton
- Padding: Horizontal 32, Vertical 16
- With leading icon

### Settings
- Style: OutlinedButton
- Padding: Horizontal 32, Vertical 16
- With leading icon

## Spacing

- Top/Bottom/Side padding: 24pt
- Space between icon and title: 24pt
- Space between title and subtitle: 16pt
- Space between subtitle and buttons: 48pt
- Space between buttons: 16pt

## Interactivity

All buttons have:
- Ripple effect on tap
- Placeholder onPressed handlers
- Ready for future functionality implementation

## Responsive Design

The layout uses:
- `Center` widget for centering content
- `Column` with `MainAxisAlignment.center`
- Padding that adapts to screen size
- Material Design 3 components that adapt to different screen sizes

## Platform-Specific Adaptations

- iOS: Uses Cupertino icons when appropriate
- Android: Full Material Design implementation
- Web: Responsive layout that works on all screen sizes

## Accessibility

- All text is readable with proper contrast
- Icons have semantic labels
- Buttons are properly sized for touch targets
- Compatible with screen readers
- Supports dynamic text sizing
