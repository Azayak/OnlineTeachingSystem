//
//  _problem.swift
//  OnlineTeachingSystem
//
//  Created by 张健浩 on 2021/5/12.
//

import Foundation

struct _problem {
    var problem_id: Int
    var homework_id: Int
    var problem_category: Int
    
    var problem_stem: String
    
    var problem_select_choice_A: String
    var problem_select_choice_B: String
    var problem_select_choice_C: String
    var problem_select_choice_D: String
    
    var select_answer: Int
    var fill_answer: String
}
