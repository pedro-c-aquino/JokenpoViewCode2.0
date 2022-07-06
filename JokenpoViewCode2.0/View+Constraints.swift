//
//  View+Constraints.swift
//  JokenpoViewCode2.0
//
//  Created by user208023 on 7/6/22.
//

import UIKit

extension UIView {
    
    open func constraintToItemInside(_ attribute: NSLayoutConstraint.Attribute,
                               _ toItem: Any?,
                               _ constant: CGFloat = 0) -> NSLayoutConstraint {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        return NSLayoutConstraint(item: self,
                                  attribute: attribute,
                                  relatedBy: .equal,
                                  toItem: toItem,
                                  attribute: attribute,
                                  multiplier: 1,
                                  constant: constant)
    }
    
    open func constraintToItemOutside(_ attribute:NSLayoutConstraint.Attribute,
                               _ toItem: Any?,
                               _ constant: CGFloat = 0) -> NSLayoutConstraint {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        var toItemAttribute: NSLayoutConstraint.Attribute
        
        switch attribute {
            
            case .top: toItemAttribute = .bottom
            case .bottom: toItemAttribute = .top
            case .leading: toItemAttribute = .trailing
            case .trailing: toItemAttribute = .leading
            default: return NSLayoutConstraint()
        }
        
        return NSLayoutConstraint(item: self,
                                  attribute: attribute,
                                  relatedBy: .equal,
                                  toItem: toItem,
                                  attribute: toItemAttribute,
                                  multiplier: 1,
                                  constant: constant)
    }
    
    open func addSubviews(_ views: [UIView]) {
        
        for view in views {
            
            self.addSubview(view)
        }
    }
}
