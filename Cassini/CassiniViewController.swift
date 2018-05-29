//
//  CassiniViewController.swift
//  Cassini
//
//  Created by Sonali Patel on 5/25/18.
//  Copyright © 2018 Sonali Patel. All rights reserved.
//

import UIKit

class CassiniViewController: UIViewController {

    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let identifier = segue.identifier {
            if let url = DemoURLs.NASA[identifier]  {
                if let imageViewController = segue.destination.contents as?  ImageViewController {
                    imageViewController.imageURL = url
                    imageViewController.title = (sender as? UIButton)?.currentTitle
                }
            }
        }
    }
   

}

extension UIViewController {
    var contents: UIViewController {
        if let navcon = self as? UINavigationController {
            return navcon.visibleViewController ?? self
        } else {
            return self
        }
    }
}
