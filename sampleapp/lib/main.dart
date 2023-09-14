// アプリの一番上位(エントリーポイント)となるファイルです。
// 以下のようなことを行うことが多いです。

// 画面を縦に固定する
// Firebaseの初期化処理
// envファイルの読み込み
// riverpodのスコープ設定

// サンプルコード
import 'package:flutter/material.dart';
import 'package:sampleapp/component/explanation.dart';
import 'package:sampleapp/constant/explanation.dart';
import 'package:sampleapp/core/explanation.dart';
import 'package:sampleapp/infrastructure/explanation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sampleapp/provider/explanation.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

final ApiService apiService = ApiService(baseUrl: 'https://example.com');

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Logger.log('This is an informational message.');
    Logger.error('This is an error message.');
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        primaryColor: AppColors.primaryColor,
        hintColor: AppColors.accentColor,
      ),
      home: MyHomePageState(),
    );
  }
}

class MyHomePageState extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textEditingController = ref.watch(textEditingControllerProvider);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('sample'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: CustomTextInput(
                labelText: 'Enter your name:',
                controller: textEditingController,
              ),
            ),
            Center(
              child: FutureBuilder<Map<String, dynamic>>(
                future: apiService.fetchData(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else {
                    final data = snapshot.data;
                    return Text('Data: $data');
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
