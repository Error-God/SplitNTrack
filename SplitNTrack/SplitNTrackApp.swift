//
//  SplitNTrackApp.swift
//  SplitNTrack
//
//  Created by Kumar, Govinda on 22/07/24.
//

import SwiftUI
import Supabase

@main
struct SplitNTrackApp: App {
//    var body: some Scene {
//        WindowGroup {
//            ContentView()
//        }
//    }
    // Initialize Supabase client
    @StateObject private var supabaseClientWrapper = SupabaseClientWrapper()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(supabaseClientWrapper)
        }
    }
}
