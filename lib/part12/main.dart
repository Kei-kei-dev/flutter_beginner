import 'package:flutter/material.dart';
import 'package:flutter_beginner/part12/side_menu.dart';

main() {
  final appBar = AppBar(
    title: const Text('appBar'),
  );

  const drawer = Drawer(
    child: SideMenu(),
  );

  const endDrawer = Drawer(
    child: SideMenu(),
  );

  final fab = FloatingActionButton(
    onPressed: () {
      debugPrint('FAB が押されました');
    },
    child: const Text('FAB'),
  );

  // ボディ
  const body = Center(
    child: Text('body'),
  );

  final scaffold = Scaffold(
    appBar: appBar,
    drawer: drawer,
    endDrawer: endDrawer,
    floatingActionButton: fab,
    body: body,
  );

  final app = MaterialApp(
    home: scaffold,
  );

  runApp(app);
}
