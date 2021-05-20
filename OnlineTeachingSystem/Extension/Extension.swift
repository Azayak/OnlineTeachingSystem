//
//  IntExtension.swift
//  OnlineTeachingSystem
//
//  Created by 张健浩 on 2021/5/16.
//

import Foundation

extension Int {
    func lengthToMin(length: Int) -> Float {
        return Float(length) / 1000 / 60
    }
}

func lengthToMin(length: Int) -> Float {
    return Float(length) / 1000 / 60
}

func lengthToStringMinLength2(length: Int) -> String {
    let min = Float(length) / 1000 / 60
    let Int1: Int = Int(min * 100)
    let S1: String = "\(Int1 / 100)"
    let S2: String = "\(Int1 % 100 / 10)"
    let S3: String = "\(Int1 % 10)"
    let res: String = S1.appending(".").appending(S2).appending(S3)
    return res
}

func lengthToStringMinSecond(length: Int) -> String {
    let minute = (length / 1000) / 60
    let second = (length / 1000) % 60
    let res: String = "\(minute)".appending("分").appending("\(second)").appending("秒")
    return res
}
