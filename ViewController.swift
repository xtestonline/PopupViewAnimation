//
//  ViewController.swift
//  PopupViewAnimation
//
//  Created by Suraj MAC2 on 3/19/16.
//  Copyright © 2016 supaint. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
//TODO: - General
    
    var popupView : UIView = UIView()
    
//TODO: - Controlls
    
    
    
    
//TODO: - Let's Play
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.view.backgroundColor = UIColor.lightGrayColor()
        
        popupView = UIView(frame: CGRectMake(10,200,self.view.bounds.size.width*0.9,self.view.bounds.size.height*0.5))
        popupView.backgroundColor = UIColor.brownColor()
        popupView.layer.shadowRadius = 5.0
        popupView.layer.shadowColor = UIColor.lightGrayColor().CGColor
        popupView.center = self.view.center
        
        self.view.addSubview(popupView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
//TODO: - Button Action

    @IBAction func btnDisplayClick(sender: AnyObject) {
        
        UIView.animateWithDuration(0.1, animations: { () -> Void in
            
            
           // self.popupView.transform = CGAffineTransformTranslate(CGAffineTransform.init(a: 0, b: 0, c: 0, d: 0, tx: 5, ty: 5), 10, 10)
            
            }) { (Value:Bool) -> Void in
                UIView.animateWithDuration(0.0, animations: { () -> Void in
                    //self.popupView.transform = CGAffineTransformMakeScale(0.6, 0.6)
                    let hourVal =  CGAffineTransformMakeScale(0.2, 0.2)
                    self.popupView.layer.setAffineTransform(hourVal)
                    
                    }) { (Value:Bool) -> Void in
                        UIView.animateWithDuration(0.6, animations: { () -> Void in
                            self.popupView.transform = CGAffineTransformIdentity
                            }, completion: nil)
                }
        }
     }
    
       
}

