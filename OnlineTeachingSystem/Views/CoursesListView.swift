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
                
                NavigationLink(
                    destination:
                        CourseDetailView().environmentObject(CourseDetailViewModel(user_id: coursesViewModel.user_id, course_id: courseCell.course_id))
                    
//                        VStack {
//                            Text("\(coursesViewModel.user_id)")
//                            Text("\(courseCell.course_id)")
//                        }
                    
                ) {
                    CourseCellView(courseCell: courseCell)
                        .border(Color.blue.opacity(0.25), width: 2)
                        .cornerRadius(14)
                }
                
                
            }
            .listStyle(InsetListStyle())
            .navigationTitle(self.titleName)
            .navigationBarTitleDisplayMode(.automatic)
            
        }
//        .navigationBarTitle(self.titleName)
//        Text("\(coursesViewModel.user_id)")
    }
}


struct CoursesList_Previews: PreviewProvider {
    static var previews: some View {
        CoursesListView(titleName: "所有课程").environmentObject(CoursesViewModel.init(user_id: 10001, isFliter: 0))
    }
}
