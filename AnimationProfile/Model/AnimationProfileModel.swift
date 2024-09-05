//  AnimationProfileModel.swift
//  AnimationProfile
//  Created by Sumit on 04/09/24.

 import Foundation

struct AnimationProfileModel:Identifiable {
     var id: UUID { UUID() }
     var name:String
     var img:String
     var amount:String
     var status:String
 }
