//
//  ModelData.swift
//  OnlineTeachingSystem
//
//  Created by 张健浩 on 2021/5/8.
//

import Foundation


var myUserMineDetail: UserMineDetailModel = UserMineDetailModel(user_id: 10001, user_name: "zhangjianhao", role_category: 1, common_name: "张健浩", user_desc: "一个来自72班喜欢学习计算机知识的学生", user_gender: 0, user_grade: 7, user_class: 2)

var myCourseCell: CourseCellModel = CourseCellModel(course_id: 20001, teacher_id: 1234567890, course_name: "七年级语文上册", course_desc: "本课程是以教育部规定教材为基础的七年级上册语文课程", course_image_index: 20001, course_grade: 7, course_category: 1)

var myCoursesList: [CourseCellModel] = [myCourseCell,myCourseCell,myCourseCell,myCourseCell,myCourseCell,myCourseCell,myCourseCell,myCourseCell,myCourseCell,myCourseCell,myCourseCell,myCourseCell,myCourseCell,myCourseCell,myCourseCell]

var myVideoCell: VideoCellModel = VideoCellModel(video_id: 30001, course_id: 20001, video_name: "背影", video_length: 1000*60*40, video_image_index: 30001, video_desc: "《背影》是现代作家朱自清（1898-1948）于1925年所写的一篇回忆性散文。这篇散文叙述的是作者离开南京到北京大学，父亲送他到浦口火车站，照料他上车，并替他买橘子的情形。在作者脑海里印象最深刻的，是他父亲替他买橘子时在月台爬上攀下时的背影。作者用朴素的文字，把父亲对儿女的爱，表达得深刻细腻，真挚感动，从平凡的事件中，呈现出父亲的关怀和爱护。")

var myStudentVideo: StudentVideoModel = StudentVideoModel(student_id: 10001, video_id: 30001, studyLength: 1000*60*30, lastTimePoint: 1000*60*20)

var myProblemCell1: ProblemCellModel = ProblemCellModel(problem_id: 80001, homework_id: 70001, problem_category: 1, problem_stem: "《背影》的作者是谁？", problem_select_choice_A: "朱元璋", problem_select_choice_B: "朱允文", problem_select_choice_C: "朱棣", problem_select_choice_D: "朱自清", select_answer: 4, fill_answer: nil)

var myProblemCell2: ProblemCellModel = ProblemCellModel(problem_id: 80002, homework_id: 70001, problem_category: 2, problem_stem: "《背影》的作者是_", problem_select_choice_A: nil, problem_select_choice_B: nil, problem_select_choice_C: nil, problem_select_choice_D: nil, select_answer: nil, fill_answer: "朱自清")


//var theUuser: Uuser = load("UuserData.json")
//
//func load<T: Decodable>(_ filename: String) -> T {
//    let data: Data
//
//    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
//    else {
//        fatalError("Couldn't find \(filename) in main bundle.")
//    }
//
//    do {
//        data = try Data(contentsOf: file)
//    } catch {
//        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
//    }
//
//    do {
//        let decoder = JSONDecoder()
//        return try decoder.decode(T.self, from: data)
//    } catch {
//        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
//    }
//}
