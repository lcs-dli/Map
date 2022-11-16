//
//  SheetView.swift
//  Map
//
//  Created by David Li on 2022-11-17.
//

import SwiftUI

struct SheetView: View {
    //MARK: Storing property
    @Environment(\.dismiss) var dismiss
    
    //MARK: Computing property
    var body: some View {
        ScrollView{
            VStack{
                Button("Go back to map"){
                    dismiss()
                }
                VStack{
                    //Creating the search bar
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .frame(alignment: .leading)
                            .foregroundColor(.black)
                        
                        TextField("",text: .constant(""),prompt: Text("Seatch here"))
                    }
                    .background(
                        RoundedRectangle(cornerRadius: 5)
                            .foregroundColor(Color("Light Gray"))
                    )
                    
                    Text("Royal Observatory")
                        .font(.largeTitle)
                        .padding()
                        
                    VStack{
                        Image("Royal Observatory")
                            .resizable()
                            .scaledToFit()
                            
                        Image("Royal Observatory 2")
                                .resizable()
                                .scaledToFit()
                                
                            
                        Image("Royal Observatory 3")
                                .resizable()
                                .scaledToFit()
                    }
                    Spacer()
                    Spacer()
                    VStack(alignment: .leading){
                        Text("Favorite")
                            .font(.title2)
                        ScrollView(.horizontal){
                        HStack{
                            FavoriteButtonView(backgroundColor: Color("Light Blue"), imageIcon: "house.circle.fill", description: "house")
                            FavoriteButtonView(backgroundColor: Color("Brown"), imageIcon: "briefcase.circle.fill", description: "work")
                            FavoriteButtonView(backgroundColor: Color("Navi Blue"), imageIcon: "tram.circle.fill", description: "transit")
                            FavoriteButtonView(backgroundColor: Color("Orange"), imageIcon: "bag.circle.fill", description: "shopping")
                            FavoriteButtonView(backgroundColor: Color("Red"), imageIcon: "creditcard.circle.fill", description: "banking")

                        }
                    }
                    }
                    
                        
                }
            }
        }
        
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        SheetView()
    }
}
