<?php
namespace app\admin\controller;
use think\Controller;
use app\admin\model\Cate as CateModel;

class Cate extends Controller
{
    public function lst()
    {
    	$list = CateModel::paginate(3);
    	$this->assign('list', $list); //分配
        return $this->fetch('list');
    } 

    public function add()
    {
    	if(request()->isPost()){
    		// dump(input('post.'));
    		$data=[
    			'catename'=>input('catename'),
    		];

            // dump($data);die;
            $validate = \think\Loader::validate('Cate');
            // dump($validate->scene('add')->check($data));die;
    		if (!$validate->scene('add')->check($data)) {
    			$this->error($validate->getError());
    			die;
    		}

    		if(db('cate')->insert($data)){
    			return $this->success('添加栏目成功！', 'lst');
    		}else{
    			return $this->error('添加栏目失败！');
    		}
    		return;
    	}
        return $this->fetch('add');
    }

    public function edit(){
    	$id=input('id');
    	$cates=db('cate')->find($id);
    	if(request()->isPost()){
    		$data=[
    			'id'=>input('id'),
    			'catename'=>input('catename')
    		];

    		$validate = \think\Loader::validate('Cate');
    		if (!$validate->scene('edit')->check($data)) {
    			$this->error($validate->getError());
    			die;
    		}

    		if(db('cate')->update($data)){
    			$this->success('修改栏目信息成功！', 'lst');
    		}else{
    			$this->error('修改栏目失败！');
    		}
    		return;
    	}
    	// dump($admins);die;
    	$this->assign('cates', $cates);
        return $this->fetch();
    }

    public function del(){
    	$id=input('id');
    	if($id != 2){
    		if(db('cate')->delete(input('id'))){
    			$this->success('删除栏目成功！', 'lst');
    		}else{
    			$this->error('删除栏目失败！');
    		}
    	}else{
    		$this->error('初始化栏目不能删除！');
    	}
    }
}
