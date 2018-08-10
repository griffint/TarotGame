//
//  Array+Rotate.swift
//  tarot
//
//  Created by Sawyer Vaughan on 8/6/18.
//  Copyright © 2018 Sawyer Vaughan. All rights reserved.
//

import Foundation

extension Array {
  /// Rotates the array by the specified index.
  ///
  /// Example: [1, 2, 3, 4].rotated(by: 1) == [2, 3, 4, 1]
  public func rotated(by index: Int) -> Array<Element> {
    var finalArray = [Element]()
    let totalCount = count
    finalArray.reserveCapacity(totalCount)
    for element in dropLast(totalCount - index) {
      finalArray.append(element)
    }
    for element in prefix(index) {
      finalArray.append(element)
    }
    return finalArray
  }
}

extension Array where Element: Equatable {
  public func rotated(beginningAt element: Element) {
    guard let elementIndex = firstIndex { currentElement in
      return currentElement == element
    }
    assert
    return rotated(by: elementIndex)
  }
}
