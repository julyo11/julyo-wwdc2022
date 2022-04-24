//
//  DictionaryView.swift
//  KitoGalo
//
//  Created by Julyo  on 24/04/22.
//

import SwiftUI

struct DictionaryView: View {
    var body: some View {
        ScrollView {
            Dictionary().navigationTitle("Dictionary")
        }
    }
}

struct Dictionary: View {
    var body: some View {
        Text("30 Common Palembang Words You Must Know. The order of read from Palembang -> Indonesia -> English")
            .font(.body)
            .fontWeight(.medium)
            .multilineTextAlignment(.leading)
            .padding(.top, 16.0)
            .frame(width: 320)
            .ignoresSafeArea()
        Image("PalembangDictionary")
            .frame(width: 358, height: 4020, alignment: .topLeading)
            .padding(.top, 32.0)
        Label("This is separator", systemImage: "42.circle").hidden().padding(.bottom, 24.0)
        NavigationLink(destination: ExerciseView()){
            Text("Exercise")
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

struct DictionaryView_Previews: PreviewProvider {
    static var previews: some View {
        DictionaryView()
    }
}
