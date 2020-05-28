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
            menuVM.selectedMenu.menuView
            ZStack {
                Color.black.opacity(isActivated ? 0.2 : 0)
                VStack {
                    Spacer()
                    ZStack {
                        ForEach(0..<menuVM.menus.count) { i in
                            MenuButton(isActivated: self.$isActivated,
                                       menuVM: self.menuVM,
                                       currentItemIndex: i
                            )
                        }
                    SelectedMenuButton(isActivated: $isActivated, menuItem: menuVM.selectedMenu)
                    }
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
