//
//  Component.swift
//  swiftcomponentsapp
//
//  Created by Matthew Ovie Enamuotor on 16/03/2024.
//

import Foundation
import SwiftUI

struct Component: Identifiable{
    let id = UUID()
    let name: String
    let icon: String
    let linkText: String
    let section: String
    let destination: AnyView
}

