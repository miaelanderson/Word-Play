//
//  StoryView.swift
//  Word Play
//
//  Created by Mia Anderson on 10/7/24.
//

import SwiftUI

struct StoryView: View {
    let words : Words
    var body: some View {
        func writeStory() -> String {
            return "My friend sat in her \(words.noun0), thinking about a " +
            "\(words.fruit0). As I walked up to her and grabbed a piece of " +
            "\(words.fruit1), I also thought about a \(words.fruit0). Today was " +
            "\(words.adjective0), but I know tomorrow will be way more \(words.adjective1). " +
            "My friend and I \(words.verb0) outside with my \(words.adjective3) " +
            "\(words.noun1), and we had lots of fun! Yesterday I brought a " +
            "\(words.noun2) to school for show and tell, but my friends thought " +
            "it was \(words.adjective2). Anyways, I plan to bring a \(words.noun3) " +
            "to school tomorrow, and hopefully my friends will think it's \(words.fruit2)tastic!"
        }
        return Text(writeStory())
            .padding()
    }
}

    struct StoryView_Previews: PreviewProvider {
        static var previews: some View {
            StoryView(words: Words())
        }
    }
