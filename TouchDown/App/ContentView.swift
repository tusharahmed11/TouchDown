//
//  ContentView.swift
//  TouchDown
//
//  Created by Tushar ahmed on 12/9/23.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    
    @EnvironmentObject var shop: Shop
    
    // MARK: - BODY
    
    var body: some View {
        ZStack {
            if shop.showingProduct == false && shop.selectedProduct == nil {
                VStack(spacing: 0) {
                    
                    NavigationBarView()
                        .padding()
                        .background(Color.white)
                        .shadow(color: Color.black.opacity(0.05), radius: 5,
                        x: 0, y: 5)
                    
                    
                    ScrollView(.vertical, showsIndicators: false, content: {
                        
                        VStack(spacing: 0) {
                            
                            FeaturedTabView()
                                .padding(.vertical,20)
                                .frame(minHeight: 280)
                            
                            CategoryGridView()
                            
                            TitleView(title: "Helmets")
                            
                            LazyVGrid(columns: gridLayout, spacing: 15, content: {
                                ForEach(products){product in
                                    ProductItemView(product: product)
                                        .onTapGesture {
                                            
                                            feedback.impactOccurred()
                                            withAnimation(.easeOut){
                                                shop.showingProduct = true
                                                shop.selectedProduct = product
                                            }
                                        }
                                }
                            }).padding(15)
                            
                            TitleView(title: "Brands")
                            
                            BrandGridView()
                            
                            FooterView()
                                .padding(.horizontal)
                        }
                        
                    })//:Scroll
                    
                    
                }
                .background(colorBackground.ignoresSafeArea(.all,edges: .all))
            } else {
                ProductDetailView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Shop())
    }
}
