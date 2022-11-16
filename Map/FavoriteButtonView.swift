//
//  FavoriteButtonView.swift
//  Map
//
//  Created by David Li on 2022-11-17.
//

import SwiftUI
//
struct FavoriteButtonView: View {
    //MARK: Storing property
    let backgroundColor:Color
    let imageIcon:String
    let description:String
    
    //MARK: Computing property
    var body: some View {
        VStack{
            ZStack{
                Image(systemName: imageIcon)
                    .font(.system(size: 60))
                    .foregroundColor(backgroundColor)
            }
            Text(description)
        }
    }
}


