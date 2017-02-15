//
//  InputViewController.swift
//  opereko
//
//  Created by 原 あゆみ on 2016/12/25.
//  Copyright © 2016年 原 あゆみ. All rights reserved.
//

import Foundation
import UIKit
import RealmSwift

class InputViewController: UIViewController {
    
   
    @IBOutlet weak var titleTextField: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleTextField.frame.size.height = 30
      
   

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //Buttonが押された時の処理
    @IBAction func addButtonTapped(sender: AnyObject) {
        
    }
   
    
    
       
    
    
    /*   @IBAction func addButtonTapped(sender: AnyObject) {
        let newTodo = ToDo() */
        
        // textFieldに入力したデータをnewTodoのtitleに代入
    //    newTodo.title = titleTextField.text!
        
        // 上記で代入したテキストデータを永続化するための処理
     /*   do{
            let realm = try Realm()
            try realm.write({ () -> Void in
                realm.add(newTodo)
                print("ToDo Saved")
            })
        }catch{
            print("Save is Faild")
        }
        // 最後に、TableViewControllerに表示を切り替える       self.navigationController?.popToRootViewControllerAnimated(true)
    }　*/

}

