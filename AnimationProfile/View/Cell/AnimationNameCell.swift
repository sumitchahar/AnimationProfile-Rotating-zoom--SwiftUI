//  AnimationCell.swift
//  AnimationProfile
//  Created by Sumit on 04/09/24.

import SwiftUI

struct AnimationNameCell:View {
    
   var model:AnimationProfileModel
    
    var body: some View {
        HStack {
            Image(model.img)
                .resizable()
                .frame(width: 42,height:42)
                .cornerRadius(24)
                .padding([.trailing],5)
            Text(model.name)
                .foregroundStyle(.white)
                .font(.system(size: 18, weight: .bold, design: .default))
         }
     }
 }

#Preview {
    AnimationNameCell(model:AnimationProfileModel(name: "Mercurry", img: "img_Two", amount: "$200.30", status: "Paid"))
}
