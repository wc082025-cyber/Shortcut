//
//  SafariShortcuts.swift
//  Shortcut
//
//  Created by Chris Wahlberg on 11/02/2026.
//

import SwiftUI

struct SafariShortcuts: View {
    
    private let standardShortcuts = [
        
        ShortcutModel(label: "Scroll", icons: ["arrow.up", "arrow.down"], description: "Arrow Keys"),
        ShortcutModel(label: "Scroll Longer", icons: ["option", "arrow.down"], description: "Scroll longer with arrows"),
        ShortcutModel(label: "Scroll To Top", icons: ["command.square", "arrow.up"], description: "Command + Arrow Up"),
        ShortcutModel(label: "Scroll To Bottom", icons: ["command.square", "arrow.down"], description: " Command + Arrow Down"),
        ShortcutModel(label: "Search", icons: ["command.square", "f.circle"], description: "Command + F"),
        ShortcutModel(label: "Zoom In", icons: ["command.square", "plus"], description: "Command + Plus"),
        ShortcutModel(label: "Zoom Out", icons: ["command.square", "minus"], description: "Command + Minus"),
    
       
    ]
    
    var body: some View {
        
        ShortcutList(shortcuts: standardShortcuts, title: "SAFARI SHORTCUTS")
        
            
        }
    }
                    
#Preview {
    NavigationStack{
        SafariShortcuts()
    }
}
