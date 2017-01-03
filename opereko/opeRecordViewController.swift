//
//  opeRecordViewController.swift
//  opereko
//
//  Created by 原 あゆみ on 2016/12/28.
//  Copyright © 2016年 原 あゆみ. All rights reserved.
//

import UIKit

class opeRecordViewController: UIViewController {
    
    @IBOutlet var karteId: UITextField?
    @IBOutlet var name: UITextField?
    @IBOutlet var sex:UITextField?
    @IBOutlet var opeDate:UIDatePicker?
    @IBOutlet var assistant:UITextField?
    @IBOutlet var equipment:UITextField?
    @IBOutlet var opeDetails:UITextView?
    @IBOutlet var surgeon:UITextField?
    @IBOutlet var anesthesia:UITextField?
    @IBOutlet var record:UITextField?
    
   
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
