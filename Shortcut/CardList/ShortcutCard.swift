//
//  ShortcutCard.swift
//  Shortcut
//
//  Created by Chris Wahlberg on 09/02/2026.
//

import SwiftUI

struct ShortcutCard: View {
    let shortcut: ShortcutModel
    let onTap: (ShortcutModel) -> Void
    
    var body: some View {
        HStack {
            // The Label (e.g., "Copy")
            Text(shortcut.label)
                .font(.headline)
                .fontWeight(.bold)
                .foregroundColor(.black)
            
            Spacer()
            
            // The Icons (e.g., Cmd + C)
            HStack(spacing: 5) {
                ForEach(0..<shortcut.icons.count, id: \.self) { index in
                    // The Icon
                    Image(systemName: shortcut.icons[index])
                        .font(.title2)
                        .foregroundColor(.black)
                    
                    // Add a "+" if it's not the last icon
                    if index < shortcut.icons.count - 1 {
                        Image(systemName: "plus")
                            .font(.body)
                            .foregroundColor(.gray)
                    }
                }
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color.white)
        .cornerRadius(40)
        .shadow(color: .black.opacity(0.1), radius: 3, x: 0, y: 2)
        .padding(.horizontal)
        
        .onTapGesture { onTap(shortcut) }
        
        .accessibilityElement(children: .ignore)
        .accessibilityLabel("\(shortcut.label) shortcut, \(shortcut.description)")
    }
}

