//
//  ContentView.swift
//  List_Example
//
//  Created by Zach Mommaerts on 3/3/23.
//

import SwiftUI

struct ContentView: View {
    
    private var strings = ["hello", "world", "hi", "globe", "howdy"]
    @State private var stringsToAdd = [String]()
    
    var body: some View {
        VStack {
            
            List(stringsToAdd, id: \.self){ string in
                Text(string)
            }
            
            Button(action: {
                var stringToAdd = strings.randomElement()
                stringsToAdd.append(stringToAdd!)
            }, label: {
                Text("Generate String")
            })
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
