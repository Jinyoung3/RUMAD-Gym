//
//  +View.swift
//  Barbella
//
//  Created by Jinyoung Oh on 3/17/23.
//

import SwiftUI

extension View {
    func getRootViewController() -> UIViewController{
        guard let screen = UIApplication.shared.connectedScenes.first as? UIWindowScene else{
            return .init()
        }
        guard let root = screen.windows.first?.rootViewController else{
            return .init()
        }
        return root
    }
}
