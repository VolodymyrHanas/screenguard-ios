//
//  ScreenGuard.swift
//
//
//  Created by Volodymyr Hanas on 11.04.2024.
//

import UIKit

extension UIView {

    private static let secureTextField = UITextField()
    private static var secureView: UIView? = {
        secureTextField.subviews.first(where: { NSStringFromClass($0.classForCoder).contains("TextLayoutCanvasView") })
    }()

    public func setScreenshotsDisabled(_ disabled: Bool) {
        guard let secureView = Self.secureView else { return }

        let originalLayer = secureView.layer
        secureView.setValue(self.layer, forKey: "layer")
        Self.secureTextField.isSecureTextEntry = !disabled
        Self.secureTextField.isSecureTextEntry = disabled
        secureView.setValue(originalLayer, forKey: "layer")
    }
}
