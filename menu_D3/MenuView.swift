//
//  ContentView.swift
//  menu_D3
//
//  Created by Tafadzwa Alexander Razaro on 2024/02/28.
//

import SwiftUI

struct MenuView: View {
   @State var MenuItems: [MenuItem] = [MenuItem]()
    var dataServer = DataService()
    var body: some View {
        List(MenuItems){item in
            
            HStack{
                Image(item.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 48)
                    .cornerRadius(10)
                Text(item.name)
                    .bold()
                Spacer()
                Text("$" + item.price)
            }
            .listRowSeparator(.hidden)
            .listRowBackground(
                Color(.brown)
                    .opacity(0.1))
            
        }
        .listStyle(.plain)
        .onAppear(perform: {
            MenuItems = dataServer.getdata()
        })
    }
}

#Preview {
    MenuView()
}
