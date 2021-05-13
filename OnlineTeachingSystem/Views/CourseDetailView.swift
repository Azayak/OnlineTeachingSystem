//
//  CourseDetailView.swift
//  OnlineTeachingSystem
//
//  Created by 张健浩 on 2021/5/10.
//

import SwiftUI

struct CourseDetailView: View {
    @EnvironmentObject var courseDetailViewModel: CourseDetailViewModel
    
    var body: some View {
        VStack {
            HStack {
                courseDetailViewModel.courseDetail.courseCell.course_image!
                    .resizable()
                    .frame(width: 160, height: 180, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .cornerRadius(10.0)
                    .shadow(color: Color.black.opacity(0.5),radius: 5.0, x: 0, y: 0)
                Spacer()
                VStack {
                    Text(courseDetailViewModel.courseDetail.courseCell.course_name)
                        .font(Font.system(size: 25))
                }
            }
            
        }
    }
}

struct CourseDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CourseDetailView().environmentObject(CourseDetailViewModel(20001))
    }
}
