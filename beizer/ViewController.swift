//
//  ViewController.swift
//  beizer
//
//  Created by MyGlamm on 8/1/19.
//  Copyright © 2019 MyGlamm. All rights reserved.
//

//https://stackoverflow.com/questions/4754392/uiview-with-rounded-corners-and-drop-shadow

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var verticalSpacingContraint: NSLayoutConstraint!
   // @IBOutlet weak var trailingConstantForButton: NSLayoutConstraint!
 //   @IBOutlet weak var leadingConstrain: NSLayoutConstraint!
    
    @IBOutlet weak var biezerView: Beizer!
    
    @IBOutlet weak var view1: UIView!
    
    @IBOutlet weak var view2: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        
        // corner radius
        view1.layer.cornerRadius = 10
        
        // border
        view1.layer.borderWidth = 1.0
        view1.layer.borderColor = UIColor.black.cgColor
        
        // shadow
        view1.layer.shadowColor = UIColor.black.cgColor
        view1.layer.shadowOffset = CGSize(width: 0, height: 0)
        view1.layer.shadowOpacity = 1
        view1.layer.shadowRadius = 10
        
//        leadingConstrain.constant = (view.frame.width  * 0.15) - 16
        
       // trailingConstantForButton.constant = (biezerView.frame.width * 0.12 ) - 16
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        verticalSpacingContraint.constant = -(view2.frame.height/2)
        
        
    }
    @IBAction func pressedBtn(_ sender: UIButton) {
        biezerView.labelText = "hello there"
        print("\(biezerView.labelText)")
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
//        
//        let width : CGFloat = 240.0
//        let height : CGFloat = 160.0
//        
//        let demoView = Beizer(frame: CGRect(x: 0, y: self.view.frame.height/2, width: view.frame.width, height: height))
//        
//        view.addSubview(demoView)
    }


}

