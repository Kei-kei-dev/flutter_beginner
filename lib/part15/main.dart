import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  const app = MaterialApp(home: Home());
  const scope = ProviderScope(child: app);
  runApp(scope);
}

final radioIdProvider = StateProvider<String?>((ref) {
  return null;
});

final checkedIdsProvider = StateProvider<Set<String>>((ref) {
  return {};
});

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final radioId = ref.watch(radioIdProvider);
    final checkedIds = ref.watch(checkedIdsProvider);

    void onChangedRadio(String? id) {
      ref.read(radioIdProvider.notifier).state = id;
    }

    void onChangedCheckbox(String id) {
      final newSet = Set.of(checkedIds);

      if (newSet.contains(id)) {
        newSet.remove(id);
      } else {
        newSet.add(id);
      }
      ref.read(checkedIdsProvider.notifier).state = newSet;
    }

    final col = Column(
      children: [
        RadioListTile(
          value: 'A',
          groupValue: radioId,
          onChanged: onChangedRadio,
          title: const Text('ラジオボタンA'),
        ),
        RadioListTile(
          value: 'B',
          groupValue: radioId,
          onChanged: onChangedRadio,
          title: const Text('ラジオボタンB'),
        ),
        RadioListTile(
          value: 'C',
          groupValue: radioId,
          onChanged: onChangedRadio,
          title: const Text('ラジオボタンC'),
        ),
        CheckboxListTile(
          onChanged: (check) => onChangedCheckbox('A'),
          value: checkedIds.contains('A'),
          title: const Text('チェックボックスA'),
        ),
        CheckboxListTile(
          onChanged: (check) => onChangedCheckbox('B'),
          value: checkedIds.contains('B'),
          title: const Text('チェックボックスB'),
        ),
        CheckboxListTile(
          onChanged: (check) => onChangedCheckbox('C'),
          value: checkedIds.contains('C'),
          title: const Text('チェックボックスC'),
        ),
        ElevatedButton(
          onPressed: () {
            // 選ばれたラジオボタンIDを確認する
            debugPrint(radioId);
            // 選ばれたチェックボックスIDを確認する
            debugPrint(checkedIds.toString());
          },
          child: const Text('OK'),
        ),
      ],
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
      ),
      body: col,
    );
  }
}
