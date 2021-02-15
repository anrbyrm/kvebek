import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:kvebek/presentation/bois/bois_overview/bois_overview_page.dart';
import 'package:kvebek/presentation/core/app.dart';
import 'package:kvebek/presentation/login/login_page.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets(
      'Not entering name or password and click login button '
      'and an error shows up.', (WidgetTester tester) async {
    await tester.pumpWidget(App());

    await tester.tap(find.byType(RaisedButton));
    await tester.pumpAndSettle();

    expect(find.byType(LogInPage), findsWidgets);
    expect(find.byType(BoisOverviewPage), findsNothing);
  });
}
