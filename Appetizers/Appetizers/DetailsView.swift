//
//  DetailsView.swift
//  Appetizers
//
//  Created by Sakshi Rathi on 06/09/25.
//
import SwiftUI

struct AppetizerDetailView: View {
    
   // @EnvironmentObject var order: Order
    
    // pass in an appetizer for this view
    let appetizer: Appetizer
    @Binding var isShowingDetail: Bool
    
    var body: some View {
        VStack {
            AppetizerRemoteImage(urlString: appetizer.image)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            VStack {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text(appetizer.cuisine)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                
                HStack(spacing: 40) {
                    NutritionInfo(title: "Calories", value: "\(appetizer.caloriesPerServing)")
                    NutritionInfo(title: "Carbs", value: "\(appetizer.rating) g")
                    NutritionInfo(title: "Protein", value: "\(appetizer.userId) g")
                    
                }//HStack
            }//VStack
            
            Spacer()
            
            Button {
               // order.add(appetizer) .
                isShowingDetail = false
            } label: {
                APButton(title: "$\(appetizer.servings, specifier: "%.2f") - Add To Cart")
            }
            .foregroundColor(.white)
            .padding(.bottom, 30)
            
            
        }//VStack
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        
        .overlay(Button {
            isShowingDetail = false
        } label: {
            XDismissButton()
        }, alignment: .topTrailing)
        
        
    }//View
}//Struct



struct NutritionInfo: View {
    let title: String
    let value: String
    
    var body: some View {
        VStack(spacing: 5) {
            Text(title)
                .bold()
                .font(.caption)
            
            Text(value)
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}
