//
//  realm.swift
//  opereko
//
//  Created by 原 あゆみ on 2016/12/24.
//  Copyright © 2016年 原 あゆみ. All rights reserved.
//

import Foundation
import RealmSwift

class RealmUser: Object {
    dynamic var name = "ほげ"
    dynamic var karteId: Int64 = 0
    dynamic var faceImage = NSData()
    dynamic var bodyImage = NSData()
    dynamic var animalType = "ほげ"
    dynamic var breed = "ほげ"
    dynamic var birthday = NSDate()
    dynamic var weight: Float = 0.0
    dynamic var sex = "ほげ"
    dynamic var opeDate = NSDate()
    dynamic var opeCategory = "ほげ"
    dynamic var opeDetails = "ほげ"
    dynamic var opeRisk: Int16 = 0
    dynamic var checkUp = "ほげ"
    dynamic var surgeon = "ほげ"
    dynamic var assistant = "ほげ"
    dynamic var equipment = "ほげ"
    dynamic var anesthesia = "ほげ"
    dynamic var record = "ほげ"
    
}

