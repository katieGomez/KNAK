import SwiftUI
struct ResourcesView: View {
  var body: some View {
      ZStack{
        Color(red: 249.0/255.0, green: 209/255.0, blue: 223/255.0)
          .ignoresSafeArea()
        VStack {
          ScrollView {
          Text("Resources")
            .font(.system(size: 34))
            .fontWeight(.semibold)
            .foregroundColor(Color(red: 0.0/255.0, green: 56.0/255.0, blue: 68.0/255.0))
            .fixedSize(horizontal: false, vertical: true)
            .multilineTextAlignment(.center)
            .padding()
            .frame(width: 400, height: 50)
            .background(Rectangle().fill(Color.white))
          HStack{
            Text("Clever Girl Finance")
              .font(.system(size:22))
              .padding(.bottom, 3)
              .foregroundColor(Color(red:0/255, green:108/255, blue:103/255))
            Text("(website)")
              .foregroundColor(Color(red:0/255, green:108/255, blue:103/255))
          }
          HStack{
            Text("Money Geek")
              .font(.system(size:22))
              .padding(.bottom,3)
              .foregroundColor(Color(red:0/255, green:108/255, blue:103/255))
            Text("(website)")
              .foregroundColor(Color(red:0/255, green:108/255, blue:103/255))
          }
          HStack{
            Text("I Want More Pizza")
              .italic()
              .font(.system(size:22))
              .foregroundColor(Color(red:0/255, green:108/255, blue:103/255))
            Text("(book)")
              .foregroundColor(Color(red:0/255, green:108/255, blue:103/255))
          }
          HStack{
            Text("by Steven Burkholder")
              .font(.system(size: 16))
              .foregroundColor(Color(red:0/255, green:108/255, blue:103/255))
          }
          HStack{
            Text("Tips")
              .font(.system(size: 30))
              .fontWeight(.semibold)
              .foregroundColor(Color(red: 0.0/255.0, green: 56.0/255.0, blue: 68.0/255.0))
              .fixedSize(horizontal: false, vertical: true)
              .multilineTextAlignment(.center)
              .frame(width: 400, height: 50)
              .background(Rectangle().fill(Color.white))
              .padding(.bottom, 3.0)
          }
          HStack{
            Text("\"There is a correlation between how much we care about what others think of us and how much time, energy, and money we waste in a month.\"")
              .font(.system(size: 19))
              .multilineTextAlignment(.center)
              .padding(.horizontal, 4.0)
              .foregroundColor(Color(red:0/255, green:108/255, blue:103/255))
          }
          HStack{
            Text("-- Mokokoma Mokhonoana")
              .font(.system(size: 16))
              .padding(.bottom, 3.0)
              .foregroundColor(Color(red:0/255, green:108/255, blue:103/255))
          }
          VStack{
            HStack{
              Text("\"Don't use all your money in one sitting.\"")
                .font(.system(size: 18.5))
                .foregroundColor(Color(red:0/255, green:108/255, blue:103/255))
            }
            HStack{
              Text("-- Kelly Sung of KNAK")
                .font(.system(size:16))
                .padding(.bottom, 3.0)
                .foregroundColor(Color(red:0/255, green:108/255, blue:103/255))
            }
            HStack{
              Text("\"Spend your money on the things that matter\"")
                .font(.system(size:18.5))
                .foregroundColor(Color(red:0/255, green:108/255, blue:103/255))
            }
            HStack{
              Text("-- Nicole Tran of KNAK")
                .font(.system(size:16))
                .padding(.bottom,3)
                .foregroundColor(Color(red:0/255, green:108/255, blue:103/255))
            }
            HStack{
              Text("\"Invest if you want money.\"")
                .font(.system(size:18.5))
                .foregroundColor(Color(red:0/255, green:108/255, blue:103/255))
            }
            HStack{
              Text("\"-- Abigail Lang of KNAK")
                .font(.system(size:16))
                .padding(.bottom,3)
                .foregroundColor(Color(red:0/255, green:108/255, blue:103/255))
            }
            HStack{
              Text("\"Treat money as a tool; don't be afriad to use it.\"")
                .lineLimit(nil)
                .font(.system(size: 18.5))
                .multilineTextAlignment(.center)
                .padding(.horizontal, 23.0)
                .foregroundColor(Color(red:0/255, green:108/255, blue:103/255))
            }
            HStack{
              Text("-- Katie Gomez of KNAK")
                .font(.system(size:16))
                .padding(.bottom, 3.0)
                .foregroundColor(Color(red:0/255, green:108/255, blue:103/255))
            }
          }
          VStack{
            HStack{
              Text("\"Don't buy things just because they're on sale.\"")
                .lineLimit(nil)
                .font(.system(size: 18.5))
                .multilineTextAlignment(.center)
                .padding(.horizontal, 23.0)
                .foregroundColor(Color(red:0/255, green:108/255, blue:103/255))
            }
            HStack{
              Text("-- Roni, *KNAK* Manager")
                .font(.system(size:16))
                .padding(.bottom, 3.0)
                .foregroundColor(Color(red:0/255, green:108/255, blue:103/255))
            }
            HStack{
              Text("\"Use the TikTok money manifesting audios.\"")
                .lineLimit(nil)
                .font(.system(size: 18.5))
                .multilineTextAlignment(.center)
                .padding(.horizontal, 23.0)
                .foregroundColor(Color(red:0/255, green:108/255, blue:103/255))
            }
            HStack{
              Text("-- Julia, KwK Instructor")
                .font(.system(size:16))
                .padding(.bottom, 3.0)
                .foregroundColor(Color(red:0/255, green:108/255, blue:103/255))
            }
          }
      }
    }
  }
}
struct ResourcesView_Previews: PreviewProvider {
  static var previews: some View {
      ResourcesView()
  }
}
}
