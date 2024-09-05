//  AnimationStatusCell.swift
//  AnimationProfile
//  Created by Sumit on 04/09/24.

import SwiftUI

struct AnimationStatusCell: View {
    
    var model:AnimationProfileModel

    var body: some View {
         Rectangle()
            .fill(.gray)
            .frame(width: model.status == "paid" ? 68 : 90,height:38)
             .cornerRadius(30)
             .opacity(0.6)
             .overlay(content: {
                HStack {
                    Text(model.status)
                          .foregroundStyle(.white)
                          .font(.system(size: 16, weight: .bold, design: .default))
              }.padding([.leading,.trailing])
          })
      }
 }

#Preview {
    AnimationStatusCell(model:AnimationProfileModel(name: "Mercurry", img: "img_Two", amount: "$200.30", status: "UnPaid"))
 }
