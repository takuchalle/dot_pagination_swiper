import 'package:flutter/material.dart';

import 'dialog/swipe_dialog.dart';
import 'pages/swipe_page.dart';

@immutable
class App extends StatelessWidget {
  const App({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Builder(
            builder: (context) => Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                RaisedButton(
                  child: Text('swipe page'),
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SwipePage()),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                RaisedButton(
                  child: Text('swipe dialog'),
                  onPressed: () => showSwipeDialog(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
