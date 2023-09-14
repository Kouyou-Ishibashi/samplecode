// ViewModelやRepositoryを使用するにあたり、それらを提供するProviderを管理します。
// 状態管理は基本的にriverpodを使用しています。

// サンプルコード(riverpod)
import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

final textEditingControllerProvider = Provider<TextEditingController>((ref) {
  return TextEditingController();
});
