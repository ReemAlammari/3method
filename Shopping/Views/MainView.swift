//
//  ContentView.swift
//  Shopping
//
//  Created by Reem Alammari on 03/05/1445 AH.
//

import SwiftUI

struct MainView: View {
    @State var searchText: String = ""
    @StateObject var filebase = FileBase()
   // @State  var allpices : Array<Furniture>
    var idFurniture : UUID
    var body: some View {
        let row = [GridItem(.fixed(200))]
   //  var allpices = filebase.furniture.map({$0.image})
            NavigationStack {
                ScrollView(showsIndicators: false) {
                    VStack {
                        ScrollView(.horizontal , showsIndicators: false){
                          
                            LazyHGrid(rows: row ) {
                             
                                ForEach(filebase.mainArray){ f in
                                       
                                    BuilderPage(furniture: Furniture(id:f.id , image:f.image, catigory:f.catigory, isNew: false) , idFurniture: idFurniture)
                                  
                                        
                                  
                                }
                            }
                          
                        } .navigationBarBackButtonHidden(true)
                        
                      RoundedRectangle(cornerRadius: 8)
                            .frame(height: 120)
                            .foregroundColor(.purple.opacity(0.3))
                            .overlay{
                                VStack(spacing: 10.0){
                                    Text("New Arrivals")
                                        .font(.largeTitle)
                                        .bold()
                                        .foregroundColor(.white)
                                    NavigationLink(destination: {
                                        NewArrivalView()
                                    }, label: {
                                        Text("Shop Now")
                                            .foregroundColor(.black)
                                            .padding(.horizontal)
                                            .background(.yellow.opacity(0.8))
                                    })
                                }
                            }
                        Image("living")
                            .resizable()
                            .frame(height: 160)
                        Image("dining")
                            .resizable()
                            .frame(height: 160)
                        Image("bed")
                            .resizable()
                            .frame(height: 160)
                     
//                        ForEach(allpices){ i in
//                            Image(i.image)
//                        }
                        
                    }
                    .padding()
                }.navigationBarBackButtonHidden(true)
            }.searchable(text: $searchText)
        }
    }


#Preview {
    MainView( idFurniture: UUID())
}
