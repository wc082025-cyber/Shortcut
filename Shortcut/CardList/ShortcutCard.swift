//
//  ShortcutCard.swift
//  Shortcut
//
//  Created by Chris Wahlberg on 09/02/2026.
//

import SwiftUI

public struct ShortcutCard: View {
    let label: String
    let icons: [String]
    
    public init(label: String, icons: [String]) {
        self.label = label
        self.icons = icons
    }
    public var body: some View {
        HStack(spacing: 10) {
            Text("\(label)")
                .font(.title)
                .foregroundColor(.black)
            
            ForEach(icons, id: \.self) { name in
                Image(systemName: name)
                    .foregroundColor(.black)
                    .font(Font.title.bold())
            }
        }
        .padding(10)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(Color(.yellow))
        
    }
}
