// アプリで使用する共通で再利用するUIを管理します。
// Reactでよく言うAtomicDesignのmoleculeやatomまで細かく切っていません。
// 個人的には粒度で得られるメリットがあまり感じられないため、componentフォルダに再利用するUIを格納しています。

// サンプルコード(テキストフィールド)
import 'package:flutter/material.dart';

class CustomTextInput extends StatelessWidget {
  final String labelText;
  final TextEditingController controller;

  const CustomTextInput({
    super.key,
    required this.labelText,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        border: const OutlineInputBorder(),
      ),
    );
  }
}
