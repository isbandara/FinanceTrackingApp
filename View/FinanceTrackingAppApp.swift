//
//  FinanceTrackingAppApp.swift
//  Shared
//
//  Created by Ishara Sanjeewa on 2023-09-24.
//

import SwiftUI
import Firebase


@main
struct FinanceTrackingAppApp: App {
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            Login_View()
        }
    }
}
