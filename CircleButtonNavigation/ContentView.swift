//
//  ContentView.swift
//  CircleButtonNavigation
//
//  Created by ramil on 28.05.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var isActivated: Bool = false
    @ObservedObject var menuVM = MenuItemModel()
    
    var body: some View {
        ZStack {
            Text("Hello SwiftUI")
            ZStack {
                Color.black.opacity(self.isActivated ? 0.1 : 0)
                VStack {
                    Spacer()
                    SelectedMenuButton(isActivated: self.$isActivated, menuItem: menuVM.selectedMenu)
                }
            }
        }
        .animation(.spring())
        .edgesIgnoringSafeArea(self.isActivated ? .all : .horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
