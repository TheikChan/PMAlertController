//
//  ViewController.swift
//  PMAlertController
//
//  Created by Paolo Musolino on 07/05/16.
//  Copyright © 2016 Codeido. All rights reserved.
//

import UIKit
import PMAlertController

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func showAlert(_ sender: AnyObject) {
        let alertVC = PMAlertController(title: "Locate your device", description: "Enables access to your location: discover what you can do when you're traveling and what is available near you.", image: UIImage(named: "flag.png"), style: .alert) //Image by freepik.com, taken on flaticon.com
        
        alertVC.addAction(PMAlertAction(fontFace: "Avenir-Heavy", title: "Cancel", style: .cancel, action: { () -> Void in
            print("Cancel")
        }))
        
        alertVC.addAction(PMAlertAction(fontFace: "Avenir-Heavy", title: "Allow", style: .default, action: { () in
            print("Allow")
        }))
        
        alertVC.addAction(PMAlertAction(fontFace: "Zawgyi-One", title: "ျမန္မာစာ", style: .default, action: { () in
            print("Allow")
        }))
        
        self.present(alertVC, animated: true, completion: nil)
    }
    
    @IBAction func showWalkthrough(_ sender: AnyObject) {
        
        let alertVC = PMAlertController(title: "Locate your device", description: "Enables access to your location: discover what you can do when you're traveling and what is available near you.", image: UIImage(named: "flag.png"), style: .walkthrough) //Image by freepik.com, taken on flaticon.com
        
        alertVC.addAction(PMAlertAction(fontFace: "Avenir-Heavy", title: "Cancel", style: .cancel, action: { () -> Void in
            print("Cancel")
        }))
        
        alertVC.addAction(PMAlertAction(fontFace: "Avenir-Heavy", title: "Allow", style: .default, action: { () in
            print("Allow")
        }))
        
        self.present(alertVC, animated: true, completion: nil)
    }
    
    @IBAction func showAlertWith3Buttons(_ sender: AnyObject) {
        
        let alertVC = PMAlertController(title: "Locate your device", description: "Enables access to your location: discover what you can do when you're traveling and what is available near you.", image: UIImage(named: "flag.png"), style: .alert) //Image by freepik.com, taken on flaticon.com
        
        alertVC.addAction(PMAlertAction(fontFace: "Avenir-Heavy", title: "Cancel", style: .cancel, action: { () -> Void in
            print("Cancel")
        }))
        
        alertVC.addAction(PMAlertAction(fontFace: "Avenir-Heavy", title: "No Thanks", style: .cancel, action: { () in
            print("No thanks")
        }))
        
        alertVC.addAction(PMAlertAction(fontFace: "Avenir-Heavy", title: "Allow", style: .default, action: { () in
            print("Allow")
        }))
        
        self.present(alertVC, animated: true, completion: nil)
    }
    
    @IBAction func showWalkthroughWith3Buttons(_ sender: AnyObject) {
        let alertVC = PMAlertController(title: "Locate your device", description: "Enables access to your location: discover what you can do when you're traveling and what is available near you.", image: UIImage(named: "flag.png"), style: .walkthrough) //Image by freepik.com, taken on flaticon.com
        
        alertVC.addAction(PMAlertAction(fontFace: "Avenir-Heavy", title: "Cancel", style: .cancel, action: { () -> Void in
            print("Cancel")
        }))
        
        alertVC.addAction(PMAlertAction(fontFace: "Avenir-Heavy", title: "No Thanks", style: .cancel, action: { () in
            print("No thanks")
        }))
        
        alertVC.addAction(PMAlertAction(fontFace: "Avenir-Heavy", title: "Allow", style: .default, action: { () in
            print("Allow")
        }))
        
        self.present(alertVC, animated: true, completion: nil)
    }
    
    @IBAction func showAlertWithTextEntry(_ sender: AnyObject) {
        let alertVC = PMAlertController(title: "Enter your device location", description: "If your device can't be found, you can manually enter its location, so our Sentinel Robots know where to find it", image: UIImage(named: "flag.png"), style: .alert)
        
        alertVC.addTextField { (textField) in
            textField?.placeholder = "Location..."
        }
        
        alertVC.addAction(PMAlertAction(fontFace: "Avenir-Heavy", title: "Cancel", style: .cancel))
        
        alertVC.addAction(PMAlertAction(fontFace: "Avenir-Heavy", title: "Ok", style: .default, action: { () in
            print (alertVC.textFields[0].text ?? "")
        }))
        
        self.present(alertVC, animated: true, completion: nil)
    }
}
