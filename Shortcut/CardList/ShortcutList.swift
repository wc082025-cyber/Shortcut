//
//  ShortcutList.swift
//  Shortcut
//
//  Created by Chris Wahlberg on 09/02/2026.
//

import SwiftUI

struct ShortcutList: View {
    let shortcuts: [ShortcutModel]
    let title: String
    
    @State private var selectedShortcut: ShortcutModel?
    
    var body: some View {
        ZStack {
            // LAYER 1: The Main List
            ScrollView {
                VStack(spacing: 10) {
                    ForEach(shortcuts) { shortcut in
                        ShortcutCard(shortcut: shortcut) { _ in
                            // When tapped, set the selected shortcut (triggers animation)
                            withAnimation {
                                selectedShortcut = shortcut
                            }
                        }
                    }
                }
                .padding(.top, 10)
            }
            .navigationTitle(title)
            .background(Color(.mint.opacity(0.7)))
            
            // LAYER 2: The Custom Overlay
            // This sits ON TOP of the list if a shortcut is selected
            if let shortcut = selectedShortcut {
                OverlayWindow(shortcut: shortcut) {
                    // This is the onClose action
                    withAnimation {
                        selectedShortcut = nil
                    }
                }
                .transition(.opacity) // Fades in/out smoothly
                .zIndex(1) // Ensures it sits on top
            }
        }
    }
}

