//
//  RandomKeys.swift
//  rAnDOM kEys
//
//  Created by Jamie Bishop on 07/07/2017.
//  Copyright © 2017 Apple. All rights reserved.
//

import UIKit

class RandomKeys: KeyboardViewController {
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        UserDefaults.standard.register(defaults: [kClapAsSpace: false])
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func keyPressed(_ key: Key) {
        let textDocumentProxy = self.textDocumentProxy
        let keyOutput = key.outputForCase(randomBool())
        
        if key.type != .space || !UserDefaults.standard.bool(forKey: kClapAsSpace) {
            textDocumentProxy.insertText(keyOutput)
            return
        }
        
        textDocumentProxy.insertText("👏")
        
    }
    
}
