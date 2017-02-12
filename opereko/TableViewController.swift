//
//  TableViewController.swift
//  opereko
//
//  Created by 原 あゆみ on 2016/12/25.
//  Copyright © 2016年 原 あゆみ. All rights reserved.
//

import Foundation
import UIKit
import RealmSwift

class TableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    
     let realmDB = UserData()
    
    @IBOutlet weak var tableView: UITableView!
     
    var UserDataItemArray: Results<UserData>!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName:"CustomCell",bundle:nil), forCellReuseIdentifier: "Cell")

        
        tableView.delegate = self
        tableView.dataSource = self

        do{
            let realm = try Realm()
            UserDataItemArray = realm.objects(UserData.self)
            tableView.reloadData()
        }catch{
            
        }
        
    }
    
    
    
    // 追加 画面が表示される際などにtableViewのデータを再読み込みする
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        do{
            let realm = try Realm()
            UserDataItemArray = realm.objects(UserData.self)
            tableView.reloadData()
        }catch{
            
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)->Int {
        let count = UserDataItemArray.count
        return count
    }
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)  as! CustomCell
        
        // todoItemに代入されたデータをobject:NSArrayに代入
        let object : UserData = UserDataItemArray[indexPath.row]
        

        cell.leftLabel.text =  object.name
        cell.rightLabel.text = object.karteId
        return cell
    }
    
    
    
    func tableView(_ table: UITableView,didSelectRowAt indexPath: IndexPath) {
        KarteViewController.tag = 1
        KarteViewController.id = UserDataItemArray[indexPath.row].karteId
                
        performSegue(withIdentifier: "toKarteViewController", sender: self)
    }
    
    
    @IBAction func save(_ sender: Any) {
        KarteViewController.tag = 2
         performSegue(withIdentifier: "toKarteViewController", sender: self)
        
        
    }
    
}
