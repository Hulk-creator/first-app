# FocusFlow

A Flutter application for managing focus and productivity.

## Overview

FocusFlow is a productivity companion app built with Flutter. It provides a clean, simple interface with placeholder functionality for:
- Focus Sessions
- Task Management
- Settings

## Getting Started

### Prerequisites

- [Flutter SDK](https://docs.flutter.dev/get-started/install) (3.0.0 or higher)
- [Android Studio](https://developer.android.com/studio) (for Android development)
- [Xcode](https://developer.apple.com/xcode/) (for iOS development, macOS only)

### Installation

1. Clone the repository:
```bash
git clone https://github.com/Hulk-creator/first-app.git
cd first-app
git checkout flutter-app-setup
```

2. Install dependencies:
```bash
flutter pub get
```

3. Verify Flutter installation:
```bash
flutter doctor
```

### Running the App

#### On Android:
```bash
flutter run
```

#### On iOS (macOS only):
```bash
cd ios
pod install
cd ..
flutter run
```

#### On Web:
```bash
flutter run -d chrome
```

### Building the App

#### Android APK:
```bash
flutter build apk
```

#### iOS (macOS only):
```bash
flutter build ios
```

## Project Structure

```
lib/
  main.dart          # Main application entry point and home screen
android/             # Android-specific files
ios/                 # iOS-specific files
test/                # Test files
pubspec.yaml         # Project dependencies and metadata
```

## Development

This project uses:
- Flutter SDK 3.0.0+
- Material Design 3
- Dart 3.0.0+

### Adding New Features

The app is structured to be easily extensible:
1. Create new screens in `lib/screens/`
2. Add new widgets in `lib/widgets/`
3. Implement business logic in `lib/services/` or `lib/models/`

### Testing

Run tests with:
```bash
flutter test
```

## Platform Support

- ✅ Android (minSdk 21)
- ✅ iOS (iOS 12.0+)
- ✅ Web

## License

This project is open source and available under the [MIT License](LICENSE).

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.
