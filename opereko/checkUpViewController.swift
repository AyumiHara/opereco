//
//  checkUpViewController.swift
//  opereko
//
//  Created by 原 あゆみ on 2016/12/29.
//  Copyright © 2016年 原 あゆみ. All rights reserved.
//

import UIKit

class checkUpViewController: UIViewController {
    
    @IBOutlet var kaeteId:UITextField?
    @IBOutlet var name:UITextField?
    @IBOutlet var opeDate:UIDatePicker?
    @IBOutlet var opeRisk:UITextField?
    @IBOutlet var checkUp:UITextField?
    @IBOutlet var opeCategory:UITextField?
    @IBOutlet var opeDetails:UITextView?
    @IBOutlet var bodyImage:UIImageView?

    override func viewDidLoad() {
        super.viewDidLoad()
      

        // Do any additional setup after loading the view.
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
