//
//  BuilderPage.swift
//  Shopping
//
//  Created by Reem Alammari on 03/05/1445 AH.
//

import SwiftUI

struct BuilderPage: View {
    var furniture : Furniture

    var idFurniture: UUID
   
    var body: some View {
       
        NavigationStack {
            VStack{
                NavigationLink {
//                    if idFurniture == furniture.id{
//                        CicularImagesView(sordtedByPrice: Furniture(id: furniture.id , image: furniture.image , catigory: furniture.catigory, isNew: furniture.isNew), idFurniture: furniture.id)
//                        
//                    }else{
//                        Text("Cannot Found Page..")
                        CicularImagesView(sordtedByPrice: Furniture(id: furniture.id , image: furniture.image , catigory: furniture.catigory, isNew: furniture.isNew), idFurniture: furniture.id)
                        
                  //  }
                } label: {
                    
                    VStack{
                        Image(furniture.image)
                            .resizable()
                            .scaledToFit()
                            .frame(maxWidth: .infinity)
                            .frame(height: 110)
                            .clipShape(Circle())
                        Text(furniture.catigory)
                            .bold()
                            .foregroundColor(.black.opacity(0.7))
                    }
                    
                }

                
                
                
            }
        }
    }
}

#Preview {
    BuilderPage(furniture: Furniture(id: UUID(), image: "chair1", catigory: "Chairs", isNew: false) , idFurniture: UUID())
}
