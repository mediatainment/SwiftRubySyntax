//
//  String.swift
//  Pods
//
//  Created by Jan Jezek on 30.05.17.
//
//

import Foundation


public extension String {
    var isAlpha : Bool {
        let alphaSet = CharacterSet.uppercaseLetters.union(.lowercaseLetters).union(.whitespacesAndNewlines)
        return self.rangeOfCharacter(from: alphaSet.inverted) == nil
    }
}
