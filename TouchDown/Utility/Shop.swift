//
//  Shop.swift
//  TouchDown
//
//  Created by Tushar ahmed on 15/9/23.
//

import Foundation

class Shop: ObservableObject{
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}
