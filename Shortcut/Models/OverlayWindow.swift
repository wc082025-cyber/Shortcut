//
//  OverlayWindow.swift
//  Shortcut
//
//  Created by Chris Wahlberg on 10/02/2026.
//
import SwiftUI

struct OverlayWindow: View {
    let shortcut: ShortcutModel
    let onClose: () -> Void

    var body: some View {
        ZStack {
            // 1. THE BIG BACKGROUND (Material)
            // This covers the whole screen behind the frame
            Rectangle()
                .fill(.ultraThinMaterial)
                .ignoresSafeArea()
                .onTapGesture {
                    // Optional: Close if user taps the blurred background
                    onClose()
                }
            
            // 2. THE CARD
            VStack(alignment: .leading, spacing: 20) {
                // ----- Header (Title + Close Button) -----
                HStack {
                    Text(shortcut.label)
                        .font(.title3.bold())
                    
                    Spacer()
                    
                    // Manual "Done" Button
                    Button(action: { onClose() }) {
                        Image(systemName: "xmark.circle.fill")
                            .font(.title2)
                            .foregroundColor(.gray.opacity(0.5))
                    }
                }

                // ----- Icons -----
                HStack(spacing: 12) {
                    ForEach(shortcut.icons, id: \.self) { name in
                        Image(systemName: name)
                            .font(.system(size: 24))
                    }
                }
                
                // ----- Description -----
                Text(shortcut.description)
                    .font(.title2.bold())
                    .foregroundColor(.primary)

                Spacer()
            }
            .padding(24)
            .frame(maxWidth: 400, maxHeight: 200) // The Card Size
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.white)
                    .shadow(color: .black.opacity(0.2), radius: 10, x: 0, y: 5)
            )
            .padding() // Safety padding for small screens
        }
    }
}

#Preview {
    // This preview simulates the blur effect over a gray background
    ZStack {
        Color.blue
        OverlayWindow(
            shortcut: ShortcutModel(
                label: "Copy",
                icons: ["command", "c.square"],
                description: "Command + C",
              //  spokenShortcut: "Command C"
            ),
            onClose: {}
        )
    }
}
