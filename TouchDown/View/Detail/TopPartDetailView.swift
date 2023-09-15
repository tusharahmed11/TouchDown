//
//  TopPartDetailView.swift
//  TouchDown
//
//  Created by Tushar ahmed on 15/9/23.
//

import SwiftUI

struct TopPartDetailView: View {
    
    // MARK: - PROPERTY
    @State private var isAnimating: Bool = false
    @EnvironmentObject var shop: Shop
    
    // MARK: - BODY
    var body: some View {
        HStack(alignment: .center,spacing: 6) {
            VStack(alignment: .leading,spacing: 6) {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .fontWeight(.black)
                    .font(.largeTitle)
                    .scaleEffect(1.35,anchor: .leading)
            
            }
            .offset(y:isAnimating ? -50 : -75)
            
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -35)
        }.onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)){
                isAnimating.toggle()
            }
        })
    }
}

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
