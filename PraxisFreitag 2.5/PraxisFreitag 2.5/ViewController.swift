//
//  ViewController.swift
//  PraxisFreitag 2.5
//
//  Created by Michael Hornung on 04.11.22.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    @IBOutlet weak var gezogeneZahlen: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Do any additional setup after loading the view.
    }
    @IBAction func zahlenGenerieren(_ sender: Any) {
        var gewinnzahlen = lottozahlen()
        gezogeneZahlen.text = "\(gewinnzahlen)"
    }
    func lottozahlen() -> [Int]{
        var list = Array(1...49)
        var zahlen = [Int]()
        
        while(zahlen.count<=5){
            let randomzahl = list.randomElement()!
            zahlen.append(randomzahl)
            if let index = list.firstIndex(of: randomzahl){
                list.remove(at:index)
            }
            
        }
        zahlen.sort()
        
        return zahlen
        
    }
}
    
    
                              
                              
    
    
    
    


