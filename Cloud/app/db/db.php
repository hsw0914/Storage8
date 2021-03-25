<?php
session_start();
mb_internal_encoding('UTF-8');

$db = $GLOBALS['db'] = new PDO('mysql:host=localhost; dbname=cloud; charset=utf8','root','', [
    PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC
]);

class DB extends PDO
{
    public function exec ($sql, array $data = null)
    {
        $stmt = $this->prepare($sql);
        $stmt->execute($data);
        return $stmt;
    }
}

$randomid = substr(sha1(uniqid()), 0, 4);



function dir_size ($list) {
    $size = 0;
    if ($list['is_dir'] == "N") {
        return $list['file_size'];
    }else {
       $ch = $GLOBALS['db']->prepare('SELECT * FROM `in_shape` WHERE user_idx = ? AND parent = ?');
       $ch->execute([$list['user_idx'],$list['idx']]);
       foreach ($ch as $re ) {
           $size += dir_size($re);
       }
    }
    return $size;
};
