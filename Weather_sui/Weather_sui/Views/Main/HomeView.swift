//
//  HomeView.swift
//  Weather_sui
//
//  Created by Mikhail Chudaev on 29.08.2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            // MARK: Background color
            Color.background
                .ignoresSafeArea()
            
            // MARK: Backgruond image
            Image("Background")
                .resizable()
                .ignoresSafeArea()
            
            // MARK: House image
            Image("House")
                .frame(maxHeight: .infinity, alignment: .top)
                .padding(.top, 257)
            
            // MARK: Current weather
            VStack(spacing: -10) {
                Text("Montreal")
                    .font(.largeTitle)
                
                VStack {
                    
                    Text(attributedString)
                    
                    Text("H:24°   L:18°")
                        .font(.title3.weight(.semibold))
                }
                
                Spacer()
            }
            .padding(.top, 51)
        }
    }
    
    private var attributedString: AttributedString {
        var string = AttributedString("19°" + "\n " + "Mostly clear")
        
        if let temp = string.range(of: "19°") {
            string[temp].font = .system(size: 96, weight: .thin)
            string[temp].foregroundColor = .primary
        }
        
        if let pipe = string.range(of: " | ") {
            string[pipe].font = .title3.weight(.semibold)
            string[pipe].foregroundColor = .secondary
        }
        
        if let weather = string.range(of: "Mostly clear") {
            string[weather].font = .title3.weight(.semibold)
            string[weather].foregroundColor = .secondary
        }
        
        
        return string
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .preferredColorScheme(.dark)
    }
}
