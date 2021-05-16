//
//  MyCoursesView.swift
//  OnlineTeachingSystem
//
//  Created by 张健浩 on 2021/5/9.
//

import SwiftUI


struct TestView: View {
    @EnvironmentObject var testClass: TestClass
    
    
    var body: some View {
        VStack {
            List(testClass.videos) { video in
                HStack {
                    Text(video.video_name)
                }
            }
        }
        
    }
}

struct MyCoursesView_Previews: PreviewProvider {
    static var previews: some View {
        TestView().environmentObject(TestClass.init())
    }
}
