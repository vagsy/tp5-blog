<?php
namespace app\admin\validate;
use think\Validate;
class Admin extends Validate
{
    protected $rule = [
        'username'  => 'require|max:30|unique:admin',
        'password' => 'require'
    ];

    protected $message  =   [
        'username.require' => '管理员名称必须填写',
        'username.max'     => '管理员名称不能超过30个字符',
        'username.unique'     => '管理员名称不能重复',
        'password.require'   => '管理员密码必须填写'
    ];

    protected $scene = [
        'add'  =>  ['username'=>'require|unique:admin','password'],
        'edit'  =>  ['username'=>'require|unique:admin'],
    ];
}
