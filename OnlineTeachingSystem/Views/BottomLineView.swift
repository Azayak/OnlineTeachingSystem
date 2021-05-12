//
//  BottomLineView.swift
//  OnlineTeachingSystem
//
//  Created by 张健浩 on 2021/3/8.
//

import SwiftUI

struct BottomLineView: View {
    
    @State var isMianMenuViewAppear: Bool = true
    @State var isMianMenuAppear: Bool = true
    @State var isPersonalDetailsViewAppear: Bool = true
    
    var body: some View {
        List {
//            RoundedRectangle(cornerRadius: cornerRadius)
//                .fill(Color.red)
//                .fixedSize(horizontal: false, vertical: false)
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: cornerRadius).fill(Color.secondary)
                    VStack {
                        Image(systemName: "house").imageScale(.large)
                        Text("首页")
                    }
                }
                ZStack {
                    RoundedRectangle(cornerRadius: cornerRadius).fill(Color.secondary)
                    VStack {
                        Image(systemName: "book").imageScale(.large)
                        Text("课程")
                    }
                }
                ZStack {
                    RoundedRectangle(cornerRadius: cornerRadius).fill(Color.secondary)
                    VStack {
                        Image(systemName: "person").imageScale(.large)
                        Text("我的")
                    }
                }
            }
            .foregroundColor(Color.primary)
    //        .frame(width: 500, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
    //        .position(x: 200, y: 750)
        }
        
    }
    
    let cornerRadius: CGFloat = 3.0
}

struct BottomLineView_Previews: PreviewProvider {
    static var previews: some View {
        BottomLineView()
    }
}
