//
//  opeRecordViewController.swift
//  opereko
//
//  Created by 原 あゆみ on 2016/12/28.
//  Copyright © 2016年 原 あゆみ. All rights reserved.
//

import UIKit
import RealmSwift

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
    var realmUser : UserData!
    static var tag : Int = 0
    static var id : String = "0"

    let realm = try! Realm()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
              
        print("tag:" + String(KarteViewController.tag))
        print("id:" + String(KarteViewController.id))
        
        if KarteViewController.tag == 1 {
            let UserDataItemArray = realm.objects(UserData.self).filter("karteId == %@", KarteViewController.id )
            
            if UserDataItemArray.count == 1 {
                
                karteId?.text = UserDataItemArray[0].karteId
                name?.text = UserDataItemArray[0].name
                assistant?.text = UserDataItemArray[0].assistant
                equipment?.text =  UserDataItemArray[0].equipment
                sex?.text = UserDataItemArray[0].sex
                opeDetails?.text = UserDataItemArray[0].opeDetails
                surgeon?.text = UserDataItemArray[0].surgeon
                anesthesia?.text = UserDataItemArray[0].anesthesia
                record?.text = UserDataItemArray[0].record
                opeDate?.date = UserDataItemArray[0].opeDate as Date
                
                
            }
            
            
        }

     
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func save() {
        
/*        realmUser.assistant = (assistant?.text)!
        realmUser.equipment = (equipment?.text)!
        realmUser.surgeon = (surgeon?.text)!
        realmUser.anesthesia = (anesthesia?.text)!
        realmUser.record = (record?.text)!
*/        
        
            
            // 追加するデータを用意
            let userData = UserData()
            
            
            userData.karteId = karteId?.text ?? "hoge"
            userData.name = name?.text ?? "hoge"
            userData.assistant = assistant?.text ?? "hoge"
            userData.equipment = equipment?.text ?? "hoge"
            userData.opeDetails = opeDetails?.text ?? "hoge"
            userData.sex = sex?.text ?? "hoge"
            userData.surgeon = surgeon?.text ?? "hoge"
            userData.anesthesia = anesthesia?.text ?? "hoge"
            userData.record = record?.text ?? "hoge"
            userData.opeDate = (opeDate?.date as NSDate?? ?? NSDate())!
            
                        
            // データを追加
            try! realm.write() {
                realm.add(userData)
            }
            
            let datas = realm.objects(UserData.self)
            
            print(datas)
            
            
            
            
       
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
