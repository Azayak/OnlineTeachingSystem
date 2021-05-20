//
//  CourseDetailViewModel.swift
//  OnlineTeachingSystem
//
//  Created by 张健浩 on 2021/5/13.
//

import Foundation

class CourseDetailViewModel: ObservableObject {
//    @Published var courseDetail: CourseDetailModel = CourseDetailModel(
//        courseCell: CourseCellModel(
//            course_id: 0, teacher_id: 0, course_name: "", course_desc: "", course_image_index: 0, course_grade: 0, course_category: 0
//        ),
//        videosList: [])
    
    @Published var courseDetail: CourseDetailModel =
        CourseDetailModel(
            studentDetail: UserMineDetailModel(user_id: 0, user_name: "", role_category: 0, common_name: "", user_desc: "", user_gender: 0, user_grade: 0, user_class: 0),
            courseCell: CourseCellModel(course_id: 0, teacher_id: 0, course_name: "", course_desc: "", course_image_index: 0, course_grade: 0, course_category: 0),
            videosList: [],
            teacherDetail: UserMineDetailModel(user_id: 0, user_name: "", role_category: 0, common_name: "", user_desc: "", user_gender: 0, user_grade: 0, user_class: 0),
            studentVideo: [],
            courseStudent: CourseStudentModel(student_id: 0, course_id: 0, apply_premission: 0)
        )
    
    init(user_id: Int, course_id: Int) {
        //学生用户信息
        for db_user in db_users {
            if user_id == db_user.user_id {
                courseDetail.studentDetail = UserMineDetailModel(user_id: db_user.user_id, user_name: db_user.user_name, role_category: db_user.role_category, common_name: db_user.common_name, user_desc: db_user.user_desc, user_gender: db_user.user_gender, user_grade: db_user.user_grade, user_class: db_user.user_class)
                break
            }
        }
        //课程详细信息
        for db_course in db_courses {
            if(db_course.course_id == course_id) {
                courseDetail.courseCell = CourseCellModel(course_id: db_course.course_id, teacher_id: db_course.teacher_id, course_name: db_course.course_name, course_desc: db_course.course_desc, course_image_index: db_course.course_image_index, course_grade: db_course.course_grade, course_category: db_course.course_category)
                break
            }
        }
        //课程视频信息
        for db_video in db_videos {
            if(db_video.course_id == course_id) {
                let oneVideo: VideoCellModel = VideoCellModel(video_id: db_video.video_id, course_id: db_video.course_id, video_name: db_video.video_name, video_length: db_video.video_length, video_image_index: db_video.video_image_index, video_desc: db_video.video_desc)
                courseDetail.videosList.append(oneVideo)
            }
        }
        //课程教师信息
        for db_user in db_users {
            if courseDetail.courseCell.teacher_id == db_user.user_id {
                courseDetail.teacherDetail = UserMineDetailModel(user_id: db_user.user_id, user_name: db_user.user_name, role_category: db_user.role_category, common_name: db_user.common_name, user_desc: db_user.user_desc, user_gender: db_user.user_gender, user_grade: db_user.user_grade, user_class: db_user.user_class)
                break
            }
        }
        //课程学生信息
        for db_course_student in db_course_students {
            if (courseDetail.courseCell.course_id == db_course_student.course_id && courseDetail.studentDetail.user_id == db_course_student.student_id) {
                courseDetail.courseStudent = CourseStudentModel(student_id: db_course_student.student_id, course_id: db_course_student.course_id, apply_premission: db_course_student.apply_premission)
            }
        }
        //课程视频学生学习信息
        if (courseDetail.courseStudent.student_id != 0 && courseDetail.courseStudent.course_id != 0 && courseDetail.courseStudent.apply_premission != 0) {
            for video in courseDetail.videosList {
                var oneStudentVideo: StudentVideoModel = StudentVideoModel(student_id: 0, video_id: 0, studyLength: 0, lastTimePoint: 0)
                for index in 0...db_student_videos.capacity - 1 {
                    if (db_student_videos[index].video_id == video.video_id && db_student_videos[index].student_id == courseDetail.studentDetail.user_id) {
                        oneStudentVideo = StudentVideoModel(student_id: db_student_videos[index].student_id, video_id: db_student_videos[index].video_id, studyLength: db_student_videos[index].study_length, lastTimePoint: db_student_videos[index].last_time_point)
                        break
                    }
                }
                if (oneStudentVideo.student_id == 0 && oneStudentVideo.video_id == 0) {
                    oneStudentVideo = StudentVideoModel(student_id: courseDetail.studentDetail.user_id, video_id: video.video_id, studyLength: 0, lastTimePoint: 0)
                    let newStudentVideoRecord: _student_video = _student_video(student_id: oneStudentVideo.student_id, video_id: oneStudentVideo.video_id, study_length: 0, last_time_point: 0)
                    db_student_videos.append(newStudentVideoRecord)
                }
                courseDetail.studentVideo.append(oneStudentVideo)
            }
        }
        
    }
    
//    struct StudentVideoModel {
//        var student_id: Int
//        var video_id: Int
//        var studyLength: Int
//        var lastTimePoint: Int
//    }
    
    
}
