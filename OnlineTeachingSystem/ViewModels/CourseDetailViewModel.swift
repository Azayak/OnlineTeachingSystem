//
//  CourseDetailViewModel.swift
//  OnlineTeachingSystem
//
//  Created by 张健浩 on 2021/5/13.
//

import Foundation

class CourseDetailViewModel: ObservableObject {
    @Published var courseDetail: CourseDetailModel = CourseDetailModel(
        courseCell: CourseCellModel(
            course_id: 0, teacher_id: 0, course_name: "", course_desc: "", course_image_index: 0, course_grade: 0, course_category: 0
        ),
        videosList: [])
    
    init(_ course_id: Int) {
        for db_course in db_courses {
            if(db_course.course_id == course_id) {
                courseDetail.courseCell = CourseCellModel(course_id: db_course.course_id, teacher_id: db_course.teacher_id, course_name: db_course.course_name, course_desc: db_course.course_desc, course_image_index: db_course.course_image_index, course_grade: db_course.course_grade, course_category: db_course.course_category)
            }
            break
        }
        for db_video in db_videos {
            if(db_video.course_id == course_id) {
                let oneVideo: VideoCellModel = VideoCellModel(video_id: db_video.course_id, course_id: db_video.course_id, video_name: db_video.video_name, video_length: db_video.video_length, video_image_index: db_video.video_image_index, video_desc: db_video.video_desc)
                courseDetail.videosList.append(oneVideo)
            }
        }
    }
    
    
}
