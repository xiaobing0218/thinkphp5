<?php

namespace app\admin\controller;

use app\common\controller\Backend;
use app\admin\model\Reserve as ReserveModel;
/**
 * 系统配置
 *
 * @icon fa fa-circle-o
 */
class Reserve extends Backend
{
    
    /**
     * Reserve模型对象
     * @var \app\admin\model\Reserve
     */
    protected $model = null;

    public function _initialize()
    {
        parent::_initialize();
        $this->model = new \app\admin\model\Reserve;
        //$this->model = model('Config');
        ReserveModel::event('before_write', function ($row) {
            if (isset($row['name']) && $row['name'] == 'name' && preg_match("/fast" . "admin/i", $row['value'])) {
                throw new Exception(__("Site name incorrect"));
            }
        });
    }
    
    /**
     * 默认生成的控制器所继承的父类中有index/add/edit/del/multi五个基础方法、destroy/restore/recyclebin三个回收站方法
     * 因此在当前控制器中可不用编写增删改查的代码,除非需要自己控制这部分逻辑
     * 需要将application/admin/library/traits/Backend.php中对应的方法复制到当前控制器,然后进行修改
     */
    
    /**
     * 查看
     */
    public function index()
    {
        $siteList = [];
        $groupList = ReserveModel::getGroupList();
        //var_dump($groupList);exit();

        foreach ($groupList as $k => $v) {
            $siteList[$k]['name'] = $k;
            $siteList[$k]['title'] = $v;
            $siteList[$k]['list'] = [];
        }

        foreach ($this->model->all() as $k => $v) {
            if (!isset($siteList[$v['group']])) {
                continue;
            }
            $value = $v->toArray();
            $value['title'] = __($value['title']);
            if (in_array($value['type'], ['select', 'selects', 'checkbox', 'radio'])) {
                $value['value'] = explode(',', $value['value']);
            }
            $value['content'] = json_decode($value['content'], true);
            $value['tip'] = htmlspecialchars($value['tip']);
            $siteList[$v['group']]['list'][] = $value;
        }
        $index = 0;
        foreach ($siteList as $k => &$v) {
            $v['active'] = !$index ? true : false;
            $index++;
        }
        $this->view->assign('siteList', $siteList);
        // $this->view->assign('typeList', ReserveModel::getTypeList());
        // $this->view->assign('ruleList', ReserveModel::getRegexList());
        $this->view->assign('groupList', ReserveModel::getGroupList());
        return $this->view->fetch();
    }


}
