<?php
namespace app\admin\validate;
use think\Validate;
class Admin extends Validate
{
    protected $rule = [
        'username'  => 'require|max:30',
        'password' => 'require'
    ];

    protected $message  =   [
        'username.require' => '管理员名称必须填写',
        'username.max'     => '管理员名称不能超过30个字符',
        'password.require'   => '管理员密码必须填写'
    ];

    protected $scene = [
        'add'  =>  ['username'=>'require','password'],
        'edit'  =>  ['username'=>'require'],
    ];
}
