// アプリで使用する定数の管理をします。
// Androidで言うResourceのような役割を持っています。
// constantフォルダによく格納するファイルは以下の通りです。

// colors.dart
// アプリで使用する色の定義をします。独自のマテリアルカラーも定義します。
// config.dart
// アプリで使用する設定ファイルです。ロジックを変えずとも設定ファイルの値を書きれば動きが変わるような値を定義しています。
// dimens.dart
// アプリで共通で使用するUIに関する定義をします。
// margin
// padding
// size
// duration
// fontSize
// etc...
// strings.dart
// アプリで使用する文言を定義します。
// 基本的に文字列のハードコードはしない思想です。
// urls.dart
// アプリで使用するURLを定義します。

// サンプルコード
import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryColor = Color(0xFF007BFF);
  static const Color secondaryColor = Color(0xFF6C757D);
  static const Color accentColor = Color(0xFFFFC107);
}
