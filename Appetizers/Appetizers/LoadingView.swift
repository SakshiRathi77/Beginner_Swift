//
//  LoadingView.swift
//  Appetizers
//
//  Created by Sakshi Rathi on 02/09/25.
//
import SwiftUI

//struct ActivityIndicator: UIViewRepresentable {
//
//    func makeUIView(context: Context) -> UIActivityIndicatorView {
//        let activityIndictorView = UIActivityIndicatorView(style: .large)
//        activityIndictorView.color = UIColor.brandPrimary
//        activityIndictorView.startAnimating()
//        return activityIndictorView
//    }
//
//    func updateUIView(_ uiView: UIActivityIndicatorView, context: Context) {
//
//    }
//
//}


struct LoadingView: View {
    var body: some View {
        ZStack {
            Color(.systemBackground)
                .edgesIgnoringSafeArea(.all)
            
            ProgressView("Loading")
                .progressViewStyle(CircularProgressViewStyle(tint: .brandPrimaryColor))
                .scaleEffect(2)
        }
    }
}
