//
//  ViewController.swift
//  dopasiletskiyPW1
//
//  Created by Даниил Пасилецкий on 11.09.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var views: [UIView]!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func ChangeColorButtonPresed(_ sender: Any) {
        //button.isEnabled = false
        let button = sender as? UIButton
        button?.isEnabled = false
        
        var set = Set<UIColor>()
        while set.count < views.count { //TODO
            set.insert(
                UIColor(
                    red: .random(in: 0...1),
                    green: .random(in: 0...1),
                    blue: .random(in: 0...1),
                    alpha: 1
                )
            )
        }
        UIView.animate(withDuration: 2, animations: {
            for view in self.views {
                view.backgroundColor = set.popFirst()
                view.layer.cornerRadius = .random(in: 0...50)
            }
        }) { completion in
            button?.isEnabled = true
        }
       // button?.isEnabled = true
    }
    

}

