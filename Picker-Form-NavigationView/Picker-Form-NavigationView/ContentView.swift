//
//  ContentView.swift
//  Picker-Form-NavigationView
//
//  Created by Danylo Stasenko on 14.03.2021.
//

import SwiftUI

struct ContentView: View {
    @State var section = 0;
    @State var isOn = false;
    
    var timeSelection = ["5 min", "10 min", "15 min", "20 min"]
    var lightSelection = ["5%", "50%", "100%"]
    
    var body: some View {
        NavigationView{
            Form {
                
                Picker(selection: $section,
                       label: Text("Select time"))  {
                    ForEach(0 ..< timeSelection.count){
                        Text(self.timeSelection[$0])
                    }
                }
                // Text("Time selected - \(settingsTime[section])")
                
                Toggle(isOn: $isOn, label: {
                    Text("Flight mode")
                        .foregroundColor(isOn ? Color.orange : Color.gray)
                })
                
                Picker(selection: $section,
                       label: Text("Light level"))  {
                    ForEach(0 ..< 100){
//                        Text(self.lightSelection[$0])
                        Text("Item № \($0)")
                    }
                }
                
            }.navigationTitle("Time settings")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
