//
//  ViewController.swift
//  SalesTax
//
//  Created by Phillip Reynolds on 11/3/22.
//

import UIKit

class ViewController: UIViewController {
    
    var beforeTaxPrice: Float = 0
    var salesTaxRate: Float = 0

    @IBOutlet var afterTaxPriceTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func beforeTaxPriceChanged(_ sender: UITextField) {
        
        if let value = Float(sender.text!) {
            beforeTaxPrice = value
        } else {
            beforeTaxPrice = 0
        }
    }
    
    @IBAction func salesTaxRateChanged(_ sender: UITextField) {
        
        if let value = Float(sender.text!) {
            salesTaxRate = value
        } else {
            salesTaxRate = 0
        }
    }
    @IBAction func calcualteButtonPressed(_ sender: Any) {
        
        let salesTax = beforeTaxPrice * salesTaxRate / 100
        
        let afterTaxPrice = beforeTaxPrice + salesTax
        
        afterTaxPriceTextField.text = String(afterTaxPrice)
    }
}

