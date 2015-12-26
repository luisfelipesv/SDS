//
//  ViewController.swift
//  SDS
//
//  Created by Luis Felipe Salazar on 9/26/15.
//  Copyright © 2015 Luis Felipe Salazar. All rights reserved.
//

import UIKit

let mainColor = UIColor(red: 38, green: 32, blue: 135, alpha: 1.0)

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var message: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        textField.delegate = self
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        var messageString = textField.text
        
        var characters = Array(messageString!.characters)
        if characters.count > 0 {
            for i in 0...(characters.count - 1) {
                switch characters[i]{
                case "A","a":
                    characters[i] = "Z"
                case "B","b":
                    characters[i] = "Y"
                case "C","c":
                    characters[i] = "X"
                case "D","d":
                    characters[i] = "W"
                case "E","e":
                    characters[i] = "V"
                case "F","f":
                    characters[i] = "U"
                case "G","g":
                    characters[i] = "T"
                case "H","h":
                    characters[i] = "S"
                case "I","i":
                    characters[i] = "R"
                case "J","j":
                    characters[i] = "Q"
                case "K","k":
                    characters[i] = "P"
                case "L","l":
                    characters[i] = "O"
                case "M","m":
                    characters[i] = "N"
                case "N","n":
                    characters[i] = "M"
                case "O","o":
                    characters[i] = "L"
                case "P","p":
                    characters[i] = "K"
                case "Q","q":
                    characters[i] = "J"
                case "R","r":
                    characters[i] = "I"
                case "S","s":
                    characters[i] = "H"
                case "T","t":
                    characters[i] = "G"
                case "U","u":
                    characters[i] = "F"
                case "V","v":
                    characters[i] = "E"
                case "W", "w":
                    characters[i] = "D"
                case "X", "x":
                    characters[i] = "C"
                case "Y", "y":
                    characters[i] = "B"
                case "Z", "z":
                    characters[i] = "A"
                default:
                    EMPTY
                }
            }
            
            messageString = String(characters)
            messageString = messageString!.stringByReplacingOccurrencesOfString(" ", withString: "  ")
            
            message.text = messageString
        }
        
        
        return true
    }
}

