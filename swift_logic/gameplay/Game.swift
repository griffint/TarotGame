//
//  Game.swift
//  tarot
//
//  Created by Sawyer Vaughan on 8/6/18.
//  Copyright © 2018 Sawyer Vaughan. All rights reserved.
//

import Foundation

public final class Game {
  public var players: [Player]
  public let round: Round

  public private(set) var beginningPlayer: Player

  public private(set) var playedCards = [PlayedCard]()

  // MARK: Pre-computed properties

  /// All possible cards in this game.
  ///
  /// Do *not* assume that these cards are in any particular order.
  public let cards = Card.allCards()

  public init(players: [Player]) {
    self.players = players
    assert(players.first != nil)
    self.beginningPlayer = players.first!
    let roundParams = Round.Params(numberOfCards: 5)
    self.round = Round(params: roundParams)
  }

  public func playCard(_ card: PlayedCard) {
    assert(
      !playedCards.contains(where: { playedCard in
        card.player == playedCard.player
      }),
      "The same player can't play a card twice"
    )
    playedCards.append(card)
  }

  public func playerOrder() -> [Player] {
    let index = 
  }
}
