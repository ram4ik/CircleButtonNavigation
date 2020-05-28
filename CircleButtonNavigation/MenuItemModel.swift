//
//  MenuItemModel.swift
//  CircleButtonNavigation
//
//  Created by ramil on 28.05.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

class MenuItemModel: ObservableObject {
    
    @Published var menus: [MenuItem] = [
        MenuItem(color: .red, icon: "1.circle.fill", menuView: AnyView(Text("First View")), selected: true),
        MenuItem(color: .green, icon: "2.circle.fill", menuView: AnyView(Text("Second View")), selected: false),
        MenuItem(color: .orange, icon: "3.circle.fill", menuView: AnyView(Text("Third View")), selected: false),
        MenuItem(color: .blue, icon: "4.circle.fill", menuView: AnyView(Text("Fourth View")), selected: false),
        MenuItem(color: .purple, icon: "5.circle.fill", menuView: AnyView(Text("Fifth View")), selected: false),
    ]
    
    var selectedMenu: MenuItem {
        guard let selected = menus.filter { $0.selected }.first else {
            fatalError()
        }
        return selected
    }
}
