# Contributing to FocusFlow

Thank you for your interest in contributing to FocusFlow! This document provides guidelines and instructions for contributing to the project.

## Getting Started

1. Fork the repository
2. Clone your fork: `git clone https://github.com/YOUR_USERNAME/first-app.git`
3. Create a feature branch: `git checkout -b feature/your-feature-name`
4. Make your changes
5. Test your changes
6. Commit and push your changes
7. Create a Pull Request

## Development Setup

### Prerequisites
- Flutter SDK 3.0.0 or higher
- Dart 3.0.0 or higher
- Android Studio (for Android development)
- Xcode (for iOS development, macOS only)

### Initial Setup
```bash
# Install dependencies
flutter pub get

# Verify your setup
./verify_setup.sh

# Run the app
flutter run
```

## Code Style

This project follows the official Dart and Flutter style guides:
- [Effective Dart](https://dart.dev/guides/language/effective-dart)
- [Flutter Style Guide](https://github.com/flutter/flutter/wiki/Style-guide-for-Flutter-repo)

### Linting
We use `flutter_lints` for code analysis. Run the linter before committing:
```bash
flutter analyze
```

### Formatting
Format your code using:
```bash
dart format .
```

## Testing

### Running Tests
```bash
# Run all tests
flutter test

# Run tests with coverage
flutter test --coverage

# Run specific test file
flutter test test/widget_test.dart
```

### Writing Tests
- Write widget tests for UI components
- Write unit tests for business logic
- Write integration tests for complete features
- Aim for meaningful test coverage

Example test:
```dart
testWidgets('Button displays correct text', (WidgetTester tester) async {
  await tester.pumpWidget(MyWidget());
  expect(find.text('Expected Text'), findsOneWidget);
});
```

## Project Structure

```
lib/
  main.dart           # App entry point
  screens/            # Screen widgets (to be added)
  widgets/            # Reusable widgets (to be added)
  models/             # Data models (to be added)
  services/           # Business logic (to be added)
```

## Commit Messages

Follow the [Conventional Commits](https://www.conventionalcommits.org/) specification:

- `feat:` - A new feature
- `fix:` - A bug fix
- `docs:` - Documentation changes
- `style:` - Code style changes (formatting, etc.)
- `refactor:` - Code refactoring
- `test:` - Adding or updating tests
- `chore:` - Maintenance tasks

Example:
```
feat: add focus timer functionality
fix: resolve navigation issue on Android
docs: update README with setup instructions
```

## Pull Request Process

1. Update the README.md with details of changes if needed
2. Update STRUCTURE.md if you modify the project structure
3. Ensure all tests pass
4. Ensure code is properly formatted and analyzed
5. Request review from maintainers
6. Address any feedback from reviewers

## Adding New Features

When adding new features:

1. **Plan**: Describe what you're adding and why
2. **Design**: Consider the user experience
3. **Implement**: Write clean, documented code
4. **Test**: Add appropriate tests
5. **Document**: Update relevant documentation

### Example: Adding a New Screen

```dart
// lib/screens/focus_timer_screen.dart
import 'package:flutter/material.dart';

class FocusTimerScreen extends StatelessWidget {
  const FocusTimerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Focus Timer'),
      ),
      body: const Center(
        child: Text('Timer content here'),
      ),
    );
  }
}
```

## Code Review

All contributions require code review. Reviewers will check for:
- Code quality and style
- Test coverage
- Documentation
- Performance considerations
- Security implications

## Questions or Issues?

- Open an issue for bugs or feature requests
- Start a discussion for questions or ideas
- Contact maintainers for urgent matters

## License

By contributing to FocusFlow, you agree that your contributions will be licensed under the project's MIT License.

Thank you for contributing! 🎉
