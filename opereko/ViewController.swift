
//
//  ViewController.swift
//  opereko
//
//  Created by 原 あゆみ on 2016/11/20.
//  Copyright © 2016年 原 あゆみ. All rights reserved.
//

import UIKit
import RealmSwift



class ViewController: UIViewController {
    
    let realmDB = UserData()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
//        let realm = try! Realm()
//        realmConnect()
//        //save()
//        dataUpdate()
//        find()
//        //  deleate()
//        //  find()
//        sarch()
        
        
    }
    
    func realmConnect() {
        
        realmDB.name = "メイプル"
        realmDB.karteId = 123456789012
        realmDB.faceImage = NSData()
        realmDB.bodyImage = NSData()
        realmDB.animalType = "犬"
        realmDB.breed = "ゴールデンレトリバー"
        realmDB.birthday = NSDate()
        realmDB.weight = "ほげ"
        realmDB.sex = "ほげ"
        realmDB.opeDate = NSDate()
        realmDB.opeCategory = "ほげ"
        realmDB.opeDetails = "いろいろ"
        realmDB.opeRisk = "ほげ"
        realmDB.checkUp = "ほげ"
        realmDB.surgeon = "ほげ"
        realmDB.surgeon = "ほげ"
        realmDB.equipment = "ほげ"
        realmDB.assistant = "ほげ"
        realmDB.anesthesia = "ほげ"
        realmDB.record = "ほげ"
        
        
        self.save();
        self.find();
    }
    
    /**
     保存処理
     */
    func save() {
        do {
            let realm = try Realm()
            
            try realm.write {
                realm.add(self.realmDB)
            }
        } catch {
            
        }
    }
    
    func find() {
        let realm = try! Realm()
        let dataContent = realm.objects(UserData)
        print("はらちゃん")
        print(dataContent)
    }
    
    func dataUpdate() {
        
        do {
            let realm = try! Realm()
            
            let data = realm.objects(UserData).last!
            try realm.write {
                //                data.nickname = "hirokazu"
                data.name = "新しい"
                data.karteId = 1111111111111
                data.faceImage = NSData()
                data.bodyImage = NSData()
                data.animalType = "ワン"
                data.breed = "いぬ"
                data.birthday = NSDate()
                data.weight = "ほげ"
                data.sex = "ネギ"
                data.opeDate = NSDate()
                data.opeCategory = "ネギ"
                data.opeDetails = "ネギ"
                data.opeRisk = "ネギ"
                data.checkUp = "ネギ"
                data.surgeon = "ネギ"
                data.surgeon = "ネギ"
                data.equipment = "ネギ"
                data.assistant = "ネギ"
                data.anesthesia = "ネギ"
                data.record = "ネギ"
                
            }
            
        } catch {
            
        }
    }
    
    func deleate() {
        
        do {
            let realm = try! Realm()
            
            let data = realm.objects(UserData).last!
            
            try realm.write {
                realm.delete(data)
                
            }
            
        } catch {
            
        }
    }
    
    func sarch() {
        do {
            let realm = try! Realm()
            
            
            
            
            let user = realm.objects(UserData).filter("name == '新しい'")
            user.count // => 0 （この時点では、Dogオブジェクトはまだ１件も保存されていません）
            
            
            
        } catch {
            
        }
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
}

