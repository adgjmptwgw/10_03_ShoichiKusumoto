<?php
session_start();
include('functions.php');
check_session_id();
?>

<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>DB連携型todoリスト（入力画面）</title>
</head>

<body>
  <form action="todo_create.php" method="POST">
    <fieldset>
      <legend>DB連携型todoリスト（入力画面）</legend>
      <a href="todo_read.php">一覧画面</a>
      <a href="todo_logout.php">logout</a>
      <div>
        駐車予定日・時刻:<input type="date" name="date">
      </div>

      <button>予約を確定する</button>
    </fieldset>
  </form>

</body>

</html>