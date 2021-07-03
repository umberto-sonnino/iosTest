//
//  ViewController.swift
//  iosTest
//
//  Created by Maxwell Talbot on 03/07/2021.
//

import UIKit
import RiveRuntime

class RiveViewController: UIViewController {
    let url = "https://cdn.rive.app/animations/vehicles.riv"
    
    override public func loadView() {
        super.loadView()
        
        let view = RiveView()
        guard let riveFile = RiveFile(httpUrl: url, with: view) else {
            fatalError("Unable to load RiveFile")
        }
        
        view.configure(riveFile)
        self.view = view
    }
}
