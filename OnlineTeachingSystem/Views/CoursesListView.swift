//
//  CoursesList.swift
//  OnlineTeachingSystem
//
//  Created by 张健浩 on 2021/3/9.
//

import SwiftUI

struct CoursesListView: View {
//    @ObservedObject var courseCategoryNames: CourseCategories
    @EnvironmentObject var coursesViewModel: CoursesViewModel
        
    var titleName: String
    
    var body: some View {
        
        NavigationView {
//            Text(self.titleName)
//                .navigationTitle("Navigation")
            List(coursesViewModel.coursesList, id: \.course_id) { courseCell in
                
//                NavigationLink(
//                    destination: CourseCellView()
//                ) {
//                    
//                }
                
                CourseCellView(courseCell: courseCell)
                    .border(Color.blue.opacity(0.25), width: 2)
                    .cornerRadius(14)
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
        CoursesListView(titleName: "我的课程").environmentObject(CoursesViewModel.init())
    }
}
