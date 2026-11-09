import 'package:flutter_test/flutter_test.dart';

import 'package:kety3/main.dart';

void main() {
  testWidgets('Named routes open and return to the routes list', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Home'), findsOneWidget);
    await tester.tap(find.text('Go to Routes'));
    await tester.pumpAndSettle();

    for (var routeNumber = 1; routeNumber <= 4; routeNumber++) {
      await tester.tap(find.text('Route $routeNumber'));
      await tester.pumpAndSettle();

      expect(find.text('Welcome to Route $routeNumber'), findsOneWidget);
      await tester.tap(find.text('Back'));
      await tester.pumpAndSettle();
    }

    expect(find.text('Routes'), findsOneWidget);
  });
}
