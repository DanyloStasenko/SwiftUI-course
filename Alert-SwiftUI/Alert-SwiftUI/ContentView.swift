//
//  ContentView.swift
//  Alert-SwiftUI
//
//  Created by Danylo Stasenko on 13.03.2021.
//

import SwiftUI

struct ContentView: View {
    @State var isError = false;
    
    
    var body: some View {
        showAlert()
    }
    
    fileprivate func showAlert() -> some View {
        return Button(action: {
            self.isError = true;
            print("Pushed")
        },
        label: {
            
                    Text("Enter").actionSheet(isPresented: $isError, content: {
                        ActionSheet(title: Text("Loading"),
                                    message: Text("Are you sure to load photos?"),
                                    buttons: [.destructive(Text("Load photos"),
                                                action: {
                                                    print("Load started")}),
                                              .cancel()])
                    })
            
//            Text("Enter").alert(isPresented: $isError,
//                                content: {
//                                    Alert(
//                                        title: Text("Loading"),
//                                        message: Text("Are you sure?"),
//                                        primaryButton: .destructive(Text("Yes"), action: {
//                                            print("User pressed yes")
//                                        }),
//                                        secondaryButton: .cancel())
//                                })
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
