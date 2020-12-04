//
//  ContentView.swift
//  TouchBarDemo
//
//  Created by Richard Menning on 04.12.20.
//

import SwiftUI

// important to know: https://stackoverflow.com/questions/59919050/how-can-i-display-touch-bar-buttons-using-swiftui
// TODO: Always show touchbar element
struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .focusable()
                       .touchBar {
                           Button(action: {
                            print("GO!")
                           }) {
                               Text("▶️").padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                           }
                        Button(action: {
                            print("START")
                        }) {
                            Text("⏸").padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                        }
                        Button(action: {
                            print("STOP")
                        }) {
                            Text("⏹").padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 20))
                        }
                        Text("20:00")
                        Text("Projektname").padding().foregroundColor(.blue)
                   }
            .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
