//
//  ViewController.swift
//  BootcampHw5
//
//  Created by Utku Mutlu on 2.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelSonuc: UILabel!
    
    enum operations:String{
        
        case Add = "+"
        case Nil = "nil"
        
    }
    
    var runningValue = ""
    var leftValue = ""
    var rightValue = ""
    var result = ""
    var slv = "" //sum of last values // AC ile değerler silinse bile bir önceki toplama işlemi geri getirilebiliyor ve üzerine toplama işlemi yapılabiliyor.
    var Curoperation:operations = .Nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBAction func acButton(_ sender: UIButton) {
        
        runningValue = ""
        leftValue = ""
        rightValue = ""
        result = ""
        Curoperation = .Nil
        labelSonuc.text = String(0)
    }
   
    @IBAction func slvButton(_ sender: Any) {
        
        labelSonuc.text = slv
        runningValue = slv
        
        
    }

    @IBAction func sumButton(_ sender: UIButton) {
        Operations(operation: .Add)
    }
    
    @IBAction func equaltoButton(_ sender: UIButton) {
        Operations(operation: Curoperation)
    }
   
    @IBAction func numberButtons(_ sender: UIButton) {
        runningValue =  runningValue + String(sender.tag)
            labelSonuc.text = runningValue
    
    }
    
    
    func Operations(operation:operations){
        
        if Curoperation != .Nil{
            if runningValue != ""{
                rightValue = runningValue
                runningValue = ""
                
                if Curoperation == .Add{
                        result = String((Int(leftValue)! + Int(rightValue)!))
                }
                
                slv = result
                leftValue = result
                labelSonuc.text = result
                
            }
            Curoperation = operation
            
        }
        
        else{
         leftValue = runningValue
         runningValue = ""
         Curoperation = operation
     }
        
        
    }
    
}

