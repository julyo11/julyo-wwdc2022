//
//  OnboardingView.swift
//  KitoGalo
//
//  Created by Julyo  on 24/04/22.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        Onboarding1()
    }
}

struct Onboarding1:View {
    var body: some View {
        Image("Onboarding1")
            .padding(.bottom, 24.0)
        Text("Palembang language is unique and slightly different from other regional languages")
            .font(.title2)
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .padding(.bottom, 8.0)
            .frame(width: 358)
        Text("Some of the words are the same as Bahasa Indonesia, especially a word with “a” ending, but the “a” change into “o”.")
            .font(.body)
            .fontWeight(.regular)
            .multilineTextAlignment(.center)
            .padding(.bottom, 32.0)
            .frame(width: 358)
            .opacity(0.8)
        NavigationLink(destination: Onboarding2()){
            Text("Next")
                .font(.body)
                .fontWeight(.semibold)
                .padding(.vertical, 16.0)
                .frame(width: 358)
                .background(Color.init(red: 18 / 255, green: 43 / 255, blue: 84 / 255))
                .hoverEffect(.lift)
                .cornerRadius(100)
                .foregroundColor(.white)
        }.frame(maxHeight: .infinity, alignment: .bottom)
    }
}

struct Onboarding2:View {
    var body: some View {
        Image("Onboarding2")
            .padding(.bottom, 24.0)
        Text("Some of example words from Palembang -> Indonesia -> English:")
            .font(.title2)
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .padding(.bottom, 8.0)
            .frame(width: 358)
        Image("PalembangWord")
        NavigationLink(destination: Onboarding3()){
            Text("Next")
                .font(.body)
                .fontWeight(.semibold)
                .padding(.vertical, 16.0)
                .frame(width: 358)
                .background(Color.init(red: 18 / 255, green: 43 / 255, blue: 84 / 255))
                .hoverEffect(.lift)
                .cornerRadius(100)
                .foregroundColor(.white)
        }.frame(maxHeight: .infinity, alignment: .bottom)
    }
}

struct Onboarding3:View {
    var body: some View {
        Image("Onboarding3")
            .padding(.bottom, 24.0)
        Text("It’s not difficult to learn Palembang language, if you already proficient in Indonesia Language")
            .font(.title2)
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .padding(.bottom, 8.0)
            .frame(width: 358)
        Text("Even though there are still some of the words that don’t change from “a” to “o”. Let’s jump into the dictionary to view the other words!")
            .font(.body)
            .fontWeight(.regular)
            .multilineTextAlignment(.center)
            .padding(.bottom, 32.0)
            .frame(width: 358)
            .opacity(0.8)
        NavigationLink(destination: DictionaryView()){
            Text("View Dictionary")
                .font(.body)
                .fontWeight(.semibold)
                .padding(.vertical, 16.0)
                .frame(width: 358)
                .background(Color.init(red: 18 / 255, green: 43 / 255, blue: 84 / 255))
                .hoverEffect(.lift)
                .cornerRadius(100)
                .foregroundColor(.white)
        }.frame(maxHeight: .infinity, alignment: .bottom)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
