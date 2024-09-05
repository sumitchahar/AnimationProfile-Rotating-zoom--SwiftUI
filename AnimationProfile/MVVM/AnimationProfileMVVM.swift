//  AnimationProfileMVVM.swift
//  AnimationProfile
//  Created by Sumit on 04/09/24.

 import Foundation

class AnimationProfileMVVM:ObservableObject {
 
    @Published var animationProfileModel:[AnimationProfileModel] = []
     
     init() {
         let obj = AnimationProfileModel(name: "k_park", img:"magnifier", amount: "$323.45", status: "Paid")
         let obj1 = AnimationProfileModel(name: "M_joy", img:"img_Two", amount: "$123.45", status: "Unpaid")
         let obj2 = AnimationProfileModel(name: "Mercurry", img:"magnifier", amount: "$423.45", status: "Paid")
         let obj3 = AnimationProfileModel(name: "Jussey", img:"img_Two", amount: "$923.45", status: "Unpaid")
         let obj4 = AnimationProfileModel(name: "F_flow", img:"magnifier", amount: "$923.45", status: "Unpaid")
         let obj5 = AnimationProfileModel(name: "Jussey", img:"img_Two", amount: "$923.45", status: "Unpaid")
         let obj6 = AnimationProfileModel(name: "Mercurry", img:"magnifier", amount: "$923.45", status: "Unpaid")
         animationProfileModel.append(obj)
         animationProfileModel.append(obj1)
         animationProfileModel.append(obj2)
         animationProfileModel.append(obj3)
         animationProfileModel.append(obj4)
         animationProfileModel.append(obj5)
         animationProfileModel.append(obj6)
     }
    
 }
