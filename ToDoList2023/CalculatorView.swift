//
//  ContentView.swift
//  budgetCalculatorPage
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI

struct CalculatorView: View {
    
    @State private var entertainmentInput: String = ""
    @State private var foodInput: String = ""
    @State private var transpoInput: String = ""
    @State private var miscInput: String = ""
    @State private var fashionInput: String = ""
    @State private var total : Double = 0.0
    @State var incomeText: String = ""
    @State var income : Double = 0.0

    
    var body: some View {
        ZStack{
            Color(red: 255/255, green: 214/255, blue: 69/255)
                .ignoresSafeArea()
            ScrollView{
                VStack {
                    Text("Budget Calculator")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                        .padding()
                        .background(Rectangle() .foregroundColor(.init(red: 255.0/255, green: 235.0/255, blue: 195.0/255)))
                        .cornerRadius(15)
                    HStack {
                        Text("Expenses")
                            .font(.title)
                            .fontWeight(.medium)
                            .multilineTextAlignment(.leading)
                        
                        Spacer()
                        
                    }
                    
                    
                    .padding()
                    HStack {
                        Text("Fashion/Beauty")
                            .fontWeight(.medium)
                            .padding(.horizontal)
                        TextField("type spendings here...", text: $fashionInput)
                        
                        
                            .padding(.horizontal)
                        
                            .background(Rectangle() .foregroundColor(.init(red: 255.0/255, green: 235.0/255, blue: 195.0/255)))
                            .cornerRadius(15)
                        Spacer()
                    }
                    
                    HStack {
                        Text("clothes, shoes, jewlery, makeup")
                            .fontWeight(.ultraLight)
                            .padding([.leading, .bottom])
                        Spacer()
                    }
                    HStack{
                        Text("Entertainment")
                            .fontWeight(.medium)
                            .padding(.horizontal)
                        TextField("type spendings here...", text: $entertainmentInput)
                            .padding(.horizontal)
                            .background(Rectangle() .foregroundColor(.init(red: 255.0/255, green: 235.0/255, blue: 195.0/255)))
                            .cornerRadius(15)
                        Spacer()
                    }
                    
                    HStack{
                        Text("streaming services, games, books")
                            .fontWeight(.ultraLight)
                            .padding([.leading, .bottom])
                        Spacer()
                    }
                    HStack{
                        Text("Food/Drink")
                            .fontWeight(.medium)
                            .padding(.horizontal)
                        
                        TextField("type spendings here...", text: $foodInput)
                            .padding(.horizontal)
                            .background(Rectangle() .foregroundColor(.init(red: 255.0/255, green: 235.0/255, blue: 195.0/255)))
                            .cornerRadius(15)
                        Spacer()
                    }
                    HStack{
                        Text("takeout, dine-in, etc.")
                            .fontWeight(.ultraLight)
                            .padding([.leading, .bottom])
                        Spacer()
                    }
                    
                    HStack{
                        Text("Transportation")
                            .fontWeight(.medium)
                            .padding(.horizontal)
                        TextField("type spendings here...", text: $transpoInput)
                            .padding(.leading)
                            .background(Rectangle() .foregroundColor(.init(red: 255.0/255, green: 235.0/255, blue: 195.0/255)))
                            .cornerRadius(15)
                        Spacer()
                    }
                    
                    HStack {
                        Text("gas, bus, uber, etc.")
                            .fontWeight(.ultraLight)
                            .padding([.leading, .bottom])
                        Spacer()
                    }
                }
                
                HStack {
                    Text("Miscellaneous")
                        .fontWeight(.medium)
                        .padding(.trailing)
                    TextField("type spendings here...", text: $miscInput)
                        .padding(.horizontal)
                        .background(Rectangle() .foregroundColor(.init(red: 255.0/255, green: 235.0/255, blue: 195.0/255)))
                        .cornerRadius(15)
                    Spacer()
                }
                .padding()
                Button("Calculate!") {
                let entertainmentExpense = Double(entertainmentInput) ?? 0.0
                let foodExpense = Double(foodInput) ?? 0.0
                let transpoExpense = Double(transpoInput) ?? 0.0
                let miscExpense = Double(miscInput) ?? 0.0
                let fashionExpense = Double(fashionInput) ?? 0.0
                total = income - entertainmentExpense - foodExpense - transpoExpense - miscExpense - fashionExpense
                                }
                                .frame(width: 150.0, height: 10.0)
                                .font(.title2)
                                .buttonStyle(.borderedProminent)
                                .tint(Color(red: 0/255, green: 56/255, blue: 68/255))
                                .padding()
                                HStack {
                                    Text("Income     |     Review")
                                        .font(.title2)
                                        .fontWeight(.regular)
                                        .multilineTextAlignment(.center)
                                        .padding()
                                        .frame(width: 325, height: 40)
                                        .background(Rectangle().foregroundColor(.init(red: 255.0/255, green: 235.0/255, blue: 195.0/255)))
                                }
                                HStack {
                                    TextField("type your income here...", text: $incomeText)
                                        .onChange(of: incomeText) { newValue in
                                            income = Double(newValue) ?? 0.0
                                        }
                                    Spacer()
                                        .frame(width: 96.0)
                                    Text("Remaining Funds:")
                                        .font(.title3)
                                        .fontWeight(.medium)
                                        .padding(.trailing)
                                }
                                HStack {
                                    Spacer()
                                        .frame(width: 140.0)
                                    Text("$ \(total)")
                                        .font(.largeTitle)
                                        .padding(.trailing)
                                }
                            }
                        }
                    }
                }
                struct CalculatorView_Previews: PreviewProvider {
                    static var previews: some View {
                        CalculatorView()
                    }
                }
