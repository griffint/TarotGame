//
//  Card.swift
//  tarot
//
//  Created by Sawyer Vaughan on 8/6/18.
//  Copyright © 2018 Sawyer Vaughan. All rights reserved.
//

import Foundation

public let maxBound = 21
public let minBound = 1

public enum Card {
  case numerical(number: Int)
  case joker
}

extension Card {
  public func isValid() -> Bool {
    switch self {
    case .numerical(let number):
      return number >= minBound && number <= maxBound
    case .joker:
      return true
    }
  }

  public static func allCards() -> [Card] {
    var cards = [Card]()
    for i in minBound...maxBound {
      let card = Card.numerical(number: i)
      assert(card.isValid())
      cards.append(card)
    }
    cards.append(Card.joker)
    return cards
  }
}

extension Card: Equatable {
  public static func == (lhs: Card, rhs: Card) -> Bool {
    switch (lhs, rhs) {
    case (numerical(let lhsNumber), .numerical(let rhsNumber)):
      return lhsNumber == rhsNumber
    case (.joker, .joker):
      return true
    default:
      return false
    }
  }
}
