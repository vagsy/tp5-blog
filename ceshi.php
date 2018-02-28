<?php

//命名空间  只对函数 类 常量(const命名的) 起作用

/*
*命名空间三种访问方式
*1、非限定名称访问方式
*2、限定名称访问方式
*3、完全限定名称访问方式
*/
namespace beijing\haidian;
header("content-type:text/html; charset=utf-8");
function getmsg() {
    echo '123';
}

// define('MEANNAME', 'wind');
const MEANNAME = "wind";

class Animals{
    public $obj='dog';
    static $name='大黄';
}

namespace shanghai\putuo;
function getmsg() {
    echo '456';
}
// define('MEANNAME', 'wind0');
const MEANNAME = "wind0";

class Animals{
    public $obj='pig';
    static $name='哼哼';
}

getmsg(); //1、非限定名称访问方式
echo MEANNAME; //1、非限定名称访问方式

\beijing\haidian\getmsg(); //3、完全限定名称访问方式

echo \beijing\haidian\MEANNAME; //3、完全限定名称访问方式

$animals=new \beijing\haidian\Animals();
echo $animals->obj;//3、完全限定名称访问方式
echo Animals::$name;
echo \beijing\haidian\Animals::$name;

beijing\haidian\getmsg(); //2、限定名称访问方式

namespace shanghai\putuo\beijing\haidian;
function getmsg() {
    echo '789';
}