//
//  AppDelegate.swift
//  tarot
//
//  Created by Sawyer Vaughan on 8/6/18.
//  Copyright © 2018 Sawyer Vaughan. All rights reserved.
//

import Foundation
import UIKit

@UIApplicationMain
public class AppDelegate: NSObject, UIApplicationDelegate {
  public var window: UIWindow?

  public func applicationDidFinishLaunching(_ application: UIApplication) {
    let window = UIWindow()
    self.window = window
    window.rootViewController = RootViewController()
    window.makeKeyAndVisible()

    let cards = Deck().cards
    let players = [Player(identifier: 0), Player(identifier: 1)]
    let game = Game(players: players)
    Deal.deal(players: players, cards: cards, numberOfCards: 5)
    players.forEach { player in
      print(player.hand ?? "No hand")
    }
  }
}
