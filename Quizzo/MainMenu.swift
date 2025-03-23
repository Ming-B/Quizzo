//
//  MainMenu.swift
//  Quizzo
//
//  Created by Ming Bian on 3/23/25.
//

import SwiftUI

struct MainMenu: View {
    var body: some View {
        VStack(spacing: 40) {
            VStack(spacing: 20) {
                Text("Quizzo")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundStyle(.purple)
                
                Text("Are you ready to test your knowledge?")
                    .foregroundStyle(.purple)
                
            }
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .ignoresSafeArea(edges: .all)
        .background(Color(red: 0.984313725490196, green: 0.929411764705824, blue: 0.8470588235294118))
        
    }
}

#Preview {
    MainMenu()
}
