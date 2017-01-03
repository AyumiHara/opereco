//
//  KarteViewController.swift
//  opereko
//
//  Created by 原 あゆみ on 2016/12/26.
//  Copyright © 2016年 原 あゆみ. All rights reserved.
//

import UIKit

class KarteViewController: UIViewController{
    @IBOutlet var karteId: UITextField?
    @IBOutlet var name: UITextField?
    @IBOutlet var animalType: UITextField?
    @IBOutlet var breed: UITextField?
    @IBOutlet var birthday: UIDatePicker?
    @IBOutlet var sex: UITextField?
    @IBOutlet var weight: UITextField?
    @IBOutlet var faceImage: UIImageView?
    @IBOutlet var bodyImage: UIImageView?
    @IBOutlet var opeDate: UIDatePicker?
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let appDelegate:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        _ = appDelegate.blendName
        

        // Do any additional setup after loading the view.
    }
    
    class SecondViewController: UIViewController {
        
        
        //var parameters: [String : String] = [:] // 画面遷移後は ["hello": "こんにちは", "goodbye": "さようなら"]
        
        // Anything...
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
