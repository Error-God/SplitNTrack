//
//  ContentView.swift
//  SplitNTrack
//
//  Created by Kumar, Govinda on 22/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            AddExpenseView()
                .tabItem {
                    Label("Add Expense", systemImage: "plus.circle")
                }
            
            ViewExpenseView()
                .tabItem {
                    Label("View Expense", systemImage: "text.viewfinder")
                }
            
            CategoryView()
                .tabItem {
                    Label("Categories", systemImage: "tag")
                }
            
            FriendsView()
                .tabItem {
                    Label("Friends", systemImage: "person.2")
                }
            
            ExportExpenseView()
                .tabItem {
                    Label("Export", systemImage: "square.and.arrow.down")
                }
            
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

