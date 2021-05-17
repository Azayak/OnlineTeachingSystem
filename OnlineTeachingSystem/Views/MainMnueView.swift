//
//  MainMnueView.swift
//  OnlineTeachingSystem
//
//  Created by 张健浩 on 2021/3/9.
//

import SwiftUI

struct MainMnueView: View {
    @State var searchText: String = ""
    @State var isEditing: Bool = false
        
    var body: some View {
        VStack {
            SearchBar(text: $searchText, isEditing: $isEditing)
            Spacer()
        }
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct SearchBar: View {
    @Binding var text: String
    @Binding var isEditing: Bool
    
    var body: some View {
        HStack {
            TextField("Search...", text: $text)
                .padding(7)
                .padding(.horizontal, 25)
                .background(Color(.systemGray6))
                .cornerRadius(8.0)
                .padding(.horizontal, 10)
                .onTapGesture {
                    self.isEditing = true
                }
                .disabled(isEditing)
            
            if isEditing {
                Button(action: {
                    self.isEditing = false
                    self.text = ""
                }) {
                    Text("Cancel")
                }
                .padding(.trailing, 10)
                .transition(.move(edge: .trailing))
                .animation(.default)
            }
        }
    }
}



struct MainMnueView_Previews: PreviewProvider {
    @State var temp:String = ""

    static var previews: some View {
        MainMnueView()
    }
}
