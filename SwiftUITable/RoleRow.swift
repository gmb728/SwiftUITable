//
//  ListView.swift
//  SwiftUITable
//
//  Created by Chang Sophia on 4/1/20.
//  Copyright © 2020 Chang Sophia. All rights reserved.
//

import SwiftUI

// RoleRow for TableViewCell
struct RoleRole: View {
    var roles: Role
   var body: some View {
     HStack {
      Image(roles.name)
        .resizable()
        .scaledToFill()
        .frame(width:80, height:80)
        .clipped()
     VStack(alignment: .leading) {
        Text(roles.name)
        }
        Spacer()
    }
    }
    
}

struct ListView: View {
   
    var body: some View {
        List(0...< roles.count) { (index) in
            NavigationLink(destination: ContentView(roles: roles[index])){
                RoleRow(roles: roles[index])
            }
        .navigationBarTitle("Princess List")
        .background(Image("texture").opacity(0.3))
        }
        .listRowInsets(EdgeInsets(top: 30, leading: 30, bottom: 30, trailing: 30))
    }
}

 
struct RoleRow_Previews: PreviewProvider {
    static var previews: some View {
        RoleRow(roles: roles[0])
            .previewLayout(.fixed(width:300, height:70))
    }
}
