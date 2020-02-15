<?php
    //读取：http://localhost/rouletteData/rouletteData.php?action=read
    //链接数据库，如果未显示die中的内容说明链接成功
    $conn = new mysqli('localhost','root','','roulette_lottery');
    if($conn->connect_error){
        die('link failure');
    }
    //获取请求的类型，通过获取action等号后的参数来判断
    if(isset($_GET['action'])){
      $action = $_GET['action'];
    }
    if($action == 'read'){
        //读取数据
        $conn->query("set names utf8");/**防止数据中文乱码 */
        //查询数据库，获取数据
        $result = $conn->query("SELECT * FROM `imgs`");
        //建一个空数组
        $imgs = array();
        //将数据循环push到数组中
        while($row = $result->fetch_assoc()){
          array_push($imgs,$row);
        }
        //返回最终的数据
        $res['imgs'] = $imgs;
    }
    $conn->close();
    //打印json格式的res数据
    echo json_encode($res);
?>