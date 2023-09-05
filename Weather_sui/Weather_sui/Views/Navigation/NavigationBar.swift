//
//  NavigationBar.swift
//  Weather_sui
//
//  Created by Mikhail Chudaev on 05.09.2023.
//

import SwiftUI

struct NavigationBar: View {
    
    @Binding var searchText: String
    
    @Environment(\.dismiss) var dissmiss
    
    var body: some View {
        VStack(spacing: 8) {
            HStack {
                // MARK: Back button
                Button {
                    dissmiss()
                } label: {
                    
                    HStack(spacing: 5) {
                        // MARK: Back button icon
                        Image(systemName: "chevron.left")
                            .font(.system(size: 23).weight(.medium))
                            .foregroundColor(.secondary)
                        
                        // MARK: Back button label
                        Text("Weather")
                            .font(.title)
                            .foregroundColor(.primary)
                    }
                    .frame(height: 44)
                }
                
                Spacer()
                
                // MARK: More button
                Image(systemName: "ellipsis.circle")
                    .font(.system(size: 28))
                    .frame(width: 44, height: 44, alignment: .trailing)
                
            }
            .frame(height: 52)
            
            // MARK: Search bar
            HStack(spacing: 2) {
                Image(systemName: "magnifyingglass")
                
                TextField("Search for a city", text: $searchText)
            }
            .foregroundColor(.secondary)
            .padding(.horizontal, 6)
            .padding(.vertical, 7)
            .frame(height: 36, alignment: .leading)
            .background(Color.bottomSheetBackground, in: RoundedRectangle(cornerRadius: 10))
            .innerShadow(shape: RoundedRectangle(cornerRadius: 10), color: .black.opacity(0.25), lineWidth: 2, offsetX: 0, offsetY: 2, blur: 2)
        }
        .frame(height: 106, alignment:  .top)
        .padding(.horizontal, 16)
        .padding(.top, 49)
        .backgroundBlur(radius: 20, opaque: true)
        .background(Color.navBarBackground)
        .frame(maxHeight: .infinity, alignment: .top)
        .ignoresSafeArea()
    }
}

struct NavigationBar_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBar(searchText: .constant(""))
    }
}
