<!-- todo_login.phpから送信されたデータを受け取り，DB関連の処理を実行 -->

<?php
// var_dump($_POST);
// exit();
session_start(); //下でsession_idを使用している為
// 外部ファイル読み込み
include('functions.php');
// DB接続します
$pdo = connect_to_db();
// データ受け取り
$user_id = $_POST['user_id'];
$password = $_POST['password'];

// データ取得SQL作成&実行
$sql = 'SELECT * FROM users_table WHERE user_id=:user_id AND password=:password AND is_deleted=0';

$stmt = $pdo->prepare($sql);
$stmt->bindValue(':user_id', $user_id, PDO::PARAM_STR);
$stmt->bindValue(':password', $password, PDO::PARAM_STR);
$status = $stmt->execute();
// var_dump($status);
// exit();

// SQL実行時にエラーがある場合はエラーを表示して終了
if ($status == false) {
  $error = $stmt->errorInfo();
  echo json_encode(['error_msg' => '{$error[2]}']);
  exit();
}

// うまくいったらデータ（1レコード）を取得
$val = $stmt->fetch(PDO::FETCH_ASSOC);

// ユーザ情報が取得できない場合はメッセージを表示
if (!$val) { //現在$valにはuser_idとpasswordが入っている。
  echo "<p>ログイン情報に誤りがあります．</p>";
  echo '<a href="todo_login.php">login</a>';
  exit();
} else {
  // ログインできたら情報をsession領域に保存して一覧ページへ移動
  // session_id()とはidを発行する関数。ブラウザに入った時に毎回id(ランダム？な英数字の文字列)を発行する。
  $_SESSION = array();
  $_SESSION['session_id'] = session_id();
  $_SESSION['user_id'] = $val['user_id'];
  $_SESSION['is_admin'] = $val['is_admin'];
  header("Location:kadai4.html");
  exit();
}
