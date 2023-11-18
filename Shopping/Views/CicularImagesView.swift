//
//  CicularImagesView.swift
//  Shopping
//
//  Created by Reem Alammari on 03/05/1445 AH.
//

import SwiftUI

struct CicularImagesView: View {
    @ObservedObject var datafile = FileBase()
    @State var sordtedByPrice :Furniture
   
    var idFurniture : UUID
    
    @State private var sortedby = 0
    var body: some View {
        @State var priceHigh : Array<Furniture> = datafile.somefurniture.sorted { $0.price > $1.price }.filter({$0.catigory == "Chairs"})
        @State var priceLow : Array<Furniture> = datafile.somefurniture.sorted { $0.price < $1.price }.filter({$0.catigory == "Chairs"})
        @State var arrayFurniture : Array<Furniture> = datafile.somefurniture.filter({$0.catigory == "Chairs"})
        NavigationStack {
            VStack {
                
                ZStack {
                    Rectangle()
                        .frame(maxWidth: .infinity)
                        .frame(height: 8*6)
                        .foregroundColor(.gray.opacity(0.1))
                    HStack{
                        Text("Sorted By :")
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Picker("States", selection: $sortedby){
                            
                            Text("Low Price").tag(1)
                            Text("High Price").tag(2)
                        }.tint(.black)
                    }.padding(.horizontal)
                }
                //------------------------------
                ScrollView{
                    if sortedby == 1 {
                        LazyVGrid(columns: [GridItem(.fixed(180)) , GridItem(.fixed(180))], spacing: 10) {
                            ForEach(priceLow){ l in
                                VStack{
                                    Image(l.image)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 140, height: 160)
                                        .clipShape(RoundedRectangle(cornerRadius: 16))
                                    Text("\(Int(l.price)) SR")
                                        .bold()
                                }
                            }
                        }
                    }else if sortedby == 2 {
                        LazyVGrid(columns: [GridItem(.fixed(180)) , GridItem(.fixed(180))], spacing: 10) {
                            ForEach(priceHigh){ h in
                                VStack{
                                    Image(h.image)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 140, height: 160)
                                        .clipShape(RoundedRectangle(cornerRadius: 16))
                                    Text("\(Int(h.price)) SR")
                                        .bold()
                                }
                            }
                        }

                    }else{
                        LazyVGrid(columns: [GridItem(.fixed(180)) , GridItem(.fixed(180))], spacing: 10) {
                            ForEach(arrayFurniture){ h in
                                VStack{
                                    Image(h.image)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 140, height: 160)
                                        .clipShape(RoundedRectangle(cornerRadius: 16))
                                    Text("\(Int(h.price)) SR")
                                        .bold()
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    CicularImagesView(sordtedByPrice: Furniture(id: UUID(), image: "chair2", catigory: "", isNew: false), idFurniture: UUID())
}
