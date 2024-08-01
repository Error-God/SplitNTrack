//
//  HomeView.swift
//  SplitNTrack
//
//  Created by Kumar, Govinda on 22/07/24.
//

import SwiftUI

struct HomeView: View {
    @State private var showProfilePage: Bool = false
    var body: some View {
        
        NavigationView {
            VStack{
                Text("Home view")
                
//                Image(uiImage: UIImage(named: "check-image.jpg")!)
//                    .resizable()
//                    .scaledToFill()
//                    .frame(width: 300, height: 300)
//                    .clipped()
            }
            .navigationBarItems(leading:
                                    HStack(spacing: 5){
                VStack(alignment: .leading) {
                    Spacer(minLength: 15)
                    Text("Good Morning")
                        .font(.system(size: 25, weight: .bold, design: .default))
                    
                    Text("John")
                        .font(.system(size: 30, weight: .heavy, design: .default))
                        .foregroundStyle(Color(.gray))
                }
            },
                
            trailing:
                VStack(alignment: .trailing){
                Button {
                    showProfilePage = true
                } label: {
                    Image(uiImage: UIImage(named: "pandaMan.jpg")!)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50)
                            .clipped()
                            .cornerRadius(50)
                }

                    
                
               
                }
            )
            
            
        }
        .sheet(isPresented: $showProfilePage){
            ProfileView()
        }
    }
}

#Preview {
    HomeView()
}
