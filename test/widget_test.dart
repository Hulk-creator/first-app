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

  testWidgets('All buttons show snackbar message', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const FocusFlowApp());

    // Test Tasks button
    await tester.tap(find.text('Tasks'));
    await tester.pumpAndSettle();
    expect(find.text('Feature coming soon!'), findsOneWidget);
    
    // Dismiss snackbar
    await tester.tap(find.text('Feature coming soon!'));
    await tester.pumpAndSettle();

    // Test Focus Timer button
    await tester.tap(find.text('Focus Timer'));
    await tester.pumpAndSettle();
    expect(find.text('Feature coming soon!'), findsOneWidget);
    
    // Dismiss snackbar
    await tester.tap(find.text('Feature coming soon!'));
    await tester.pumpAndSettle();

    // Test Analytics button
    await tester.tap(find.text('Analytics'));
    await tester.pumpAndSettle();
    expect(find.text('Feature coming soon!'), findsOneWidget);
  });
}
