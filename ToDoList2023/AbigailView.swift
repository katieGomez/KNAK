//
//  ContentView.swift
//  KNAK
//
//  Created by Scholar on 7/18/23.
//

import SwiftUI
struct AbigailView: View {
 @State private var entertainmentInput: String = ""
 @State private var fashionInput: String = ""
 @State private var foodInput: String = ""
 @State private var transportationInput: String = ""
 @State private var miscellaneousInput: String = ""
 @State private var showPieChart: Bool = false
    var body: some View {
        ZStack{
            Color(red: 228.0/255.0, green: 250.0/255.0, blue: 192.0/255.0)
                .ignoresSafeArea()
            ScrollView {
                VStack {
                    Text("Spending Tracker")
                        .font(.title)
                        .padding()
                    TextField("Entertainment", text: $entertainmentInput)
                        .padding()
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    TextField("Fashion/Beauty", text: $fashionInput)
                        .padding()
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    TextField("Food/Drinks", text: $foodInput)
                        .padding()
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    TextField("Transportation", text: $transportationInput)
                        .padding()
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    TextField("Miscellaneous", text: $miscellaneousInput)
                        .padding()
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Button(action: {
                        createPieChart()
                    }) {
                        Text("Generate Pie Chart")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding()
                    if showPieChart {
                        PieChartView(entertainmentInput: entertainmentInput,
                                     fashionInput: fashionInput,
                                     foodInput: foodInput,
                                     transportationInput: transportationInput,
                                     miscellaneousInput: miscellaneousInput)
                    }
                }
                .padding(.bottom)
            }
        }
    }
 func createPieChart() {
  showPieChart = true
 }
}
struct PieChartView: View {
 let entertainmentInput: String
 let fashionInput: String
 let foodInput: String
 let transportationInput: String
 let miscellaneousInput: String
 var body: some View {
  VStack {
   Text("Spending Breakdown")
    .font(.title)
    .padding()
   // Generate the pie chart using the input data
   PieChart(data: [
    ChartData(name: "Entertainment", value: Double(entertainmentInput) ?? 0),
    ChartData(name: "Fashion/Beauty", value: Double(fashionInput) ?? 0),
    ChartData(name: "Food/Drinks", value: Double(foodInput) ?? 0),
    ChartData(name: "Transportation", value: Double(transportationInput) ?? 0),
    ChartData(name: "Miscellaneous", value: Double(miscellaneousInput) ?? 0)
   ])
   .aspectRatio(1, contentMode: .fit)
   .padding()
   // Add labels to the pie chart
   ForEach([
    ("Entertainment", Color.blue),
    ("Fashion/Beauty", Color.purple),
    ("Food/Drinks", Color.green),
    ("Transportation", Color.orange),
    ("Miscellaneous", Color.gray)
   ], id: \.0) { category, color in
    HStack {
     Circle()
      .fill(color)
      .frame(width: 12, height: 12)
     Text(category)
      .font(.subheadline)
      .foregroundColor(.primary)
    }
   }
  }
 }
}
struct PieChart: View {
 let data: [ChartData]
 var body: some View {
  ZStack {
   ForEach(Array(data.enumerated()), id: \.element.id) { (index, element) in
    PieSlice(startAngle: sliceStartAngle(index), endAngle: sliceEndAngle(index))
     .foregroundColor(color(for: element.name))
   }
  }
 }
 func sliceStartAngle(_ index: Int) -> Angle {
  var startAngle = Angle.degrees(0)
  for i in 0..<index {
   startAngle += Angle.degrees(data[i].value / totalValue() * 360)
  }
  return startAngle
 }
 func sliceEndAngle(_ index: Int) -> Angle {
  sliceStartAngle(index) + Angle.degrees(data[index].value / totalValue() * 360)
 }
 func totalValue() -> Double {
  data.reduce(0) { $0 + $1.value }
 }
 func color(for name: String) -> Color {
  // Customize the colors based on the element's name or any other criteria
  switch name {
  case "Entertainment":
   return .blue
  case "Fashion/Beauty":
   return .purple
  case "Food/Drinks":
   return .green
  case "Transportation":
   return .orange
  case "Miscellaneous":
   return .gray
  default:
   return .blue
  }
 }
}
struct ChartData: Identifiable {
 let id = UUID()
 let name: String
 let value: Double
}
struct AbigailView_Previews: PreviewProvider {
 static var previews: some View {
  AbigailView()
 }
}
struct PieSlice: Shape {
 let startAngle: Angle
 let endAngle: Angle
 func path(in rect: CGRect) -> Path {
  var path = Path()
  let center = CGPoint(x: rect.midX, y: rect.midY)
  let radius = min(rect.width, rect.height) / 2
  path.move(to: center)
  path.addArc(center: center, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: false)
  path.closeSubpath()
  return path
 }
}

//Besties Nicole and abigailzzzzzzzzz
// :(
//ABIGAIL LANG IS  A MEANCEASDJNFS0 wifabhsduoh
// nicole tran is a POOPYHEAD!!!
