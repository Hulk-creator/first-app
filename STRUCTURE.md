# Flutter Project Structure

This document outlines the structure of the FocusFlow Flutter application.

## Project Overview

```
focus_flow/
├── .gitignore                  # Git ignore rules for Flutter projects
├── .metadata                   # Flutter metadata file
├── README.md                   # Project documentation
├── analysis_options.yaml       # Dart analyzer configuration
├── pubspec.yaml               # Project dependencies and metadata
│
├── lib/                       # Dart source code
│   └── main.dart             # Application entry point and home screen
│
├── test/                      # Test files
│   └── widget_test.dart      # Widget tests for the app
│
├── android/                   # Android platform files
│   ├── app/
│   │   ├── build.gradle      # App-level Gradle configuration
│   │   └── src/
│   │       └── main/
│   │           ├── AndroidManifest.xml
│   │           ├── kotlin/
│   │           │   └── com/example/focus_flow/
│   │           │       └── MainActivity.kt
│   │           └── res/
│   │               └── values/
│   │                   └── styles.xml
│   ├── build.gradle          # Project-level Gradle configuration
│   ├── gradle.properties     # Gradle properties
│   └── settings.gradle       # Gradle settings
│
└── ios/                       # iOS platform files
    ├── Podfile               # CocoaPods dependencies
    └── Runner/
        ├── AppDelegate.swift # iOS app delegate
        └── Info.plist        # iOS app configuration

```

## Key Components

### Main Application (lib/main.dart)
- **FocusFlowApp**: Root widget that sets up MaterialApp with theme
- **HomeScreen**: Main screen with:
  - AppBar displaying "FocusFlow" title
  - Center focus icon
  - Welcome message
  - Three action buttons:
    1. Start Focus Session (with timer icon)
    2. View Tasks (with task icon)
    3. Settings (outlined button)

### Platform Support

#### Android
- Minimum SDK: 21 (Android 5.0)
- Target SDK: 34 (Android 14)
- Uses Kotlin for native code
- Material Design components

#### iOS
- Minimum version: iOS 12.0
- Uses Swift for native code
- CocoaPods for dependency management

## Features Ready for Extension

The project is structured to easily add:
- New screens in `lib/screens/`
- Reusable widgets in `lib/widgets/`
- Business logic in `lib/services/` or `lib/models/`
- State management (Provider, Riverpod, Bloc, etc.)
- Navigation (Navigator 2.0, GoRouter, etc.)
- Data persistence (SharedPreferences, Hive, SQLite, etc.)

## Testing

- Widget tests set up in `test/widget_test.dart`
- Ready for unit tests and integration tests
- Flutter test framework included in dev_dependencies

## Build System

- **Android**: Gradle build system with Kotlin plugin
- **iOS**: Xcode project with CocoaPods
- **Flutter**: Standard Flutter build commands

## Next Steps

This foundation is ready for:
1. Adding state management
2. Implementing navigation between screens
3. Adding backend integration
4. Implementing actual focus timer functionality
5. Creating task management features
6. Building settings screen
7. Adding animations and transitions
8. Implementing data persistence
