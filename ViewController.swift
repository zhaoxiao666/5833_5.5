//
//  ViewController.swift
//  5833_4.21
//
//  Created by zx5833 on 16/4/21.
//  Copyright © 2016年 zx5833. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
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
    @IBAction func jian(sender: UIButton) {
        var g:Int32=0
        var h:Int32=0
        var i:Int32=0
        if(!yifen2.text!.isEmpty){
            g=(yifen2.text! as NSString).intValue
        }
        if(!ershisi.text!.isEmpty){
            h=(ershisi.text! as NSString).intValue
        }
        i=h-g
        ershisi.text="\(i)"
    
}

}