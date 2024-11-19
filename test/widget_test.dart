import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:schoolsee/main.dart';

void main() {
  testWidgets('Admin login screen smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const SchoolSeeApp());

    // Verify that the "Admin Login" text is present.
    expect(find.text('Admin Login'), findsOneWidget);

    // Verify that the Email field exists.
    expect(find.text('Email'), findsOneWidget);
    expect(find.text('Enter your email'), findsOneWidget);

    // Verify that the Password field exists.
    expect(find.text('Password'), findsOneWidget);
    expect(find.text('Enter your password'), findsOneWidget);

    // Verify that the Login button exists.
    expect(find.text('Login'), findsOneWidget);

    // Tap the "Login" button.
    await tester.tap(find.text('Login'));
    await tester.pump();

    // Add further checks for post-login behavior if implemented.
  });
}
