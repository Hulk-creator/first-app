import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:focusflow/main.dart';

void main() {
  testWidgets('FocusFlow app smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const FocusFlowApp());

    // Verify that the app title is displayed.
    expect(find.text('FocusFlow'), findsWidgets);
    
    // Verify that welcome text is displayed.
    expect(find.text('Welcome to FocusFlow'), findsOneWidget);

    // Verify that the placeholder buttons are displayed.
    expect(find.text('Tasks'), findsOneWidget);
    expect(find.text('Focus Timer'), findsOneWidget);
    expect(find.text('Analytics'), findsOneWidget);
  });

  testWidgets('Buttons show snackbar message', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const FocusFlowApp());

    // Tap the Tasks button.
    await tester.tap(find.text('Tasks'));
    await tester.pumpAndSettle();

    // Verify snackbar is shown.
    expect(find.text('Feature coming soon!'), findsOneWidget);
  });
}
