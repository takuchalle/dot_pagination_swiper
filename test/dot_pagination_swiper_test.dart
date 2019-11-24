import 'package:flutter_test/flutter_test.dart';

import '../lib/src/dot_pagination.dart';

void main() {
  testWidgets('MyWidget has a title and message', (WidgetTester tester) async {
    // Test code goes here.
    await tester.pumpWidget(DotPagination());
  });
}
