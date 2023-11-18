//
//  NewArrivalView.swift
//  Shopping
//
//  Created by Reem Alammari on 03/05/1445 AH.
//

import SwiftUI

struct NewArrivalView: View {
    @ObservedObject var datafile = FileBase()
    
    var body: some View {
        let newArrival = datafile.newArrival
        var numallpices = datafile.newArrival.reduce(0,{$0 + $1.amount})
      
            VStack{
                Text("Number Of New Arrival Pieces: \(numallpices)")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .bold()
                    .padding()
                ScrollView(showsIndicators: false) {
                ForEach(newArrival){ n in
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(Color.gray.opacity(0.5) ,lineWidth: 1.0)
                        .frame(height: 160)
                        .overlay{
                            HStack(spacing: 40.0){
                                Image(n.image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 200 , height: 150)
                                VStack(spacing: 20.0){
                                    Text("\(Int(n.price)) SR")
                                        .font(.title2)
                                    
                                    Button {
                                    //    n.amount
                                    } label: {
                                        Image(systemName: "basket")
                                            .font(.title2)
                                    }

                                    
                                }
                            }
                        }
                }
                
                
                
            }.padding()
        }
    }
}

#Preview {
    NewArrivalView()
}
