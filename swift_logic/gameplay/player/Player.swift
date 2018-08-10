//
//  Player.swift
//  tarot
//
//  Created by Sawyer Vaughan on 8/6/18.
//  Copyright © 2018 Sawyer Vaughan. All rights reserved.
//

import Foundation

public final class Player {
  public let identifier: Int
  public private(set) var hand: [Card]?

  public init(identifier: Int) {
    self.identifier = identifier
  }

  public func setHand(_ hand: [Card]) {
    self.hand = hand
  }
}

extension Player: Equatable {
  public static func == (lhs: Player, rhs: Player) -> Bool {
    return lhs.identifier == rhs.identifier
  }
}
