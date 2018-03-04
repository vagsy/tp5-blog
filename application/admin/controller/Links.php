<?php
namespace app\admin\controller;
use think\Controller;
use app\admin\model\Links as LinksModel;
use app\admin\controller\Base;
class Links extends Base
{
    public function lst()
    {
    	$list = LinksModel::paginate(3);
    	$this->assign('list', $list); //分配
        return $this->fetch('list');
    } 

    public function add()
    {
    	if(request()->isPost()){
    		// dump(input('post.'));
    		$data=[
    			'title'=>input('title'),
                'url'=>input('url'),
    			'desc'=>input('desc'),
    		];

    		$validate = \think\Loader::validate('Links');
    		if (!$validate->scene('add')->check($data)) {
    			$this->error($validate->getError());
    			die;
    		}

    		if(db('links')->insert($data)){
    			return $this->success('添加链接成功！', 'lst');
    		}else{
    			return $this->error('添加链接失败！');
    		}
    		return;
    	}
        return $this->fetch('add');
    }

    public function edit(){
    	$id=input('id');
    	$links=db('links')->find($id);
    	if(request()->isPost()){
    		$data=[
    			'id'=>input('id'),
    			'title'=>input('title'),
                'url'=>input('url'),
                'desc'=>input('desc'),
    		];

    		$validate = \think\Loader::validate('Links');
    		if (!$validate->scene('edit')->check($data)) {
    			$this->error($validate->getError());
    			die;
    		}

    		if(db('links')->update($data)){
    			$this->success('修改链接信息成功！', 'lst');
    		}else{
    			$this->error('修改链接失败！');
    		}
    		return;
    	}
    	// dump($admins);die;
    	$this->assign('links', $links);
        return $this->fetch();
    }

    public function del(){
    	$id=input('id');
		if(db('links')->delete(input('id'))){
			$this->success('删除链接成功！', 'lst');
		}else{
			$this->error('删除链接失败！');
		}
    }
}
