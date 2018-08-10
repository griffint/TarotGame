//
//  TurnContaining.swift
//  tarot
//
//  Created by Sawyer Vaughan on 8/6/18.
//  Copyright © 2018 Sawyer Vaughan. All rights reserved.
//

import Foundation

public protocol TurnContaining: Turn {
  func turns(game: Game) -> [Turn]
}

extension TurnContaining {
  public func perform(game: Game) {
    for turn in turns(game: game) {
      turn.perform(game: game)
    }
  }
}
