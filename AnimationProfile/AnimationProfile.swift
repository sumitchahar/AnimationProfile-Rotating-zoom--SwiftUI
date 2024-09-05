//  ContentView.swift
//  AnimationProfile
//  Created by Sumit on 02/09/24.

import SwiftUI

 struct AnimationProfile: View {
     
    @State private var animationAmount = 1.0
    @State private var showDetail = false
    @State private var animationAmountArrow = 0.6
    @State private var degrees = 0

    var animationProfileMVVM = AnimationProfileMVVM()
     
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing:-19) {
                HStack {
                    Rectangle()
                        .overlay(content: {
                            Image("Bg_image_One")
                      })
                  }
                .frame(width: geometry.size.width,height:320)
                .edgesIgnoringSafeArea(.top)
                HStack {
                    Rectangle()
                        .frame(width: geometry.size.width,height:60)
                        .overlay(content: {
                            HStack {
                                Text("Invoices")
                                    .foregroundStyle(.white)
                                    .font(.system(size: 18, weight: .bold, design: .default))
                                    .transition(.asymmetric(insertion: .move(edge: .top), removal: .move(edge: .bottom)))
                                    .rotationEffect(.degrees(Double(degrees)))
                                    .onAppear {
                                        let baseAnimation = Animation.easeInOut(duration: 1)
                                        let repeated = baseAnimation.repeatForever(autoreverses: true)
                                        withAnimation(repeated) {
                                            degrees = -20
                                        }
                                    }
                                Spacer()
                                Image("down_Arrow")
                                    .resizable()
                                    .frame(width: 30,height:30)
                                    .padding([.trailing],5)
                                    .scaleEffect(animationAmountArrow)
                                    .onAppear {
                                        let baseAnimation = Animation.easeInOut(duration: 1)
                                        let repeated = baseAnimation.repeatForever(autoreverses: true)
                                        withAnimation(repeated) {
                                            animationAmountArrow = 0.8
                                        }
                                    }
                                Text("Reports")
                                    .foregroundStyle(.white)
                                    .font(.system(size: 18, weight: .bold, design: .default))
                                    .transition(.asymmetric(insertion: .move(edge: .top), removal: .move(edge: .bottom)))
                                    .rotationEffect(.degrees(Double(degrees)))
                                    .onAppear {
                                        let baseAnimation = Animation.easeInOut(duration: 1)
                                        let repeated = baseAnimation.repeatForever(autoreverses: true)
                                        withAnimation(repeated) {
                                            degrees = -20
                                  }
                              }
                         }.padding([.leading,.trailing])
                    })
                }
                VStack {
                    Rectangle()
                        .fill(.gray)
                        .frame(width: geometry.size.width,height:1.4)
                        .padding([.top],18)
                    HStack {
                        Rectangle()
                            .fill(.black)
                            .frame(width: geometry.size.width,height:60)
                            .overlay(content: {
                                HStack {
                                    Text("Customer name")
                                        .foregroundStyle(.gray)
                                        .font(.system(size: 18, weight: .semibold, design: .default))
                                    Spacer()
                                    Text("Amount")
                                        .foregroundStyle(.gray)
                                        .font(.system(size: 18, weight: .semibold, design: .default))
                                    Spacer()

                                    Text("Status")
                                        .foregroundStyle(.gray)
                                        .font(.system(size: 18, weight: .semibold, design: .default))
                                }.padding([.leading,.trailing])
                        })
                    }.padding([.top],-8)
                }
                VStack {
                    List(animationProfileMVVM.animationProfileModel, id: \.name) { modelData in
                        HStack {
                            AnimationNameCell(model:modelData)
                                .padding([.leading],18)
                            Spacer()
                            AnimationAmountCell(model: modelData)
                                .padding([.leading],21)
                            Spacer()
                            AnimationStatusCell(model: modelData)
                                .padding([.trailing],-10)
                        }.padding([.leading], -20)
                        .listRowBackground(Color.black)
                    }.listStyle(.plain)
                     .background(.black)
                }.padding([.top])
            }
            VStack {
                Image("img")
                       .resizable()
                       .frame(width:100,height:100)
                       .cornerRadius(50)
                       .clipped()
            }
            .overlay(
                RoundedRectangle(cornerRadius: 50)
                    .stroke(.yellow, lineWidth: 3)
            )
            .frame(width:20,height:20)
            .position(x:geometry.size.width/2,y:230)
            .shadow(radius: 10)
            .scaleEffect(animationAmount)
            .animation(.easeInOut(duration: 1.2), value: animationAmount)
        }.onAppear() {
            withAnimation {
               showDetail.toggle()
            }
            animationAmount += 0.1
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.3) {
                animationAmount  = 1.0
            }
        }
    }
 }

#Preview {
    AnimationProfile()
}
