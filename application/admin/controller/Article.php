<?php
namespace app\admin\controller;
use think\Controller;
use app\admin\model\Article as ArticleModel;
use app\admin\controller\Base;
class Article extends Base
{
    public function lst()
    {
    	$list = ArticleModel::paginate(3);
    	$this->assign('list', $list); //分配
        return $this->fetch('list');
    } 

    public function add()
    {
    	if(request()->isPost()){
    		// dump($_POST);die;
    		$data=[
    			'title'=>input('title'),
                'author'=>input('author'),
                'desc'=>input('desc'),
                'keywords'=>str_replace('，', ',', input('keywords')),
                'content'=>input('content'),
                'cateid'=>input('cateid'),
                'time'=>time(),
    		];
            if(input('state')=='on'){
                $data['state']=1;
            }

            if($_FILES['pic']['tmp_name']){
                $file=request()->file('pic');
                // dump($file);die;
                $info = $file->move(ROOT_PATH . 'public' . DS . 'static/uploads');
                $data['pic']='/uploads/'.$info->getSaveName();
            }


    		$validate = \think\Loader::validate('Article');
    		if (!$validate->scene('add')->check($data)) {
    			$this->error($validate->getError());
    			die;
    		}

    		if(db('article')->insert($data)){
    			return $this->success('添加文章成功！', 'lst');
    		}else{
    			return $this->error('添加文章失败！');
    		}
    		return;
    	}
        $cateres=db('cate')->select();
        $this->assign('cateres',$cateres);
        return $this->fetch('add');
    }

    public function edit(){
        $id=input('id');
        $articles=db('Article')->find($id);
        if(request()->isPost()){
            $data=[
                'id'=>input('id'),
                'title'=>input('title'),
                'author'=>input('author'),
                'desc'=>input('desc'),
                'keywords'=>str_replace('，', ',', input('keywords')),
                'content'=>input('content'),
                'cateid'=>input('cateid'),
            ];
            if(input('state')=='on'){
                $data['state']=1;
            }else{
                $data['state']=0;
            }
            if($_FILES['pic']['tmp_name']){
                
                $file = request()->file('pic');
                $info = $file->move(ROOT_PATH . 'public' . DS . 'static/uploads');
                $data['pic']='/uploads/'.$info->getSaveName();
            }
            $validate = \think\Loader::validate('Article');
            if(!$validate->scene('edit')->check($data)){
               $this->error($validate->getError()); die;
            }
            if(db('Article')->update($data)){
                $this->success('修改文章成功！','lst');
            }else{
                $this->error('修改文章失败！');
            }
            return;
        }
        $this->assign('articles',$articles);
        $cateres=db('cate')->select();
        $this->assign('cateres',$cateres);
        return $this->fetch();
    }

    public function del(){
    	$id=input('id');
		if(db('article')->delete(input('id'))){
			$this->success('删除文章成功！', 'lst');
		}else{
			$this->error('删除文章失败！');
		}
    }
}
