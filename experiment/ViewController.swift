//
//  ViewController.swift
//  experiment
//
//  Created by tati on 19/10/2018.
//  Copyright © 2018 tati. All rights reserved.
//

import UIKit
import Foundation
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    @IBOutlet weak var mybutton: UIButton!
    @IBOutlet weak var textInput: UITextField!
    @IBOutlet weak var mylabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func myButtonPressed(_ sender: UIButton) {
        print(sender.currentTitle!) // change text
        print(textInput.text!) // any text that I introduced in the input text
        mylabel.text = textInput.text!
        
        
        Alamofire.request("http://foaas.com/ing/" + textInput.text! + "/from",  headers: ["Accept": "application/json"]).responseJSON { response in
            print(response.result)
            if let result = response.result.value {
                let json = JSON(result)
                var message = json["message"].stringValue
                self.mylabel.text = message
            }
        }
    }
}

