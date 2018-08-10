//
//  Deal.swift
//  tarot
//
//  Created by Sawyer Vaughan on 8/6/18.
//  Copyright © 2018 Sawyer Vaughan. All rights reserved.
//

import Foundation

public struct Deal: Turn {
  public func perform(game: Game) {
    Deal.deal(
      players: game.players,
      cards: game.cards,
      numberOfCards: game.round.params.numberOfCards
    )
  }
  public static func deal(players: [Player], cards: [Card], numberOfCards: Int) {
    var dealtCards = cards.shuffled()
    for player in players {
      var hand = [Card]()
      for _ in 0..<numberOfCards {
        guard let card = dealtCards.popLast() else {
          assertionFailure()
          continue
        }
        hand.insert(card, at: 0)
      }
      player.setHand(hand)
    }
  }
}
