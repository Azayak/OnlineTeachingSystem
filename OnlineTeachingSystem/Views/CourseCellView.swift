//
//  CourseView.swift
//  OnlineTeachingSystem
//
//  Created by 张健浩 on 2021/5/9.
//

import SwiftUI

struct CourseCellView: View {
    
//    var myCcourse: Ccourse = Ccourse(course_id: 0701001, teacher_id: 1234567890, course_name: "七年级语文上册", course_desc: "本课程是以教育部规定教材为基础的七年级上册语文课程", course_image_index: 0701001, course_grade: 7, course_category: 1)
    
    var courseCell: CourseCellModel
    
    var body: some View {
        HStack {
            Spacer(minLength: 20)
            courseCell.course_image!
                .resizable()
                .frame(width: 80, height: 90, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(10.0)
                .shadow(color: Color.black.opacity(0.5),radius: 5.0, x: 0, y: 0)
            Spacer(minLength: 40)
            VStack(alignment: .leading) {
                Text(courseCell.course_name)
                    .font(.title2)
                    .foregroundColor(Color.primary)
                    .italic()
                    .shadow(radius: 0.8)
                    .padding(2)
                Text(courseCell.course_desc)
                    .font(Font.system(size: 14))
                    .lineLimit(1)
                    .padding(2)
            }
        }
        .frame(width: .none, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(Color.white.opacity(0.8))
        .cornerRadius(10.0)
//        .padding(5)
        .shadow(color: Color.gray, radius: 10)
        
    }
}

struct CourseView_Previews: PreviewProvider {
    static var previews: some View {
        CourseCellView(courseCell: myCourseCell)
    }
}
