//
//  ViewController.swift
//  onOFF
//
//  Created by namit on 10/26/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var iMage: UIImageView!
    @IBOutlet weak var onOFF: UISwitch!
    @IBOutlet weak var batTat: UIButton!
    
    var isON : Bool!
    override func viewDidLoad() {
        super.viewDidLoad()
        onOFF.isOn = true
        isON = true
        iMage.image = UIImage(named: "bulb-on")
        onOFF.thumbTintColor = UIColor.gray
        
        batTat.frame = CGRect(x:0, y: 780, width: 394, height: 30)
        batTat.setTitle("Bật đèn", for: .normal)
    }

    @IBAction func offImage(_ sender: UISwitch) {
        BatTatDen();
    }
    @IBAction func onPress(_ sender: Any) {
        BatTatDen();
    }
    
    func BatTatDen(){
        if isON{
            batTat.setTitle("Bật đèn", for: .normal)
            iMage.image = UIImage(named:"bulb-off")
            onOFF.isOn = false
//            isON = false
        }else{
            batTat.setTitle("Tắt đèn", for: .normal)
            iMage.image = UIImage(named:"bulb-on")
            onOFF.isOn = true
//            isON = false
        }
        isON = !isON
    }
    
}

