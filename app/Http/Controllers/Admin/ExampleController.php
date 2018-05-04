<?php
/**
 * Created by PhpStorm.
 * User: Administrator
 * Date: 2018/1/29
 * Time: 11:53
 */

namespace app\Http\Controllers\Admin;

use App\Components\GoodsManager;
use App\Components\QNManager;
use App\Models\GoodsDetailModel;
use App\Models\GoodsExplainModel;
use App\Models\GoodsModel;
use Illuminate\Http\Request;
use App\Http\Controllers\ApiResponse;

class ExampleController
{
    //创建或编辑
    public function edit(Request $request){
        $data = $request->all();
        $admin = $request->session()->get('admin');
        if (array_key_exists('id', $data)) {
            $goods = GoodsManager::getGoodsById($data['id']);
            //获取商品详情
            $goods_details=GoodsManager::getGoodsDetailByGoodsId($data['id']);
            $goods['details']=$goods_details;

            //获取商品开发和收费详情
            $goods_explains=GoodsManager::getGoodsExplainByGoodsId($data['id']);
            $goods['explains']=$goods_explains;
        }
        else{
            $goods=new GoodsModel();
        }
        //生成七牛token
        $upload_token = QNManager::uploadToken();
        $param=array(
            'admin'=>$admin,
            'data'=>$goods,
            'upload_token'=>$upload_token
        );
        return view('admin.example.edit', $param);
    }

    //删除商品详情
    public function delDetail(Request $request)
    {
        $data=$request->all();
        if(array_key_exists('id',$data)){
            $id=$data['id'];
            if (is_numeric($id) !== true) {
                return ApiResponse::makeResponse(false, ApiResponse::$returnMassage[ApiResponse::FAIL_PARAMETER_TYPE], ApiResponse::FAIL_PARAMETER_TYPE);
            }
            else{
                $goods_detail = GoodsDetailModel::find($id);
                $return=null;
                $result=$goods_detail->delete();
                if($result){
                    return ApiResponse::makeResponse(true, false, ApiResponse::SUCCESS_CODE);
                }
                else{
                    return ApiResponse::makeResponse(false, false, ApiResponse::FAIL_OPERATION);
                }
            }
        }
        else{
            return ApiResponse::makeResponse(false, false, ApiResponse::MISSING_PARAM);
        }
        return $return;
    }
    //编辑商品详情执行
    public function editDoDetail(Request $request){
        $data = $request->all();
        $admin = $request->session()->get('admin');
        $return=null;
        if(array_key_exists('id', $data)){
            $goods_detail = GoodsManager::getGoodsDetailById($data['id']);
        }
        else{
            $goods_detail=new GoodsDetailModel();
        }
        $goods_detail = GoodsManager::setGoodsDetail($goods_detail,$data);
        $result=$goods_detail->save();
        if($result){
            return ApiResponse::makeResponse(true, $goods_detail, ApiResponse::SUCCESS_CODE);
        }
        else{
            return ApiResponse::makeResponse(false, false, ApiResponse::FAIL_OPERATION);
        }
    }

    //删除商品开发和收费详情
    public function delExplain(Request $request)
    {
        $data=$request->all();
        if(array_key_exists('id',$data)){
            $id=$data['id'];
            if (is_numeric($id) !== true) {
                return ApiResponse::makeResponse(false, false, ApiResponse::FAIL_PARAMETER_TYPE);
            }
            else{
                $goods_explain = GoodsExplainModel::find($id);
                $return=null;
                $result=$goods_explain->delete();
                if($result){
                    return ApiResponse::makeResponse(true, $goods_explain, ApiResponse::SUCCESS_CODE);
                }
                else{
                    return ApiResponse::makeResponse(false, false, ApiResponse::FAIL_OPERATION);
                }
            }
        }
        else{
            return ApiResponse::makeResponse(false, false, ApiResponse::MISSING_PARAM);
        }
        return $return;
    }
    //编辑商品开发和收费详情执行
    public function editDoExplain(Request $request){
        $data = $request->all();
        $admin = $request->session()->get('admin');
        $return=null;
        if(array_key_exists('id', $data)){
            $goods_explain = GoodsManager::getGoodsExplainById($data['id']);
        }
        else{
            $goods_explain=new GoodsExplainModel();
        }
        $goods_explain = GoodsManager::setGoodsExplain($goods_explain,$data);
        $result=$goods_explain->save();
        if($result){
            return ApiResponse::makeResponse(true, false, ApiResponse::SUCCESS_CODE);
        }
        else{
            return ApiResponse::makeResponse(false, false, ApiResponse::FAIL_OPERATION);
        }
        return $return;
    }
}