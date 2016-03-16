//
//  ServiceLocatorAssembler.swift
//  Architecture
//
//  Created Dmitri Utmanov on 24/02/16.
//  Copyright © 2016 Dmitriy Utmanov. All rights reserved.
//
//  Generated by Swift-Viper templates. Find latest version at https://github.com/Nikita2k/SwiftViper
//

import Foundation
import Swinject

class ServiceLocatorAssembler: Assembler {
    
    init() {
        let container = Container(parent: nil)
        super.init(container: container)
        
        self.applyAssembly(ServiceLocatorContainer())
    }
    
}