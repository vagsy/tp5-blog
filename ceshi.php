<?php

//命名空间  只对函数 类 常量(const命名的) 起作用

/*
*命名空间三种访问方式
*1、非限定名称访问方式
*2、限定名称访问方式
*3、完全限定名称访问方式
*/
namespace beijing\haidian;
function getmsg() {
    echo '123';
}

// define('MEANNAME', 'wind');
const MEANNAME = "wind";

class Animals{
    public $obj='dog';
}

namespace shanghai\putuo;
function getmsg() {
    echo '456';
}
// define('MEANNAME', 'wind0');
const MEANNAME = "wind0";

class Animals{
    public $obj='pig';
}

getmsg(); //1、非限定名称访问方式
echo MEANNAME; //1、非限定名称访问方式

\beijing\haidian\getmsg(); //3、完全限定名称访问方式

echo \beijing\haidian\MEANNAME; //3、完全限定名称访问方式


beijing\haidian\getmsg(); //2、限定名称访问方式

namespace shanghai\putuo\beijing\haidian;
function getmsg() {
    echo '789';
}