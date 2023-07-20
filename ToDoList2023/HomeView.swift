//
//  ContentView.swift
//  knakHomePage
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        
        VStack{
            
            NavigationStack {
                ZStack {
                    Color(red: 218.0/255.0, green: 222.0/255.0, blue: 253.0/255.0)
                        .ignoresSafeArea()
                    VStack{
                        ScrollView {
                            HStack{
                                VStack{
                                    Color(red: 218.0/255.0, green: 222.0/255.0, blue: 253.0/255.0)
                                    Text("KNAK HOME")
                                        .font(.system(size: 34))
                                        .fontWeight(.bold)
                                        .padding([.top],10)
                                    Spacer()
                                        .padding(0.5)
                                    Text("Your Total Expenses:")
                                        .font(.system(size: 25))
                                        .fontWeight(.medium)
                                    Image("Labby")
                                        .resizable()
                                        .frame(width: 280, height: 390)
                                    Spacer()
                                        .padding(0.5)
                                    
                                    Text("Your Balance: $250")
                                        .font(.system(size: 25))
                                        .fontWeight(.medium)
                                    Spacer()
                                        .padding(0.5)
                                    Text("Your Goals:")
                                        .font(.system(size: 25))
                                        .fontWeight(.medium)
                                        .padding([.bottom],10)
                                    Text("✓ Save 5% of my allowance a month\n▪️Save 25% of my income\n▪️Only go to Starbucks once a week")
                                }
                            }
                            
                        }
                    }
                    
                    VStack {
                        Text("")
                            .toolbar {
                                ToolbarItemGroup(placement: .status) {
                                    NavigationLink(destination: ContentView()) {
                                        Image(systemName: "list.number")
                                            .foregroundColor(Color.indigo)
                                            .padding(-1.0)
                                            .fixedSize(horizontal: true, vertical: true)
                                        // Text("Checklist")
                                    }
                                    NavigationLink(destination: AbigailView()) {
                                        Image(systemName: "chart.pie")
                                            .foregroundColor(Color.indigo)
                                        //     Text("Pie")
                                    }
                                    NavigationLink(destination: CalculatorView()) {
                                        Image(systemName: "plus.slash.minus")
                                            .foregroundColor(Color.indigo)
                                        //    Text("Calculator")
                                    }
                                    NavigationLink(destination: ResourcesView()) {
                                        Image(systemName: "pencil.and.ellipsis.rectangle")
                                            .foregroundColor(Color.indigo)
                                        //     Text("Resources")
                                    }
                                    
                                }
                            }
                        // .navigationTitle("KNAK Home")
                        
                            .navigationBarTitleDisplayMode(.inline)
                        
                    }
                    
                }
            }
            
        }
    }
    struct HomeView_Previews: PreviewProvider {
        static var previews: some View {
            HomeView()
        }
    }
    
}









