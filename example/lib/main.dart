import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Slidable Example',
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 80.0, left: 10.0, right: 10.0),
          child: Slidable(
            leftPosition: -20,
            rightPosition: -20,
            key: const ValueKey(0),
            startActionPane: ActionPane(
              motion: ScrollMotion(),
              children: [
                SlidableAction(
                  onPressed: doNothing,
                  backgroundColor: Color(0xFF7BC043),
                  foregroundColor: Colors.white,
                  label: 'Archive',
                ),
              ],
            ),
            endActionPane: ActionPane(
              motion: ScrollMotion(),
              children: [
                SlidableAction(
                  onPressed: doNothing,
                  backgroundColor: Color(0xFF7BC043),
                  foregroundColor: Colors.white,
                  label: 'Archive',
                ),
              ],
            ),

            // The child of the Slidable is what the user sees when the
            // component is not dragged.
            child: Container(
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              child: Text('slide'),
              width: double.infinity,
              height: 200.0,
            ),
          ),
        ),
      ),
    );
  }
}

void doNothing(BuildContext context) {}
