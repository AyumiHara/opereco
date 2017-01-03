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
    
    
    
     let realmDB = RealmUser()
    
    @IBOutlet weak var tableView: UITableView!
     
    var RealmUserItem: Results<RealmUser>!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName:"CustomCell",bundle:nil), forCellReuseIdentifier: "Cell")

        
        tableView.delegate = self
        tableView.dataSource = self
        save()
        

        do{
            let realm = try Realm()
            RealmUserItem = realm.objects(RealmUser)
            tableView.reloadData()
        }catch{
            
        }
        
    }
    
    class FirstViewController: UIViewController {
        
        let parameters = ["hello": "こんにちは", "goodbye": "さようなら"]
        
        // Anything...
        
        func segueToSecondViewController() {
            self.performSegue(withIdentifier: "toSecondViewController", sender: self.parameters)
        }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "toSecondViewController" {
                let secondViewController = segue.destination as! KarteViewController
      //          KarteViewController.parameters = sender as! [String : String]
            }
        }
        
    }

    
    // 追加 画面が表示される際などにtableViewのデータを再読み込みする
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
             // tableView.reloadData()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int)->Int {
        let count = RealmUserItem.count
        return count
    }
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)  as! CustomCell
        
        // todoItemに代入されたデータをobject:NSArrayに代入
        let object = RealmUserItem[indexPath.row]
        

        cell.leftLabel.text =  object.name
        cell.rightLabel.text = String(object.karteId)
        return cell
    }
    
    func save() {
        do {
            let realm = try Realm()
            
            try realm.write {
                realm.add(self.realmDB)
            }
        } catch {
            
        }
    }
    
     func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        performSegue(withIdentifier: "toDetailViewController", sender: self)
    }
    
}
