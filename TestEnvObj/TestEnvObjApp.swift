//
//  TestEnvObjApp.swift
//  TestEnvObj
//
//  Created by Miroslav Djukic on 30.6.21..
//

import SwiftUI

@main
struct TestEnvObjApp: App {
    
    @StateObject var parentState = ParentState()
    @StateObject var childState = ChildState()
    
    var body: some Scene {
        WindowGroup {
            ParentView()
                .environmentObject(parentState)
                .environmentObject(childState)
        }
    }
}

final class ParentState: ObservableObject {
    @Published var toggleState: Bool = true
}


final class ChildState: ObservableObject {
    @Published var toggleState: Bool = true
}
