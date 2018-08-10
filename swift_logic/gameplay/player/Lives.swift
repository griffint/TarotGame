//
//  Lives.swift
//  tarot
//
//  Created by Sawyer Vaughan on 8/6/18.
//  Copyright © 2018 Sawyer Vaughan. All rights reserved.
//

import Foundation

private let startingLives = 5

public struct Lives {
  public let amount: Int

  public init() {
    amount = startingLives
  }
}
