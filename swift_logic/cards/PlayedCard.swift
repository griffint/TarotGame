//
//  PlayedCard.swift
//  tarot
//
//  Created by Sawyer Vaughan on 8/6/18.
//  Copyright © 2018 Sawyer Vaughan. All rights reserved.
//

import Foundation

public struct PlayedCard {
  public let player: Player
  public let card: Card

  public init(player: Player, card: Card) {
    self.player = player
    self.card = card
  }
}
