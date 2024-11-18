//
//  ContentView.swift
//  SplitNTrack
//
//  Created by Kumar, Govinda on 22/07/24.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var supabaseClientWrapper: SupabaseClientWrapper

    
    @State var loggedInState: String = "LoggedIn"
    var body: some View {
        switch loggedInState{
        case "SignUp":
            Text(loggedInState)
            
        case "LogIn":
            Text(loggedInState)
            
        case "LoggedIn":
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
        default:
            Text("No View identified")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

