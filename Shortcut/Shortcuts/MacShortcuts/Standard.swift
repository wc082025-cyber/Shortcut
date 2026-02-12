//
//  Standard.swift
//  Shortcut
//
//  Created by Chris Wahlberg on 09/02/2026.
//

import SwiftUI

struct Standard: View {
    
    private let standardShortcuts = [
        
        ShortcutModel(label: "Copy", icons: ["command.square", "c.circle"], description: "Command + C"),
        ShortcutModel(label: "Paste", icons: ["command.square", "v.circle"], description: "Command + V"),
        ShortcutModel(label: "Cut", icons: ["command.square", "x.circle"], description: "Command + X"),
        ShortcutModel(label: "Save", icons: ["command.square", "s.circle"], description: "Command + S"),
        ShortcutModel(label: "Undo", icons: ["command.square", "z.circle"], description: "Command + Z"),
        ShortcutModel(label: "Select All", icons: ["command.square", "a.circle"], description: "Command + A"),
        ShortcutModel(label: "Find", icons: ["command.square", "f.circle"], description: "Command + F"),
        ShortcutModel(label: "Quit Program", icons: ["command.square", "q.circle"], description: "Command + Q"),
        ShortcutModel(label: "Force Quit Program", icons: ["command.square", "escape", "option"], description: "Command + Option + Escape"),
       
    ]
    
    var body: some View {
        
        ShortcutList(shortcuts: standardShortcuts, title: "COMMON SHORTCUTS")
        
            
        }
    }
                    

#Preview {
    NavigationStack{
        Standard()
    }
    .environmentObject(FavoritesManager()) // <--- Add this
}
