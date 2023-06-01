import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final header = DrawerHeader(
        padding: const EdgeInsets.all(0),
        margin: const EdgeInsets.all(0),
        child: Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Text('drawerHeader'),
        ));

    final tileA = ListTile(
      title: Text('リストタイルA'),
      onTap: () {
        print('タイルAをタップしました');
      },
    );

    final tileB = ListTile(
      title: Text('リストタイルB'),
      onTap: () {
        print('タイルBをタップしました');
      },
    );

    final tileC = ListTile(
      title: Text('リストタイルC'),
      onTap: () {
        print('タイルCをタップしました');
      },
    );

    final list = ListView(
      children: [header, tileA, tileB, tileC],
    );

    return list;
  }
}
