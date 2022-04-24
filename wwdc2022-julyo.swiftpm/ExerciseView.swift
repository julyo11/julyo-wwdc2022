//
//  ExerciseView.swift
//  KitoGalo
//
//  Created by Julyo  on 24/04/22.
//

import SwiftUI

struct ExerciseView: View {
    var body: some View {
        ReadyExercise().navigationTitle("Exercise")
    }
}

struct ReadyExercise: View {
    var body: some View {
        Label("This is separator", systemImage: "42.circle").hidden().padding(.bottom, 24.0)
        Image("Exercise")
            .padding(.bottom, 24.0)
        Text("Are You Ready?")
            .font(.title2)
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .padding(.bottom, 8.0)
            .frame(width: 358)
        Text("Before start the exercise, please prepare pen & paper or something to write and save your answer. If you need hint you can view the translate in Indonesia, but try avoid open the translation in Palembang.")
            .font(.body)
            .fontWeight(.regular)
            .multilineTextAlignment(.center)
            .padding(.bottom, 32.0)
            .frame(width: 358)
            .opacity(0.8)
        NavigationLink(destination: Exercise1()){
            Text("Start Exercise")
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

struct Exercise1: View {
    
    @State private var isShowIndo = false
    @State private var isShowPalembang = false
    @State private var isShowEnglish = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0, content: {
            
            Label("This is separator", systemImage: "42.circle").hidden().padding(.bottom, 4.0)
            
            Image("Bar1")
                .frame(width: 358)
                .padding(.bottom, 16.0)
            
            Text("Change the sentences below into Palembang Language")
                .font(.body)
                .fontWeight(.semibold)
                .multilineTextAlignment(.leading)
                .padding(.bottom, 12.0)
                .frame(width: 358)
            
            Text("1. Are you serious like Johnson?")
                .font(.body)
                .fontWeight(.regular)
                .multilineTextAlignment(.leading)
                .padding(.bottom, 20.0)
                .frame(width: 358)
            
            
            // Indonesia
            Button("View Hint in Indonesia") {
                withAnimation {
                    isShowIndo.toggle()
                }
            }.padding(.bottom, 20.0)
            
            if isShowIndo {
                Text("Apakah kamu serius menyukai Johnson?")
                    .font(.body)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom, 20.0)
                    .frame(width: 358)
            }
            
            // Palembang
            Button("View Hint in Palembang") {
                withAnimation{
                    isShowPalembang.toggle()
                }
            }.padding(.bottom, 20.0)
            
            if isShowPalembang {
                Text("Kau serius galak samo Johnson?")
                    .font(.body)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom, 20.0)
                    .frame(width: 358)
            }
            
            NavigationLink(destination: Exercise2()){
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
        }).navigationTitle("Question 1")
    }
}

struct Exercise2: View {
    
    @State private var isShowIndo = false
    @State private var isShowPalembang = false
    @State private var isShowEnglish = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0, content: {
            
            Label("This is separator", systemImage: "42.circle").hidden().padding(.bottom, 4.0)
            
            Image("Bar2")
                .frame(width: 358)
                .padding(.bottom, 16.0)
            
            Text("Change the sentences below into Palembang Language")
                .font(.body)
                .fontWeight(.semibold)
                .multilineTextAlignment(.leading)
                .padding(.bottom, 12.0)
                .frame(width: 358)
            
            Text("2. Do you have any work to do tomorrow?")
                .font(.body)
                .fontWeight(.regular)
                .multilineTextAlignment(.leading)
                .padding(.bottom, 20.0)
                .frame(width: 358)
            
            
            // Indonesia
            Button("View Hint in Indonesia") {
                withAnimation {
                    isShowIndo.toggle()
                }
            }.padding(.bottom, 20.0)
            
            if isShowIndo {
                Text("Apakah kamu mempunyai pekerjaan besok?")
                    .font(.body)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom, 20.0)
                    .frame(width: 358)
            }
            
            // Palembang
            Button("View Hint in Palembang") {
                withAnimation{
                    isShowPalembang.toggle()
                }
            }.padding(.bottom, 20.0)
            
            if isShowPalembang {
                Text("Kau besok ado gawe dak?")
                    .font(.body)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom, 20.0)
                    .frame(width: 358)
            }
            
            NavigationLink(destination: Exercise3()){
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
        }).navigationTitle("Question 2")
    }
}

struct Exercise3: View {
    @State private var isShowIndo = false
    @State private var isShowPalembang = false
    @State private var isShowEnglish = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0, content: {
            
            Label("This is separator", systemImage: "42.circle").hidden().padding(.bottom, 4.0)
            
            Image("Bar3")
                .frame(width: 358)
                .padding(.bottom, 16.0)
            
            Text("Translate this Palembang sentences into English/ Indonesia")
                .font(.body)
                .fontWeight(.semibold)
                .multilineTextAlignment(.leading)
                .padding(.bottom, 12.0)
                .frame(width: 358)
            
            Text("3. Gilo, saro nian gaweke soal ini")
                .font(.body)
                .fontWeight(.regular)
                .multilineTextAlignment(.leading)
                .padding(.bottom, 20.0)
                .frame(width: 358)
            
            
            // Indonesia
            Button("View Answer in Indonesia") {
                withAnimation {
                    isShowIndo.toggle()
                }
            }.padding(.bottom, 20.0)
            
            if isShowIndo {
                Text("Gila, susah banget ngerjain soal ini")
                    .font(.body)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom, 20.0)
                    .frame(width: 358)
            }
            
