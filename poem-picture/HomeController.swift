//
//  File.swift
//  poem-picture
//
//  Created by Emily on 3/3/18.
//  Copyright © 2018 Emily. All rights reserved.
//

import Foundation
import UIKit

var image: UIImage!
var username: String!

class HomeController: ViewController {
    @IBOutlet var name: UITextField!
    @IBAction func retakePhoto(segue:UIStoryboardSegue) { }

    @IBAction func start(_ sender: Any) {
//        if UIDevice.current.orientation == UIDeviceOrientation.portrait || UIDevice.current.orientation == UIDeviceOrientation.portraitUpsideDown {
//                let alertController = UIAlertController(title: "Error", message: "Please turn your device horizontallly.", preferredStyle: .alert)
//                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
//                alertController.addAction(defaultAction)
//                self.present(alertController, animated: true, completion: nil)
//        }
//            else {
        username = name.text
            let storyboard = UIStoryboard(name: "Main", bundle: nil);
            let ivc = storyboard.instantiateViewController(withIdentifier: "picture");
            ivc.modalPresentationStyle = .custom;
            ivc.modalTransitionStyle = .crossDissolve;
            self.present(ivc, animated: true);
//        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}
