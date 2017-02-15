//
//  checkUpViewController.swift
//  opereko
//
//  Created by 原 あゆみ on 2016/12/29.
//  Copyright © 2016年 原 あゆみ. All rights reserved.
//

import UIKit
import RealmSwift

class checkUpViewController: UIViewController {
    
    @IBOutlet var kaeteId:UITextField?
    @IBOutlet var name:UITextField?
    @IBOutlet var opeDate:UIDatePicker?
    @IBOutlet var opeRisk:UITextField?
    @IBOutlet var checkUp:UITextField?
    @IBOutlet var opeCategory:UITextField?
    @IBOutlet var opeDetails:UITextView?
    @IBOutlet var bodyImage:UIImageView?
    @IBOutlet var sex:UITextField?

    static var tag : Int = 0
    static var id : String = "0"
    var realmUser : UserData!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Realmのインスタンスを取得
        let realm = try! Realm()
        
        // Realmに保存されてるDog型のオブジェクトを全て取得
        let userDataItem = realm.objects(UserData)
        
        // ためしに名前を表示
        for userData in userDataItem {
            print("name: \(userData.name)")
        }
        // Do any additional setup after loading the view.
        
        if KarteViewController.tag == 1 {
            let UserDataItemArray = realm.objects(UserData.self).filter("karteId == %@", KarteViewController.id )
            
            if UserDataItemArray.count == 1 {
                
                kaeteId?.text = UserDataItemArray[0].karteId
                name?.text = UserDataItemArray[0].name
                opeRisk?.text = UserDataItemArray[0].opeRisk
                checkUp?.text =  UserDataItemArray[0].checkUp
                sex?.text = UserDataItemArray[0].sex
                opeDetails?.text = UserDataItemArray[0].opeDetails
                opeCategory?.text = UserDataItemArray[0].opeCategory
                bodyImage?.image = UIImage(data: UserDataItemArray[0].bodyImage as Data)
                opeDate?.date = UserDataItemArray[0].opeDate as Date
                
                
            }
            
            
        }

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func save() {
        let userData = UserData()
        userData.opeRisk = (checkUp?.text)!
        userData.checkUp = (checkUp?.text)!
        userData.opeCategory = (opeCategory?.text)!
        userData.opeDetails = (opeDetails?.text)!
        
        
        userData.karteId = kaeteId?.text ?? "hoge"
        userData.name = name?.text ?? "hoge"
        userData.opeRisk = opeRisk?.text ?? "hoge"
        userData.checkUp = checkUp?.text ?? "hoge"
        userData.opeDate = (opeDate?.date as NSDate?? ?? NSDate())!
        userData.opeCategory = opeCategory?.text ?? "hoge"
        userData.opeDetails = opeDetails?.text ?? "hoge"
        userData.bodyImage = UIImagePNGRepresentation(bodyImage?.image ?? UIImage(named:"youtube.jpg")!)! as NSData
        

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
