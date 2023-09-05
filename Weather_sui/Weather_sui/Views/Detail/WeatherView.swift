//
//  WeatherView.swift
//  Weather_sui
//
//  Created by Mikhail Chudaev on 05.09.2023.
//

import SwiftUI

struct WeatherView: View {
    var body: some View {
        ZStack {
            // MARK: Background
            Color.background
                .ignoresSafeArea()
        }
        .overlay(content: {
            // MARK: Navigation bar
            NavigationBar()
        })
        .navigationBarHidden(true)
    }
}

struct WeatherView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherView()
    }
}
