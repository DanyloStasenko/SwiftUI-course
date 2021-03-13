//
//  ContentView.swift
//  Toggle
//
//  Created by Danylo Stasenko on 13.03.2021.
//

import SwiftUI

struct ContentView: View {
    @State var isOnToggle = false;
    
    var body: some View {
        
        VStack{
            ZStack{
                HStack{
                    VStack{
                        Text("Bucket")
                        Text("Profile")
                        Spacer().frame(height: 500)
                    }
                    Spacer()
                }
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.yellow)
                    .offset(x: isOnToggle ? 100 : 0)
                Text("Something on the screeen")
                    .offset(x: isOnToggle ? 100 : 0)
            }
            Text("Two")
            
            Toggle(isOn: $isOnToggle, label: {
                Text("Show settings")
            }).padding()
        }.animation(.spring(response: 0.5,
                            dampingFraction: 0.7,
                            blendDuration: 0.3))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
