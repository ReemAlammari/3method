//
//  ShwingHorizontal.swift
//  Shopping
//
//  Created by Reem Alammari on 03/05/1445 AH.
//

import SwiftUI

struct Furniture: Identifiable{
    var id : UUID
    var image:String
    var catigory: String
    var isNew: Bool
    var price: Float = 0.0
    var amount: Int = 0
}
