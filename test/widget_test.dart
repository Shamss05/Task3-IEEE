import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task3/src/app_root.dart'; // Update this import

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const AppRoot()); // Use AppRoot instead of MyApp

    // Verify that the initial screen displays the text or widgets you expect.
    expect(find.text('Practice Mindfulness'), findsOneWidget);
    expect(find.text('Get on the right track towards\nmindfulness'), findsOneWidget);
    // You can add more expectations based on what you have in FirstScreen

    // For testing the '+' icon functionality, you'll need to add that functionality to your app.
    // If there's no counter functionality in FirstScreen, adjust the tests accordingly.
  });
}
