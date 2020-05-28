//
//  SelectedMenuButton.swift
//  CircleButtonNavigation
//
//  Created by ramil on 28.05.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct SelectedMenuButton: View {
    @Binding var isActivated: Bool
    var menuItem: MenuItem
    
    var body: some View {
        Circle()
            .foregroundColor(menuItem.color)
            .frame(width: self.isActivated ? 50 : 65, height: self.isActivated ? 50 : 65)
            .overlay(Image(systemName: menuItem.icon))
            .foregroundColor(.white)
            .offset(x: 0, y: isActivated ? -20 : -10)
            .onTapGesture {
                self.isActivated.toggle()
            }
    }
}
