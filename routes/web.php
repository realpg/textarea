<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
//后台
//登录
Route::get('/admin/login', 'Admin\LoginController@login');        //登录
Route::post('/admin/login', 'Admin\LoginController@loginDo');   //post登录请求
Route::get('/admin/loginout', 'Admin\LoginController@loginout');  //注销
Route::group(['prefix' => 'admin', 'middleware' => ['admin.login']], function () {

    //首页
    Route::get('/', 'Admin\IndexController@index');       //首页
    Route::get('/index', 'Admin\IndexController@index');  //首页
    Route::get('/welcome', 'Admin\IndexController@welcome');  //欢迎页

    //错误页面
    Route::get('/error/500', 'Admin\IndexController@error');  //错误页面

    //示例一
    Route::get('/example/edit', 'Admin\ExampleController@edit');  //创建或编辑示例一
    Route::post('/example/edit', 'Admin\ExampleController@editDo');  //创建或编辑示例一
    Route::get('/example/detail/del', 'Admin\ExampleController@delDetail');  //删除示例一详情信息
    Route::post('/example/detail/edit', 'Admin\ExampleController@editDoDetail');  //编辑示例一详情信息
    Route::get('/example/explain/del', 'Admin\ExampleController@delExplain');  //删除示例一开发和收费详情信息
    Route::post('/example/explain/edit', 'Admin\ExampleController@editDoExplain');  //编辑示例一开发和收费详情信息


});


Auth::routes();
