//  AnimationAmountCell.swift
//  AnimationProfile
//  Created by Sumit on 04/09/24.

import SwiftUI

struct AnimationAmountCell: View {
    
    var model:AnimationProfileModel

    var body: some View {
        Text(model.amount)
            .foregroundStyle(.white)
            .font(.system(size: 16, weight: .semibold, design: .default))
    }
    
 }

#Preview {
    AnimationAmountCell(model: AnimationProfileModel(name: "F_flow", img: "", amount: "$890.46", status: "UnPaid"))
}
