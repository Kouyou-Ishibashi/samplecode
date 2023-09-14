// アプリの型定義のクラスを管理します。
// イミュータブルな思想のため、freezedを使用しています。
// freezedで自動生成されたファイルも格納されています。
// あと、model配下にuiフォルダを切って、UIの状態を表すuiステートのモデルを格納しています。
// Viewはこのuiステートを監視して、表示を切り替えるような設計思想です。

// サンプルコード(freezed使用)
import 'package:freezed_annotation/freezed_annotation.dart';

part 'explanation.g.dart';
part 'explanation.freezed.dart';

@freezed
class Explanation with _$Explanation {
  const Explanation._();
  const factory Explanation({
    required String sAnswerId,
    required String sRespondentId,
    required String sQuestionId,
    required String sAnswerSentence,
    required int nRowNumber,
    required String dtCreateDate,
    required String sCreateUser,
    required String dtUpdateDate,
    required String sUpdateUser,
  }) = _Explanation;

  factory Explanation.fromJson(Map<String, dynamic> json) =>
      _$ExplanationFromJson(json);
}
