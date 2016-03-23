//
//  ViewController.swift
//  PhotoManager
//
//  Created by 武淅 段 on 16/3/23.
//  Copyright © 2016年 武淅 段. All rights reserved.
//

import UIKit

public let kPhotoStoryboardID:String = "photoVC"

class ViewController: UIViewController, UIAlertViewDelegate{

    @IBOutlet weak var bgImage: UIImageView!
    //private weak var alert : UIAlertView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path1: String! = NSBundle.mainBundle().pathForResource("bg1", ofType: "jpeg")
        let path2: String! = NSBundle.mainBundle().pathForResource("bg2", ofType: "jpeg")
        let path3: String! = NSBundle.mainBundle().pathForResource("bg3", ofType: "jpeg")
        let path4: String! = NSBundle.mainBundle().pathForResource("bg4", ofType: "jpeg")
        let bg1 = UIImage(contentsOfFile: path1)
        let bg2 = UIImage(contentsOfFile: path2)
        let bg3 = UIImage(contentsOfFile: path3)
        let bg4 = UIImage(contentsOfFile: path4)
        var bgArr = [UIImage!]()
        bgArr.append(bg1)
        bgArr.append(bg2)
        bgArr.append(bg3)
        bgArr.append(bg4)
        
        let index : UInt32! = arc4random()%4
        let im = bgArr[Int(index)]
        bgImage.image = im
        bgImage.contentMode = UIViewContentMode.ScaleAspectFill
        
        let alert = UIAlertView()
        alert.title = "Login"
        alert.message = "Please input password"
        alert.delegate = self
        alert.addButtonWithTitle("cancle")
        alert.addButtonWithTitle("done")
        alert.cancelButtonIndex = 0
        alert.alertViewStyle = UIAlertViewStyle.LoginAndPasswordInput
        alert.show()
        
        
    }

    
    func alertView(alertView: UIAlertView, clickedButtonAtIndex buttonIndex: Int) {
        
        if(buttonIndex == 1){
            
            //let name = alertView.textFieldAtIndex(0)?.text
            //let password = alertView.textFieldAtIndex(1)?.text
            //if(password == "1134532311" || name == "1134532311"){
                print("done")
                let sb = UIStoryboard(name: "Main", bundle: nil)
                let photoVC : UIViewController = sb.instantiateViewControllerWithIdentifier(kPhotoStoryboardID)
                self.presentViewController(photoVC, animated: true, completion: nil)
                
            //}
        }
    }


}

