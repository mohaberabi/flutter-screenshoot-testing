import 'package:flutter/material.dart';
import 'package:flutter_screen_shoot_testing/home_screen.dart';
import 'package:flutter_screen_shoot_testing/main.dart';
import 'package:flutter_test/flutter_test.dart';

//flutter test --update-goldens test/home_screen_test.dart
void main() {
  group(
    "test home screen with screenshots",
    () {
      testWidgets(
        "test home screen with screenshoots ",
        (tester) async {
          TestWidgetsFlutterBinding.ensureInitialized();
          await tester.pumpWidget(
            const MaterialApp(
              home: HomeScreen(),
            ),
          );
          await tester.pumpAndSettle();
          await expectLater(find.byType(HomeScreen),
              matchesGoldenFile("goldens/home_screen.png"));
        },
      );
    },
  );
}
