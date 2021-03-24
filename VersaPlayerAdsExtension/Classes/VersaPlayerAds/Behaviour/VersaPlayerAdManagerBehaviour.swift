//
//  VersaPlayerAdManagerBehaviour.swift
//  VersaPlayer Demo
//
//  Created by Jose Quintero on 10/12/18.
//  Copyright © 2018 Quasar. All rights reserved.
//

import Foundation
import CoreMedia
import VersaPlayer
import GoogleInteractiveMediaAds

public class VersaPlayerAdManagerBehaviour {
    
    public var handler: VersaPlayerAdsManager! {
        didSet {
            configure()
        }
    }
    public weak var delegate: VersaPlayerAdManagerBehaviourDelegate? = nil
    
    public func configure() {
        
    }
    
    public func willShowAdsFor(player: VersaPlayer) {
        self.handler.player?.controls?.controlsCoordinator.isHidden = true
        delegate?.willShowAdsFor(player: player)
    }
    
    public func didEndAd() {
        self.handler.player?.controls?.controlsCoordinator.isHidden = false
        delegate?.didEndAd()
    }
    
    public func didFailToLoadADSWith(error: IMAAdError) {
        delegate?.didFailToLoadADSWith(error: error)
    }
}
