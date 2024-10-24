//
//  ExtensionColor.swift
//  Shoes-App
//
//  Created by Nico Molina on 23/10/2024.
//

import Foundation
import SwiftUI

extension Color {
    init(hex: String) {
        let r, g, b: Double
        
        // Quitar el símbolo '#' si está presente
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")
        
        // Convertir el valor hexadecimal a un número entero
        var rgb: UInt64 = 0
        Scanner(string: hexSanitized).scanHexInt64(&rgb)
        
        // Extraer los valores rojo, verde y azul
        r = Double((rgb >> 16) & 0xFF) / 255
        g = Double((rgb >> 8) & 0xFF) / 255
        b = Double(rgb & 0xFF) / 255
        
        self.init(red: r, green: g, blue: b)
    }
}
