import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// 自分が作った fish.dart ファイルを読み込む
import 'package:flutter_beginner/part17/fish.dart';

void main() {
  const app = MaterialApp(home: Home());
  const scope = ProviderScope(child: app);
  runApp(scope);
}

// 魚データの状態管理
final fishProvider = StateProvider((ref) {
  return const Fish(
    name: 'マグロ',
    size: 200,
    price: 300,
  );
});

// ABCリストの状態管理

// ホーム画面
class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 魚データ
    final fish = ref.watch(fishProvider);
    // ABCリスト

    // 名前テキスト
    final nameText = Text(
      '名前: ${fish.name}',
    );

    // 大きさテキスト
    final sizeText = Text(
      '大きさ: ${fish.size} cm',
    );

    // 値段テキスト
    final priceText = Text(
      '値段: ${fish.price} 万円',
    );

    // ABCリストテキスト

    // ボタン
    final button = ElevatedButton(
      onPressed: () => onPressed(ref),
      child: const Text('変更する'),
    );

    // 縦に並べるカラム
    final column = Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        nameText,
        sizeText,
        priceText,
        button,
      ],
    );

    // 画面の真ん中にカラムを置く
    return Scaffold(
      body: Center(
        child: column,
      ),
    );
  }

  // ボタンを押したときの関数
  void onPressed(WidgetRef ref) {
    // 今画面に出ている魚
    final fish = ref.read(fishProvider);

    // 入れ物ごと変えた 新しい魚
    final newFish = fish.copyWith(price: 500);

    // 画面を変更する
    ref.read(fishProvider.notifier).state = newFish;
  }
}
