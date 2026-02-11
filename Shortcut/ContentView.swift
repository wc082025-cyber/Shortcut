//
//  ContentView.swift
//  Shortcut
//
//  Created by Chris Wahlberg on 06/02/2026.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        NavigationStack {
            
            ZStack(alignment: .top) {
                Color(.mint.opacity(0.7))
                    .ignoresSafeArea()
                
                
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.white.opacity(0.4))
                    .frame(maxWidth: .infinity, maxHeight: 140)
                //.background(Color.blue.opacity(0.6))
                
                
                VStack {
                    Text("SHORTCUT")
                        .font(Font.system(size: 40).bold())
                    
                    
                    HStack
                    {
                        Image(systemName: "command.square.fill")
                            .font(Font.system(size: 70))
                            .foregroundStyle(.black.opacity(0.8))
                        Image(systemName: "plus")
                            .font(Font.system(size: 40))
                        Image(systemName: "c.square.fill")
                            .font(Font.system(size: 70))
                            .foregroundStyle(.black.opacity(0.8))
                        
                        
                    } //HStack
                    
                    Spacer()
                    // LINK
                    NavigationLink(destination: Standard()) {
                        Text("Common Shortcuts")
                            .font(.title.bold())
                            .foregroundColor(.black)
                            .padding()
                            .frame(width: 350)
                            .background(Color(.white.opacity(0.8)))
                            .cornerRadius(40)
                            .shadow(color: .black.opacity(0.5), radius: 4, x: 0, y: 2)
                           
                    }
                    .buttonStyle(.plain)
                    
                    // LINK
                    
                    NavigationLink(destination: Favorites()) {
                        Text("Favorite Shortcuts")
                            .font(.title.bold())
                            .foregroundColor(.black)
                            .padding()
                            .frame(width: 350)
                            .background(Color(red: 0.971388638, green: 0.8393287659, blue: 0.492246747))
                            .cornerRadius(40)
                            .shadow(color: .black.opacity(0.5), radius: 4, x: 0, y: 2)
                    }
                    .buttonStyle(.plain)
                    
                    Spacer()
                    
                } // VStack
            }// ZStack
        } // NavStack
      
        
    }

}

#Preview {
    ContentView()
}
