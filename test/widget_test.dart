import 'package:flutter_test/flutter_test.dart';

import 'package:auc_app/main.dart';

void main() {
  testWidgets('App shows home shell and navigation', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pumpAndSettle();

    expect(find.text('AUC'), findsOneWidget);
    expect(find.text('Home'), findsWidgets);
  });
}
