<?php
namespace app\index\controller;
use app\index\controller\Base;
class Article extends Base
{
    public function index()
    {
    	$arid=input('arid');
    	$articles=db('article')->find($arid);
        $ralateres=$this->ralat($articles['keywords'],$articles['id']);
    	db('article')->where('id','=',$arid)->setInc('click');
    	$cates=db('cate')->find($articles['cateid']);
    	$recres=db('article')->where(array('cateid'=>$cates['id'], 'state'=>1))->limit(8)->select();
    	$this->assign(array(
    		'articles'=>$articles,
    		'cates'=>$cates,
    		'recres'=>$recres,
            'ralateres'=>$ralateres
    	));
        return $this->fetch('article');
    }

    public function ralat($keywords,$id){
        $arr=explode(',', $keywords);
        static $ralateres=array();
        foreach ($arr as $key => $value) {
            $map['keywords']=['like','%'.$value.'%'];
            $map['id']=['neq',$id];
            $aryres=db('article')->where($map)->order('id desc')->limit(8)->select();
            $ralateres=array_merge($ralateres,$aryres);
        }
        if($ralateres){
            $ralateres=arr_unique($ralateres);
            return $ralateres;
        }
    }
}
