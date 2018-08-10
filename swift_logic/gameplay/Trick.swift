//
//  Trick.swift
//  tarot
//
//  Created by Sawyer Vaughan on 8/6/18.
//  Copyright © 2018 Sawyer Vaughan. All rights reserved.
//

import Foundation

public struct Trick: TurnContaining {
  public let playerOrder: [Player]

  public init(playerOrder: [Player]) {
    self.playerOrder = playerOrder
  }

  public func turns(game: Game) -> [Turn] {
    return playerOrder.map { player in
      return PlayCard(player: player)
    }
  }
}
