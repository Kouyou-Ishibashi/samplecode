// アプリのコアとなるクラスを管理します。
// 例えば、FirebaseのTimestamp型とDatetime型を変換するコンバーターやアプリ全体で使用するLoggerなどを管理することが多いです。

// サンプルコード(logger)
class Logger {
  static void log(String message) {
    print('[INFO] $message');
  }

  static void error(String message) {
    print('[ERROR] $message');
  }
}
