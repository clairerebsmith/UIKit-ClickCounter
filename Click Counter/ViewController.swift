//
//  ViewController.swift
//  Click Counter
//
//  Created by Claire Smith Co on 20/12/2021.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    @IBOutlet var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //label
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        view.addSubview(label)
        self.label = label
        
        //increment button
        let iButton = UIButton()
        iButton.frame = CGRect(x: 175, y: 250, width: 60, height: 60)
        iButton.setTitle("+", for: .normal)
        iButton.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(iButton)
        
        iButton.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControl.Event.touchUpInside)
        
        //decrement button
        let dButton = UIButton()
        dButton.frame = CGRect(x: 75, y: 250, width: 60, height: 60)
        dButton.setTitle("-", for: .normal)
        dButton.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(dButton)
        
        dButton.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControl.Event.touchUpInside)
        
    }
    
    @IBAction func incrementCount() {
        self.count += 1
        self.label.text = "\(self.count)"
    }
    
    @IBAction func decrementCount() {
        self.count -= 1
        self.label.text = "\(self.count)"
    }


}

