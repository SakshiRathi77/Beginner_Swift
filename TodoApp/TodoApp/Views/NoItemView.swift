//
//  NoItemView.swift
//  TodoApp
//
//  Created by Sakshi Rathi on 23/09/25.
//

import SwiftUI

struct NoItemView: View {
    
    @State var animation : Bool = false
    var body: some View {
        ScrollView{
            VStack (spacing: 10){
                Text("No items to show !!! ")
                    .font(.title)
                    .fontWeight(.semibold)
                Text("Are you a productive person ! If yes then thier must be some work for you")
                NavigationLink(destination: AddView(), label: {Text("Add todo Items 📝")
                        .foregroundColor(.white)
                        .fontWeight(.semibold)
                        .padding()
                        .frame(height : 55)
                        .background(animation ? .red : Color.accentColor)
                        .cornerRadius(20)
                }
                )
                .padding(.horizontal, animation ? 30 : 50)
                .shadow(
                    color: animation ? .red.opacity(0.7) : Color.accentColor.opacity(0.7),
                    radius: animation ? 30 : 10,
                    x: 0.0,
                    y: animation ? 50 : 30
                )
                .scaleEffect(animation ?1.1 :1.0)
            }.multilineTextAlignment(.center)
                .padding(40)
                .onAppear(perform : addAnimation)
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
    }
    
    
    func addAnimation(){
        guard !animation else{return}
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            withAnimation(
                Animation
                    .easeInOut(duration: 2.0)
                    .repeatForever()
            
            ){
                self.animation.toggle()
            }
        }
    }
}
struct NoItemView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            NoItemView()
        }
    }
}
