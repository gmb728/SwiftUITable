//
//  IntroductionView.swift
//  SwiftUITable
//
//  Created by Chang Sophia on 4/7/20.
//  Copyright © 2020 Chang Sophia. All rights reserved.
//

import SwiftUI


struct RoleDetailView: View {
    @Environment(\.presentationMode) var presentationMode
    var role: Role
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Image(role.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Group {
                    Text(role.movie)
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.black)
                        .lineLimit(3)
                        .padding(5)
                    Text("By \(role.name)".uppercased())
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                .padding(.bottom, 0)
                .padding(.horizontal)
                Text(role.intro)
                .font(.body)
                .padding()
                .lineLimit(100)
                .multilineTextAlignment(.leading)
            }
        }
    }
}

struct RoleDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            RoleDetailView(role: roles[0])
    }
}
}
