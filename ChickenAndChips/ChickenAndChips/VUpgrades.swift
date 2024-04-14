//
//  VUpgrades.swift
//  ChickenAndChips
//
//  Created by Charlotte Chrysostom on 13/04/2024.
//

import SwiftUI

struct VUpgrades: View {
    
    @State var page = 0
    var body: some View {
        VStack {
            HStack {
                Button {
                    withAnimation {
                        page = 0
                    }
                } label: {
                    Text(verbatim: "Building")
                }
                .padding(.bottom, 10)
                Button {
                    withAnimation {
                        page = 1
                    }
                } label: {
                    Text(verbatim: "Staff")
                }
                .padding(.bottom, 10)
                Button {
                    withAnimation {
                        page = 2
                    }
                } label: {
                    Text(verbatim: "Products")
                }
                .padding(.bottom, 10)
                Button {
                    withAnimation {
                        page = 3
                    }
                } label: {
                    Text(verbatim: "Fun")
                }
                .padding(.bottom, 10)
                
            }
            .buttonStyle(SJuicyButtonStyle())
            //.frame(maxWidth: 100)
            .background(Image("brick").resizable(resizingMode: .tile))
            ScrollView {
                LazyVStack {
                    switch page {
                    case 0:
                        VUBuilding()
                    case 1:
                        VUStaff()
                    case 2:
                        VUProducts()
                    case 3:
                        VUFun()
                    default:
                        VUBuilding()
                    }
                    /*
                    // Building Upgrades
                    CUpgradeable(title: "Relocate", description: "Upgrade your pub to a more wealthy location. Resets all upgrades. +£100/sec", price: 200000)
                    CUpgradeable(title: "Outdoor Seating", description: "Increase capacity of the pub with outdoor seating... when its sunny. +10% rating boost", price: 1500)
                    CUpgradeable(title: "Neon Sign", description: "Nothing catches the attention of customers (and flies) than a bright neon sign. +15% rating boost", price: 4000)
                    CUpgradeable(title: "Plants", description: "Bring some life into the pub with some greenery. -5% rating decay", price: 500)
                    CUpgradeable(title: "Micro Brewery", description: "Keep the pub hip and trendy by brewing your own craft IPAs. Don't worry, you don't need to know what hops are for the quiz questions. +150/sec", price: 5000)
                    
                    
                    Spacer()
                    // Staff Upgrades
                    CUpgradeable(title: "Quiz Master", description: "Hire someone to run the pub quiz while you’re away. +£10/sec", price: 2500)
                    CUpgradeable(title: "Bouncer", description: "Hire security to keep out troublemakers.", price: 4500)
                    CUpgradeable(title: "Bar Staff", description: "Hire staff to serve more customers. +£20 max income", price: 4000)
                    CUpgradeable(title: "Chef", description: "Hire kitchen staff to cook more food. +£10 max income", price: 2000)
                    CUpgradeable(title: "Cleaner", description: "Hire cleaning staff to keep the pub looking good. -5% rating decay", price: 1000)
                    
                    Spacer()
                    // Fun Upgrades
                    CUpgradeable(title: "Dart Board", description: "Classic pub game.", price: 500)
                    CUpgradeable(title: "Pool Table", description: "Keep customers in the pub by giving them a pool table.", price: 2500)
                    CUpgradeable(title: "Speakers", description: "Save your vocal cords by investing in some crystal clear speakers.", price: 5500)
                    CUpgradeable(title: "TVs", description: "Make sure to pay your TV license.", price: 10000)
                    CUpgradeable(title: "Live Band", description: "Attract the crowds with a live band every night.", price: 15000)
                    
                    Spacer()
                    // Products Upgrades
                    CUpgradeable(title: "Chicken N’ Chips", description: "Serve the team’s favourite meal.", price: 800)
                    CUpgradeable(title: "Snake Bite", description: "Serve the classic SU Happy Hour drink.", price: 500)
                    CUpgradeable(title: "Cocktails", description: "Charge loads for cocktails.", price: 1,200)
                    CUpgradeable(title: "Burgers", description: "Who doesn’t like a burger?", price: 2000)
                    CUpgradeable(title: "Wine", description: "Rake in the cash by selling “fancy” wine.", price: 4000)
                    
                    Spacer()
                    # Other Upgrades
                    CUpgradeable(title: "Easy Questions", description: "General knowledge most people know.", price: 0)
                    CUpgradeable(title: "Medium Questions", description: "Bring on a challenge to get more customers interested.", price: 1500)
                    CUpgradeable(title: "Hard Questions", description: "Select these if you dare. Quizzers from far and wide will visit, unless all the answers are wrong.", price: 4000)
                    CUpgradeable(title: "Rename Pub", description: "Not happy with your name?", price: 20000)
                    CUpgradeable(title: "Ad Campaign", description: "Buy bots from the dark web to promote your pub.", price: 4000)
                    Spacer()
                     */
                }
                .frame(maxWidth: .infinity)
            }
        }
    }
}

#Preview {
    VUpgrades()
}
