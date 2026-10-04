import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_test_app/app.dart';

void main() {
  testWidgets('Counter increments smoothly test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Verify counter starts at 0
    expect(find.text('0'), findsOneWidget);

    // Tap +1 button
    await tester.tap(find.text('+1'));
    await tester.pumpAndSettle();

    // Verify counter updated to 1
    expect(find.text('1'), findsOneWidget);
  });
}
