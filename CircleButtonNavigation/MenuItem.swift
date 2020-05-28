//
//  MenuItem.swift
//  CircleButtonNavigation
//
//  Created by ramil on 28.05.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct MenuItem {
    let id = UUID()
    let color: Color
    let icon: String
    let menuView: AnyView
    var selected: Bool
}
