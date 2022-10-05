//
//  ContentView.swift
//  InteractiveKeyboardDismissInSwiftUI
//
//  Created by Ramill Ibragimov on 05.10.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var input = "Use an AnyLayout instance to enable dynamically changing the type of a layout container without destroying the state of the subviews. For example, you can create a layout that changes between horizontal and vertical layouts based on the current Dynamic Type setting:"
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            ScrollView {
                TextEditor(text: $input)
                    .frame(height: 400)
            }
            .scrollDismissesKeyboard(.immediately)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
