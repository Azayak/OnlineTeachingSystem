//
//  IDGenerator.swift
//  OnlineTeachingSystem
//
//  Created by 张健浩 on 2021/5/18.
//

import Foundation

class IDGenerator {
    static var id: Int = 100000
    
    static func generateID() -> Int {
        self.id += 1
        return self.id - 1
    }
}