            // Palembang
            Button("View Answer in English") {
                withAnimation{
                    isShowPalembang.toggle()
                }
            }.padding(.bottom, 20.0)
            
            if isShowPalembang {
                Text("Crazy, it's really hard to work on this task")
                    .font(.body)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom, 20.0)
                    .frame(width: 358)
            }
            
            NavigationLink(destination: Exercise4()){
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
        }).navigationTitle("Question 3")
    }
}

struct Exercise4: View {
    @State private var isShowIndo = false
    @State private var isShowPalembang = false
    @State private var isShowEnglish = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0, content: {
            
            Label("This is separator", systemImage: "42.circle").hidden().padding(.bottom, 4.0)
            
            Image("Bar4")
                .frame(width: 358)
                .padding(.bottom, 16.0)
            
            Text("Translate this Palembang sentences into English/ Indonesia")
                .font(.body)
                .fontWeight(.semibold)
                .multilineTextAlignment(.leading)
                .padding(.bottom, 12.0)
                .frame(width: 358)
            
            Text("4. Payo, asak Jennie galak melok, aku ikut jugo")
                .font(.body)
                .fontWeight(.regular)
                .multilineTextAlignment(.leading)
                .padding(.bottom, 20.0)
                .frame(width: 358)
            
            
            // Indonesia
            Button("View Answer in Indonesia") {
                withAnimation {
                    isShowIndo.toggle()
                }
            }.padding(.bottom, 20.0)
            
            if isShowIndo {
                Text("Ayo, kalo misal Jennie mau ikutan pergi, aku ikut pergi juga")
                    .font(.body)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom, 20.0)
                    .frame(width: 358)
            }
            
            // Palembang
            Button("View Answer in English") {
                withAnimation{
                    isShowPalembang.toggle()
                }
            }.padding(.bottom, 20.0)
            
            if isShowPalembang {
                Text("Let’s go, If Jennie wants to go, I will go too")
                    .font(.body)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom, 20.0)
                    .frame(width: 358)
            }
            
            NavigationLink(destination: Exercise5()){
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
        }).navigationTitle("Question 4")
    }
}

struct Exercise5: View {
    @State private var isShowIndo = false
    @State private var isShowPalembang = false
    @State private var isShowEnglish = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0, content: {
            
            Label("This is separator", systemImage: "42.circle").hidden().padding(.bottom, 4.0)
            
            Image("Bar5")
                .frame(width: 358)
                .padding(.bottom, 16.0)
            
            Text("Translate this Palembang sentences into English/ Indonesia")
                .font(.body)
                .fontWeight(.semibold)
                .multilineTextAlignment(.leading)
                .padding(.bottom, 12.0)
                .frame(width: 358)
            
            Text("5. Janji aku, besok aku enjuk buku itu ke dio")
                .font(.body)
                .fontWeight(.regular)
                .multilineTextAlignment(.leading)
                .padding(.bottom, 20.0)
                .frame(width: 358)
            
            
            // Indonesia
            Button("View Answer in Indonesia") {
                withAnimation {
                    isShowIndo.toggle()
                }
            }.padding(.bottom, 20.0)
            
            if isShowIndo {
                Text("Aku janji, besok aku akan kasih buku itu ke dia")
                    .font(.body)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom, 20.0)
                    .frame(width: 358)
            }
            
            // Palembang
            Button("View Answer in English") {
                withAnimation{
                    isShowPalembang.toggle()
                }
            }.padding(.bottom, 20.0)
            
            if isShowPalembang {
                Text("I promise, tommorow I will give the book to him")
                    .font(.body)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom, 20.0)
                    .frame(width: 358)
            }
            
            NavigationLink(destination: ExerciseFinish()){
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
        }).navigationTitle("Question 5")
    }
}

struct ExerciseFinish: View {
    var body: some View {
        Label("This is separator", systemImage: "42.circle").hidden().padding(.bottom, 24.0)
        Image("Finished")
            .padding(.bottom, 24.0)
        Text("Yay, you have the exercise")
            .font(.title2)
            .fontWeight(.semibold)
            .multilineTextAlignment(.center)
            .padding(.bottom, 8.0)
            .frame(width: 320)
        Text("What do you feel? Do you satisfied with the answer? Feel free to try again the exercise to improve your Palembang language!")
            .font(.body)
            .fontWeight(.regular)
            .multilineTextAlignment(.center)
            .padding(.bottom, 32.0)
            .frame(width: 358)
            .opacity(0.8)
        
        NavigationLink(destination: DictionaryView()){
            Text("Back to Dictionary")
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

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseView()
    }
}
