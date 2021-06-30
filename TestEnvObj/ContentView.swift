//
//  ContentView.swift
//  TestEnvObj
//
//  Created by Miroslav Djukic on 30.6.21..
//

import SwiftUI

struct ParentView: View {
    
    @EnvironmentObject var parentState: ParentState
    
    var body: some View {
        print("ParentView re-evaluation")
        return
            NavigationView {
                VStack {
                    Button(action: {
                        parentState.toggleState.toggle()
                    }, label: {
                        Text("Toggle parent state")
                    })
                    
                    Text(parentState.toggleState
                        ? "On" : "Off")
                        .padding()
                    
                    NavigationLink(
                        destination: ChildView(),
                        label: {
                            Text("Go to child view")
                        })
                }
            }
    }
}

struct ChildView: View {
    
    @EnvironmentObject var childState: ChildState
    
    var body: some View {
        print("ChildView re-evaluation")
        return
            VStack {
                Button(action: {
                    childState.toggleState.toggle()
                }, label: {
                    Text("Toggle child state")
                })
                
                Text(childState.toggleState
                ? "On" : "Off")
                .padding()
            }
    }
    
}
