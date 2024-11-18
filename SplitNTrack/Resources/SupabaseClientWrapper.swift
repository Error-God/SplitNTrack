//
//  SupabaseClientWrapper.swift
//  SplitNTrack
//
//  Created by Kumar, Govinda on 13/09/24.
//

import Supabase
import Combine
import Foundation

class SupabaseClientWrapper: ObservableObject {
    let client: SupabaseClient

    init() {
        client = SupabaseClient(supabaseURL: URL(string: "https://sdhbrhyrndwdbpphlqmr.supabase.com")!, supabaseKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InNkaGJyaHlybmR3ZGJwcGhscW1yIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjYxNzQwMzgsImV4cCI6MjA0MTc1MDAzOH0.heb49iYxnSKhJIDzJv7qUs0sxHUWf2x-SEpxm-AN_0g")
    }
}
