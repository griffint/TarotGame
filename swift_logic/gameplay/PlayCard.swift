//
//  PlayCard.swift
//  tarot
//
//  Created by Sawyer Vaughan on 8/6/18.
//  Copyright © 2018 Sawyer Vaughan. All rights reserved.
//

import Foundation

public struct PlayCard: Turn {
  public let player: Player

  public init(player: Player) {
    self.player = player
  }

  public func perform(game: Game) {
    
  }
}
