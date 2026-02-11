//
//  ShortcutModel.swift
//  Shortcut
//
//  Created by Chris Wahlberg on 09/02/2026.
//

import Foundation

public struct ShortcutModel: Identifiable {
    public let id: UUID = UUID()
    public let label: String
    public let icons: [String]
    public let description: String
    
    public init(label: String, icons: [String], description: String) {
        self.label = label
        self.icons = icons
        self.description = description
    }
}
