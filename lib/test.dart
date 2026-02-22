import 'package:flutter/cupertino.dart';

class Person extends StatelessWidget {
  final String name;
  final Widget? child;

  const Person({
    Key? key,
  required this.name,
    this.child
  }) :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(name,
          style: TextStyle(fontSize: 20),),
        ],
      ),
    );
  }
}


