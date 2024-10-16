//
//  ContentView.swift
//  Word Play
//
//  Created by Mia Anderson on 10/7/24.
//

import SwiftUI

struct ContentView: View {
    @State private var words = Words()
    var body: some View {
        NavigationView {
            VStack {
                Text("WORD PLAY!!!!")
                    .font(.title).bold()
                    .multilineTextAlignment(.center)
                    .padding()
                Text("Please enter the requested words below:")
                    .font(.title)
                    .multilineTextAlignment(.center)
                HStack {
                    CustomTextField(placeholder: "noun", variable: $words.noun0)
                    CustomTextField(placeholder: "noun", variable: $words.noun1)
                    CustomTextField(placeholder: "noun", variable: $words.noun2)
                }
                HStack {
                    CustomTextField(placeholder: "noun", variable: $words.noun3)
                    CustomTextField(placeholder: "fruit", variable: $words.fruit0)
                    CustomTextField(placeholder: "fruit", variable: $words.fruit1)
                    CustomTextField(placeholder: "fruit", variable: $words.fruit2)
                }
                HStack {
                    CustomTextField(placeholder: "verb", variable: $words.verb0)
                    CustomTextField(placeholder: "adjective", variable: $words.adjective0)
                    CustomTextField(placeholder: "adjective", variable: $words.adjective1)
                }
                HStack {
                    CustomTextField(placeholder: "bad adjective", variable: $words.adjective2)
                    CustomTextField(placeholder: "adjective", variable: $words.adjective3)
                }
                Spacer()
                NavigationLink("Play", destination: StoryView(words: words))
                    .font(.title)
            }
        }
        .navigationTitle("Word Play")
        .padding()
        .padding()
    }
}

struct Words {
    var noun0 = ""
    var noun1 = ""
    var noun2 = ""
    var noun3 = ""
    
    var fruit0 = ""
    var fruit1 = ""
    var fruit2 = ""
    var verb0 = ""
    
    var adjective0 = ""
    var adjective1 = ""
    var adjective2 = ""
    var adjective3 = ""
}

#Preview {
    ContentView()
}

struct CustomTextField: View {
    let placeholder : String
    let variable : Binding<String>
    var body : some View {
        TextField(placeholder, text: variable)
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .autocapitalization(.none)
    }
}
