//
//  User.swift
//  OnlineTeachingSystem
//
//  Created by 张健浩 on 2021/3/8.
//

import Foundation
import SwiftUI


class UserEntity: ObservableObject {
    
    //MARK: All user has these propreties
    
    var userName: String
    var userId: String
    var userGenderIsMale: Bool
    var userBirthDay: Date
    var userSelfDescribation: String
    var personalImageName: String
    
//    var myImage: UIImage {
//        return UIImage.init(named: personalImageName) ?? nil
//    }

    var myImageView: UIImageView
    
    
    enum role {
        case student
        case teacher
        case manager
    }
    
    var personalImage: Image {
        Image(personalImageName)
    }
    
    //MARK: Only student user has these propreties
    
    var coursesParticipated: [CourseEntity]?
    var communicationAreaParticipated: [CommunicationArea]?
    
    //MARK: Only teacher has these proproties
    
    var coursesCreated: [CourseEntity]?
    var communicationAreaCreated: [CommunicationArea]?
    
    //MARK: Only manager user has these propreties
    
    init() {
        self.userName = "张健浩"
        self.userId = "2174110113"
        self.userGenderIsMale = true
        self.userBirthDay = Date.init()
        
        self.personalImageName = "zhangjianhao"
        
        self.userSelfDescribation = "a 20-years-old xjtu student"
        self.coursesParticipated = []
        self.myImageView = UIImageView.init();
        self.myImageView.image = UIImage.init(named: self.personalImageName)
    }
    
    init?(userName: String, userId: String, userGenderIsMale: Bool, userBirthDay: Date, userSelfDescribation: String, personalImageName: String) {
        self.userName = userName
        self.userId = userId
        self.userGenderIsMale = userGenderIsMale
        self.userBirthDay = userBirthDay
        
        self.personalImageName = personalImageName
        
        self.userSelfDescribation = userSelfDescribation
        self.coursesParticipated = []
        
        self.myImageView = UIImageView.init();
        self.myImageView.image = UIImage.init(named: self.personalImageName)
    }
    
}
