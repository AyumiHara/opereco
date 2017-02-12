//
//  KarteViewController.swift
//  opereko
//
//  Created by 原 あゆみ on 2016/12/26.
//  Copyright © 2016年 原 あゆみ. All rights reserved.
//

import UIKit
import RealmSwift

class KarteViewController: UIViewController,UITextFieldDelegate {
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
   var realmUser : UserData!
   
    static var tag : Int = 0
   
    static var id : String = "0"
   // Realmのインスタンスを取得
   let realm = try! Realm()

   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        name?.delegate = self
      
      
      print("tag:" + String(KarteViewController.tag))
      print("id:" + String(KarteViewController.id))
      
      if KarteViewController.tag == 1 {
         let UserDataItemArray = realm.objects(UserData.self).filter("karteId == %@", KarteViewController.id )
         
         if UserDataItemArray.count == 1 {
            
            karteId?.text = UserDataItemArray[0].karteId
            name?.text = UserDataItemArray[0].name
            animalType?.text = UserDataItemArray[0].animalType
            breed?.text =  UserDataItemArray[0].animalType
            birthday?.date = UserDataItemArray[0].birthday as Date
            sex?.text = UserDataItemArray[0].sex
            weight?.text = UserDataItemArray[0].weight
            faceImage?.image = UIImage(data: UserDataItemArray[0].faceImage as Data)
            bodyImage?.image = UIImage(data: UserDataItemArray[0].bodyImage as Data)
            opeDate?.date = UserDataItemArray[0].opeDate as Date

            
         }
         
         
      }
      
      
    }
    
   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   @IBAction func save(){
      
      
      // 追加するデータを用意
      let userData = UserData()
      
      
      userData.karteId = karteId?.text ?? "hoge"
      userData.name = name?.text ?? "hoge"
      userData.animalType = animalType?.text ?? "hoge"
      userData.breed = breed?.text ?? "hoge"
      userData.birthday = (birthday?.date as NSDate?? ?? NSDate())!
      userData.sex = sex?.text ?? "hoge"
      userData.weight = weight?.text ?? "hoge"
      userData.faceImage = UIImagePNGRepresentation(faceImage?.image ?? UIImage(named :"youtube.jpg")!)! as NSData
      userData.bodyImage = UIImagePNGRepresentation(bodyImage?.image ?? UIImage(named:"youtube.jpg")!)! as NSData
      userData.opeDate = (opeDate?.date as NSDate?? ?? NSDate())!
      
      
      
      
      
      // データを追加
      try! realm.write() {
         realm.add(userData)
      }
      
      let datas = realm.objects(UserData.self)
      
      print(datas)

      
      
      
   }
   
   
   func textFieldShouldReturn(_ textField: UITextField) -> Bool{
      
      // キーボードを閉じる
      textField.resignFirstResponder()
      
      return true
   }
   
  
    @IBAction func checkUp(_ sender: Any) {
        performSegue(withIdentifier: "toCheckUpViewController", sender: self)
    }
    
    @IBAction func opeRecord(_ sender: Any) {
        performSegue(withIdentifier: "toOpeRecordViewController", sender: self)
    }


    @IBAction func afterOpeClick(_ sender: Any) {
        
         performSegue(withIdentifier: "toAfterOpeViewController", sender: self)
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
