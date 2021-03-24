//
//  VersaPlayerAdManagerBehaviourDelegate.swift
//  VersaPlayer Demo
//
//  Created by Jose Quintero on 10/12/18.
//  Copyright © 2018 Quasar. All rights reserved.
//

import Foundation
import VersaPlayer
import GoogleInteractiveMediaAds

public protocol VersaPlayerAdManagerBehaviourDelegate: class {
    func willShowAdsFor(player: VersaPlayer)
    func didEndAd()
    func didFailToLoadADSWith(error: IMAAdError)
}
