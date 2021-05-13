//
//  SingleProblemAnswerModel.swift
//  OnlineTeachingSystem
//
//  Created by 张健浩 on 2021/5/12.
//

import Foundation

struct SingleProblemAnswerModel {
    var single_problem_id: Int
    var answer_id: Int
    var problem_id: Int
    var answer_category: Int
    
    var select_answer: Int
    var fill_answer: String
    
    var is_right: Int
}
