//
//  FileBase.swift
//  Shopping
//
//  Created by Reem Alammari on 03/05/1445 AH.
//

import SwiftUI

class FileBase: ObservableObject{
  
      @Published var furniture: Array<Furniture>
      @Published var mainArray: Array<Furniture>
      @Published var somefurniture: Array<Furniture>
      @Published var newArrival: Array<Furniture>
     // @Published var allpices : Array<Furniture>
    init() {
        furniture = []
        mainArray = []
        somefurniture = []
        newArrival = []
      //  allpices = []
        fetch()
    }
   
    func fetch(){
    furniture = [
    Furniture(id: UUID(), image: "chair1", catigory: "Chairs", isNew: true , price: 390 , amount: 1),
    Furniture(id: UUID(),image: "chair2", catigory: "Chairs", isNew: true , price: 245, amount: 1),
    Furniture(id: UUID(),image: "chair3", catigory: "Chairs", isNew: true, price: 899, amount: 1),
    Furniture(id: UUID(),image: "chair4", catigory: "Chairs", isNew: false , price: 350, amount: 1),
    Furniture(id: UUID(),image: "chair5", catigory: "Chairs & Sofa", isNew: false , amount: 1),
    Furniture(id: UUID(),image: "lamp1", catigory: "Light Lamp", isNew: false,price: 299, amount: 1),
    Furniture(id: UUID(),image: "lamp2", catigory: "Light Lamp", isNew: true, price: 199, amount: 1),
    Furniture(id: UUID(),image: "lamp3", catigory: "Light Lamp", isNew: true, price: 240, amount: 1),
    Furniture(id: UUID(),image: "lamp4", catigory: "Light Lamp", isNew: true, price: 150, amount: 1),
    Furniture(id: UUID(),image: "bed", catigory: "Bed Room", isNew: false),
    Furniture(id: UUID(),image: "dining", catigory: "Dining Room", isNew: false),
    Furniture(id: UUID(),image: "living", catigory: "Living Room", isNew: false),
    ]
        
         mainArray = furniture.filter { $0.price == 0.0 }
         somefurniture = furniture.filter{ $0.price != 0.0 }
         newArrival = furniture.filter{$0.isNew == true}
        
    }
    
    
}
