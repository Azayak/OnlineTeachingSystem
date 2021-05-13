//
//  UserMineViewModel.swift
//  OnlineTeachingSystem
//
//  Created by 张健浩 on 2021/5/13.
//

import Foundation

class UserMineViewModel: ObservableObject {
    @Published var userMineDetail: UserMineDetailModel = UserMineDetailModel(user_id: db_users[1].user_id, user_name: db_users[1].user_name, role_category: db_users[1].role_category, common_name: db_users[1].common_name, user_desc: db_users[1].user_desc, user_gender: db_users[1].user_gender, user_grade: db_users[1].user_grade, user_class: db_users[1].user_class)
    
    
    init(user_id: Int) {
        for db_user in db_users {
            if user_id == db_user.user_id {
                self.userMineDetail = UserMineDetailModel(user_id: db_user.user_id, user_name: db_user.user_name, role_category: db_user.role_category, common_name: db_user.common_name, user_desc: db_user.user_desc, user_gender: db_user.user_gender, user_grade: db_user.user_grade, user_class: db_user.user_class)
                break
            }
        }
    }
    
//    init() {
//        self.userMineDetail = UserMineDetailModel(user_id: db_users[1].user_id, user_name: db_users[1].user_name, role_category: db_users[1].role_category, common_name: db_users[1].common_name, user_desc: db_users[1].user_desc, user_gender: db_users[1].user_gender, user_grade: db_users[1].user_grade, user_class: db_users[1].user_class)
//    }
}
