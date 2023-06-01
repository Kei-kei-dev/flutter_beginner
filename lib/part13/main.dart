import 'package:flutter/material.dart';
import 'package:flutter_beginner/part13/page_a.dart';
import 'package:flutter_beginner/part13/page_c.dart';
import 'package:flutter_beginner/part13/page_b.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

main() {
  // アプリ
  const app = MaterialApp(home: Root());

  // プロバイダースコープでアプリを囲む
  const scope = ProviderScope(child: app);
  runApp(scope);
}

final indexProvider = StateProvider((ref) {
  return 0;
});

class Root extends ConsumerWidget {
  const Root({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final index = ref.watch(indexProvider);

    const items = [
      BottomNavigationBarItem(
        icon: Icon(Icons.person),
        label: 'アイテムA',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.home),
        label: 'アイテムB',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: 'アイテムC',
      ),
    ];

    final bar = BottomNavigationBar(
      items: items,
      backgroundColor: Colors.red,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.black,
      currentIndex: index,
      onTap: (index) {
        ref.read(indexProvider.notifier).state = index;
      },
    );

    final pages = [
      PageA(),
      PageB(),
      PageC(),
    ];

    return Scaffold(
      body: pages[index],
      bottomNavigationBar: bar,
    );
  }
}
