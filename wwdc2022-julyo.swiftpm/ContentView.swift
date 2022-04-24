import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            VStack(alignment: .center, spacing: 0, content: {
                Image("Ampera")
                    .resizable(resizingMode: .stretch)
                    .padding(.bottom, 32.0)
                    .ignoresSafeArea()
                Text("Learn Palembang Language in Fun Way")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 8.0)
                    .frame(width: 358)
                Text("Palembang is one of the cities of Indonesia located in South Sumatra")
                    .font(.body)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 32.0)
                    .frame(width: 321)
                    .opacity(0.8)
                NavigationLink(destination: OnboardingView()){
                    Text("Let's Start")
                        .font(.body)
                        .fontWeight(.semibold)
                        .padding(.vertical, 16.0)
                        .frame(width: 358)
                        .background(Color.init(red: 18 / 255, green: 43 / 255, blue: 84 / 255))
                        .hoverEffect(.lift)
                        .cornerRadius(100)
                        .foregroundColor(.white)
                }
            })
        }
    }
}
