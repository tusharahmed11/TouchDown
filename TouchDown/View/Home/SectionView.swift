//
//  SectionView.swift
//  TouchDown
//
//  Created by Tushar ahmed on 13/9/23.
//

import SwiftUI

struct SectionView: View {
    
    // MARK: - PROPERTIEs
    
    @State var rotateClockwise: Bool
    
    var body: some View {
        VStack(spacing: 0){
            Spacer()
            
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 :  -90))
            
            Spacer()
        }
        .background(colorGray.cornerRadius(12))
        .frame(width: 85)
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        SectionView(rotateClockwise: false)
    }
}
