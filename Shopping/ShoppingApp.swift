//
//  ShoppingApp.swift
//  Shopping
//
//  Created by Reem Alammari on 03/05/1445 AH.
//

import SwiftUI

@main
struct ShoppingApp: App {
    var body: some Scene {
        WindowGroup {
            MainView( idFurniture: UUID())
        }
    }
}
