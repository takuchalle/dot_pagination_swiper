import 'package:dot_pagination_swiper/dot_pagination_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

const List<String> kStates = <String>[
  'Alabama',
  'Alaska',
  'Arizona',
  'Arkansas',
  'California',
  'Colorado',
  'Connecticut',
];

void main() {
  testWidgets('MyWidget has a title and message', (WidgetTester tester) async {
    final List<String> log = <String>[];

    await tester.pumpWidget(Directionality(
      textDirection: TextDirection.ltr,
      child: DotPaginationSwiper(
        children: kStates.map<Widget>((String state) {
          return GestureDetector(
            onTap: () {
              log.add(state);
            },
            child: Container(
              height: 200.0,
              color: const Color(0xFF0000FF),
              child: Text(state),
            ),
          );
        }).toList(),
      ),
    ));
    await tester.tap(find.text('Alabama'));
    expect(log, equals(<String>['Alabama']));
    log.clear();

    expect(find.text('Alaska'), findsNothing);
  });
}
