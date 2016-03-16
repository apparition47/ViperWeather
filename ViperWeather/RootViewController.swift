//
//  RootViewController.swift
//  Architecture
//
//  Created Dmitri Utmanov on 20/02/16.
//  Copyright © 2016 Dmitriy Utmanov. All rights reserved.
//
//  Generated by Swift-Viper templates. Find latest version at https://github.com/Nikita2k/SwiftViper
//

import UIKit


class RootViewController: UIViewController {
	
	var presenter: RootPresenterProtocol!

    @IBOutlet weak var activityIndicatorView: UIActivityIndicatorView!

    override var nibName: String? {
        get {
            let classString = String(self.dynamicType)
            return classString
        }
    }
    override var nibBundle: NSBundle? {
        get {
            return NSBundle.mainBundle()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController!.setNavigationBarHidden(true, animated: false)
        
        activityIndicatorView.color = MaterialColor.cyanColor()
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        // Imitation of login request or fetch some data
        let time = dispatch_time(DISPATCH_TIME_NOW, Int64(1.0 * Double(NSEC_PER_SEC)))
        dispatch_after(time, dispatch_get_main_queue()) { [weak self] () -> Void in
            self?.presenter.openListViewController()
        }
    }
}

extension RootViewController: RootInterfaceProtocol {
    
}
