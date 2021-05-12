//
//  user.swift
//  OnlineTeachingSystem
//
//  Created by 张健浩 on 2021/5/8.
//

import Foundation
import SwiftUI

struct UserMineDetailModel: Codable {
    
    var user_id: Int
    var user_name: String
    
    var role_category: Int
    
    var role_name: String {
        if (role_category == 2) {
            return "teacher"
        } else if (role_category == 3) {
            return "manager"
        } else {
            return "student"
        }
    }
    
    
    var common_name: String
    
    var user_desc: String?
    var user_gender: Int
    
    var user_grade: Int?
    var user_class: Int?
    
    
    var user_image: Image? {
        return Image("\(user_id)")
//        NSNumber(value: uuser.user_id).stringValue
    }
    
    
    
    
}
