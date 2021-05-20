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



var db_single_problem1: _problem = _problem(problem_id: 50001, homework_id: 40001, problem_category: 1, problem_stem: "《背影》的作者是谁？", problem_select_choice_A: "朱元璋", problem_select_choice_B: "朱允文", problem_select_choice_C: "朱棣", problem_select_choice_D: "朱自清", select_answer: 4, fill_answer: "")

var db_single_problem2: _problem = _problem(problem_id: 80002, homework_id: 70001, problem_category: 2, problem_stem: "《背影》的作者是_", problem_select_choice_A: "", problem_select_choice_B: "", problem_select_choice_C: "", problem_select_choice_D: "", select_answer: 0, fill_answer: "朱自清")

var db_single_problem3: _problem = _problem(problem_id: 50003, homework_id: 40001, problem_category: 1, problem_stem: "《背影》的作者是谁？", problem_select_choice_A: "朱元璋", problem_select_choice_B: "朱允文", problem_select_choice_C: "朱棣", problem_select_choice_D: "朱自清", select_answer: 4, fill_answer: "")

var db_single_problem4: _problem = _problem(problem_id: 50004, homework_id: 40001, problem_category: 1, problem_stem: "《背影》的作者是谁？", problem_select_choice_A: "朱元璋", problem_select_choice_B: "朱允文", problem_select_choice_C: "朱棣", problem_select_choice_D: "朱自清", select_answer: 4, fill_answer: "")

var db_single_problem5: _problem = _problem(problem_id: 50005, homework_id: 40001, problem_category: 1, problem_stem: "《背影》的作者是谁？", problem_select_choice_A: "朱元璋", problem_select_choice_B: "朱允文", problem_select_choice_C: "朱棣", problem_select_choice_D: "朱自清", select_answer: 4, fill_answer: "")

var db_single_problem6: _problem = _problem(problem_id: 80006, homework_id: 70001, problem_category: 2, problem_stem: "《背影》的作者是_", problem_select_choice_A: "", problem_select_choice_B: "", problem_select_choice_C: "", problem_select_choice_D: "", select_answer: 0, fill_answer: "朱自清")

var db_single_problem7: _problem = _problem(problem_id: 80007, homework_id: 70001, problem_category: 2, problem_stem: "《背影》的作者是_", problem_select_choice_A: "", problem_select_choice_B: "", problem_select_choice_C: "", problem_select_choice_D: "", select_answer: 0, fill_answer: "朱自清")

var db_problems: [_problem] = [db_single_problem1, db_single_problem2, db_single_problem3, db_single_problem4, db_single_problem5, db_single_problem6, db_single_problem7]
