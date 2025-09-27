//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by Sakshi Rathi on 02/09/25.
//

import SwiftUI

struct AppetizerListCell: View {
    let appetizer :Appetizer
    var body: some View {
        HStack{
            AppetizerRemoteImage(urlString: appetizer.image)
                .aspectRatio(contentMode: .fit)
                .frame(width: 120,height: 90,alignment: .center)
                .cornerRadius(8)
            VStack(alignment: .leading, spacing: 8){
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.medium)
                
                Text("$\(appetizer.servings)")
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .fontWeight(.semibold)
            }
            .padding(.leading)
        }
    }
}


