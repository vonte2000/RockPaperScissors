//
//  titleScreen.swift
//  RockPaperScissors
//
//  Created by Devonte Gooden on 7/14/22.
//

import SwiftUI

struct titleScreen: View {
    var body: some View {
        
        NavigationView {
            
            ZStack {
            
                    
                    Color.green
                        .ignoresSafeArea()
                
                    
                    VStack {
                        NavigationLink(destination: ContentView()) {
                            Text("Play")
                                .foregroundColor(.white)
                                .bold()
                        }
                        
                    }

            }
        }
    }
}

struct titleScreen_Previews: PreviewProvider {
    static var previews: some View {
        titleScreen()
    }
}
