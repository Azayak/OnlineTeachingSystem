//
//  CoursesList.swift
//  OnlineTeachingSystem
//
//  Created by 张健浩 on 2021/3/9.
//

import SwiftUI

struct CoursesListView: View {
//    @ObservedObject var courseCategoryNames: CourseCategories
    
    var coursesList: [CourseCellModel]
    
    var titleName: String
    
    var body: some View {
        
        NavigationView {
//            Text(self.titleName)
//                .navigationTitle("Navigation")
            List(coursesList, id: \.course_id) { courseCell in
                CourseCellView(courseCell: courseCell)
                    .border(Color.blue.opacity(0.25), width: 2)
                    .cornerRadius(5)
            }
            .listStyle(InsetListStyle())
            .navigationTitle(self.titleName)
            .navigationBarTitleDisplayMode(.automatic)
        }
//        .navigationBarTitle(self.titleName)
        
    }
}


struct CoursesList_Previews: PreviewProvider {
    static var previews: some View {
        CoursesListView(coursesList: myCoursesList, titleName: "我的课程")
    }
}
