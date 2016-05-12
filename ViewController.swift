//
//  ViewController.swift
//  5833_4.21
//
//  Created by zx5833 on 16/4/21.
//  Copyright © 2016年 zx5833. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
        
        var db:SQLiteDB!
        
        @IBOutlet var txtUname: UITextField!
        @IBOutlet var txtMobile: UITextField!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            //获取数据库实例
            db = SQLiteDB.sharedInstance()
            //如果表还不存在则创建表（其中uid为自增主键）
            db.execute("create table if not exists t_user(uid integer primary key,uname varchar(20),mobile varchar(20))")
            //如果有数据则加载
            initUser()
        }
        
        //点击保存
        @IBAction func saveClicked(sender: AnyObject) {
            saveUser()
        }
        
        //从SQLite加载数据
        func initUser() {
            let data = db.query("select * from t_user")
            if data.count > 0 {
                //获取最后一行数据显示
                let user = data[data.count - 1]
                txtUname.text = user["uname"] as? String
                txtMobile.text = user["mobile"] as? String
            }
        }
        
        //保存数据到SQLite
        func saveUser() {
            let uname = self.txtUname.text!
            let mobile = self.txtMobile.text!
            //插入数据库，这里用到了esc字符编码函数，其实是调用bridge.m实现的
            let sql = "insert into t_user(uname,mobile) values('\(uname)','\(mobile)')"
            print("sql: \(sql)")
            //通过封装的方法执行sql
            let result = db.execute(sql)
            print(result)
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
        }
    @IBOutlet weak var defen: UILabel!
    var x:Double=0.0;
    var y:Double=0.0;
    @IBOutlet weak var defen2: UILabel!
    var x1:Double=0.0;
    var y2:Double=0.0;
    @IBAction func jiayifen1(sender: UIButton) {
        var a:Int32=0
        var b:Int32=0
        var c:Int32=0
        if(!yifen1.text!.isEmpty){
            a=(yifen1.text! as NSString).intValue
        }
        if(!defen.text!.isEmpty){
            b=(defen.text! as NSString).intValue
        }
        c=a+b
        defen.text="\(c)"
    }
    @IBAction func jialiangfen1(sender: UIButton) {
        var a:Int32=0
        var b:Int32=0
        var c:Int32=0
        if(!liangfen1.text!.isEmpty){
            a=(liangfen1.text! as NSString).intValue
        }
        if(!defen.text!.isEmpty){
            b=(defen.text! as NSString).intValue
        }
        c=a+b
        defen.text="\(c)"
    }
    @IBAction func jiasanfen1(sender: UIButton) {
        var a:Int32=0
        var b:Int32=0
        var c:Int32=0
        if(!sanfen1.text!.isEmpty){
            a=(sanfen1.text! as NSString).intValue
        }
        if(!defen.text!.isEmpty){
            b=(defen.text! as NSString).intValue
        }
        c=a+b
        defen.text="\(c)"
    }
    @IBAction func jiayifen2(sender: UIButton) {
        var d:Int32=0
        var e:Int32=0
        var f:Int32=0
        if(!yifen2.text!.isEmpty){
            d=(yifen2.text! as NSString).intValue
        }
        if(!defen2.text!.isEmpty){
            e=(defen2.text! as NSString).intValue
        }
        f=d+e
        defen2.text="\(f)"
    }
    @IBAction func jialiangfen2(sender: UIButton) {
        var d:Int32=0
        var e:Int32=0
        var f:Int32=0
        if(!liangfen2.text!.isEmpty){
            d=(liangfen2.text! as NSString).intValue
        }
        if(!defen2.text!.isEmpty){
            e=(defen2.text! as NSString).intValue
        }
        f=d+e
        defen2.text="\(f)"
    }
    
    @IBAction func jiasanfen2(sender: UIButton) {
        var d:Int32=0
        var e:Int32=0
        var f:Int32=0
        if(!sanfen2.text!.isEmpty){
            d=(sanfen2.text! as NSString).intValue
        }
        if(!defen2.text!.isEmpty){
            e=(defen2.text! as NSString).intValue
        }
        f=d+e
        defen2.text="\(f)"
    }
    @IBAction func qingchu(sender: UIButton) {
        defen.text!="0";
        x=0.0;
        y=0.0;
        defen2.text!="0";
        x1=0.0;
        y2=0.0;
    }
    @IBOutlet weak var yifen1: UILabel!
    @IBOutlet weak var liangfen1: UILabel!
    @IBOutlet weak var sanfen1: UILabel!
    @IBOutlet weak var yifen2: UILabel!
    @IBOutlet weak var liangfen2: UILabel!
    @IBOutlet weak var sanfen2: UILabel!
    
    @IBOutlet weak var ershisi: UILabel!
    

}
