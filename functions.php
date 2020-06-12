<?php

function connect_to_db()
{
  // DB接続の設定
  // DB名は`gsacf_x00_00`にする
  $dbn = 'mysql:dbname=gsacf_l03_03;charset=utf8;port=3306;host=localhost';
  $user = 'root';
  $pwd = '';

  try {
    // ここでDB接続処理を実行する
    return new PDO($dbn, $user, $pwd); //returnがないと、PDOの値を外に持ち出せない。
  } catch (PDOException $e) {
    // DB接続に失敗した場合はここでエラーを出力し，以降の処理を中止する
    echo json_encode(["db error" => "{$e->getMessage()}"]);
    exit();
  }
}

// ログイン状態のチェック関数
function check_session_id()
{
  //セクションIDがない || 一致しないと以下実行  
  // ※isset(○○の変数が存在していればtrue)。今回は!がある為、変数が存在していれば、falseを出力
  //そもそもurlを直接打ち込んで、サイトにアクセスされるかもしれない。
  // 以下の処理でセクションIDを持っていないor間違えば、ログインさせないようにする
  if (!isset($_SESSION['session_id']) || $_SESSION['session_id']!=session_id()){ 
    header('Location: login.php');
    //ログイン中
  } else {
    // session_regenerate_id(true);はidを再取得する関数である。trueをいれないと処理をしてくれない
    // ログインに失敗した場合は、新たなIDを割り振る。※ハッキング対策。
    session_regenerate_id(true); //セッションIDを再編成

    // session_id();はidを発行する関数
    $_SESSION['session_id'] = session_id(); //セッション変数に格納する
  }
}
