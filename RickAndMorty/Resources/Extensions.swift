//
//  Extensions.swift
//  RickAndMorty
//
//  Created by Ritesh Virulkar on 11/04/24.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach {
            addSubview($0)
        }
    }
}
