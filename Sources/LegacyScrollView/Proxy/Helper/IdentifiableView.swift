//
//  File.swift
//  
//
//  Created by Bruno Wide on 03/03/22.
//

import Foundation
import UIKit
import SwiftUI

public struct LegacyIDView: UIViewRepresentable {
    let tag: Int
    let backgroundColor: UIColor

    public func makeUIView(context: Context) -> UIView {
        let uiView = UIView()
        uiView.tag = tag
        return uiView
    }

    public func updateUIView(_ uiView: UIView, context: Context) {
        uiView.tag = tag
        uiView.backgroundColor = backgroundColor
    }
}

public extension View {
    func legacyId<ID: Hashable>(_ id: ID, backgroundColor: UIColor = .white) -> some View {
        self
            .background(LegacyIDView(tag: id.hashValue, backgroundColor: backgroundColor))
    }
}
