import 'package:flutter/material.dart';

class PersonTileWidget extends StatelessWidget {
  final String name;
  final bool isRemoved;
  const PersonTileWidget({Key? key, required this.name, this.isRemoved = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        color: Colors.grey.shade300,
        height: 40,
        width: 40,
      ),
      title: Text(name),
      trailing: Icon(Icons.add),
    );
  }
}
