//
//  Deck.swift
//  tarot
//
//  Created by Sawyer Vaughan on 8/6/18.
//  Copyright © 2018 Sawyer Vaughan. All rights reserved.
//

import Foundation

public struct Deck {
  public let cards: [Card]

  public init() {
    cards = Card.allCards()
  }
}
