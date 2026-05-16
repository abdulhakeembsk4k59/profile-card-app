//
//  ContentView.swift
//  ProfileCard
//
//  Created by AbdulHakeem Shaik on 15/05/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 20){
            Image(systemName: "person.crop.circle.fill")
                .font(.system(size: 110))
                .foregroundStyle(.blue)
            Text("Abdul Hakeem")
                .font(.title)
                .fontWeight(.bold)
            Text("iOS Developer")
                .font(.headline)
                .foregroundStyle(.secondary)
            Text("I am learning SwiftUI by building real apps step by step.")
                .font(.body)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
        }
        .padding()
        
        HStack{
            SkillTag(title: "Swift")
            SkillTag(title: "SwiftUI")
            SkillTag(title: "Xcode")
        }
        
        Button("Contact Me"){
            print("Contact button tapped")
        }
        .buttonStyle(.borderedProminent)
    }
}


struct SkillTag: View {
    let title: String
    
    var body: some View {
        Text(title)
            .font(.caption)
            .fontWeight(.semibold)
            .padding(.horizontal, 12)
            .padding(.vertical, 8)
            .background(.blue.opacity(0.12))
            .foregroundStyle(.blue)
            .clipShape(Capsule())
    }
}

#Preview {
    ContentView()
}
