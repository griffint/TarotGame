//
//  Round.swift
//  tarot
//
//  Created by Sawyer Vaughan on 8/6/18.
//  Copyright © 2018 Sawyer Vaughan. All rights reserved.
//

import Foundation

public struct Round: TurnContaining {
  public struct Params {
    public let numberOfCards: Int

    public init(numberOfCards: Int) {
      self.numberOfCards = numberOfCards
    }
  }

  public let params: Params

  public init(params: Params) {
    self.params = params
  }

  public func roundOrder() {
    return // [.draw, .trick, assignPoints]
  }

  public func turns(game: Game) -> [Turn] {
    return [Deal(), Trick(playerOrder: game.playerOrder()), AssignPoints(), MoveBeginningPlayer()]
  }
}
