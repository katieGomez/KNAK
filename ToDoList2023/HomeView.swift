//
//  HomeView.swift
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
                    Color(red: 355.0/255.0, green: 235.0/255.0, blue: 198.0/255.0)
                        .ignoresSafeArea()
                    VStack{
                        HStack{
                            VStack{
                                Color(red: 255.0/255.0, green: 235.0/255.0, blue: 198.0/255.0)
                                Text("KNAK HOME")
                                    .font(.system(size: 34))
                                    .fontWeight(.semibold)
                                    .padding([.top],90)
                                Spacer()
                               
                                Text("Your Total Expenses")
                                    .font(.system(size: 25))
                        Image("Labby")
                                    .resizable()
                                    .frame(width: 290, height: 390)
                                Spacer()
                                Text("Your Balance")
                                    .font(.system(size: 25))
                                Spacer()
                                Text("Your Goals")
                                    .font(.system(size: 25))
                                    .padding([.bottom],100)
                            
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
                                        .padding(-1.0)
                                        .fixedSize(horizontal: true, vertical: true)
                                   // Text("Checklist")
                                }
                                NavigationLink(destination: AbigailView()) {
                                    Image(systemName: "chart.pie")
                               //     Text("Pie")
                                }
                                NavigationLink(destination: AbigailView()) {
                                    Image(systemName: "plus.slash.minus")
                                //    Text("Calculator")
                                }
                                NavigationLink(destination: ResourcesView()) {
                                    Image(systemName: "pencil.and.ellipsis.rectangle")
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
