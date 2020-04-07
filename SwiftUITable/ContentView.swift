//
//  ContentView.swift
//  SwiftUITable
//
//  Created by Chang Sophia on 3/31/20.
//  Copyright © 2020 Chang Sophia. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    
    
    var body: some View {
        
     NavigationView {
        List(roles) { role in
            ZStack {
                
            RoleRow(role: role)
                
                NavigationLink(destination: RoleDetailView(role:role)) {
                    EmptyView()
                }
        }
    
}
        .navigationBarTitle("Disney Princess")
        }
    }
}
struct RoleRow: View{
    var role: Role
    
    var body: some View {
        VStack(alignment:.leading) {
           Image(role.image)
               .resizable()
               .aspectRatio(contentMode: .fit)
               .cornerRadius(10)
               .padding(10)
       
            HStack{
                Text("Princess Name:")
                .font(.headline)
                .foregroundColor(.secondary)
                Text(role.name)
                .font(.headline)
                .foregroundColor(.primary)
                 
            }
            HStack{
                Text("Rating:")
                .font(.headline)
                .foregroundColor(.secondary)
                HStack{
                    ForEach(1...(role.rating), id: \.self)
                { _ in
                    Image(systemName: "star.fill")
                        .font(.headline)
                        .foregroundColor(.yellow)
                    }
                }
            }
        HStack{
            Text("Weapon:")
                .font(.headline)
               .foregroundColor(.secondary)
            Text(role.weapon)
               .font(.headline)
               .foregroundColor(.primary)
               
            }
            
        HStack {
            Text("Released Order: ")
            .font(.headline)
            .foregroundColor(.secondary)
            Image(systemName:"\(self.role.number).circle.fill")
                        .font(.headline)
                        .foregroundColor(.black)
            }
           
        HStack{
            Text("Feature Film:")
                .font(.headline)
                .foregroundColor(.secondary)
            Text(role.movie)
                .font(.headline)
                .foregroundColor(.primary)
                 
            }
            Spacer()
        HStack{
                   Text("Pet:")
                      .font(.headline)
                      .foregroundColor(.secondary)
                   Text(role.pet)
                      .font(.headline)
                      .foregroundColor(.primary)
                     
                   
                   }
          Spacer()
            
            HStack(alignment: .center){
            Text(role.intro)
                .font(.headline)
                .foregroundColor(.primary)
                .lineLimit(3)
               
            }
        }
    
        }
    
}


 
            
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
