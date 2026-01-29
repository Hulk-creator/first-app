#!/bin/bash

# FocusFlow Setup Verification Script
# This script helps verify that your development environment is ready

echo "======================================"
echo "FocusFlow Setup Verification"
echo "======================================"
echo ""

# Check if Flutter is installed
echo "Checking Flutter installation..."
if command -v flutter &> /dev/null
then
    flutter --version
    echo "✓ Flutter is installed"
else
    echo "✗ Flutter is not installed"
    echo "  Please install Flutter from: https://docs.flutter.dev/get-started/install"
    exit 1
fi

echo ""
echo "Running Flutter Doctor..."
flutter doctor

echo ""
echo "Checking project dependencies..."
flutter pub get

echo ""
echo "Analyzing code..."
flutter analyze

echo ""
echo "Running tests..."
flutter test

echo ""
echo "======================================"
echo "Setup verification complete!"
echo "======================================"
echo ""
echo "You can now run the app with:"
echo "  flutter run"
echo ""
