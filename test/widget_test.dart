import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:focus_flow/main.dart';

void main() {
  testWidgets('FocusFlow app smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const FocusFlowApp());

    // Verify that the app title is displayed.
    expect(find.text('FocusFlow'), findsWidgets);

    // Verify that the welcome message is displayed.
    expect(find.text('Welcome to FocusFlow'), findsOneWidget);

    // Verify that the buttons are present.
    expect(find.text('Start Focus Session'), findsOneWidget);
    expect(find.text('View Tasks'), findsOneWidget);
    expect(find.text('Settings'), findsOneWidget);
  });
}
