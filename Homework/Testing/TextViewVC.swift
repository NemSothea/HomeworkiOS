//
//  TextViewVC.swift
//  Homework
//
//  Created by nemsothea on 7/29/19.
//  Copyright © 2019 nemsothea. All rights reserved.
//

import UIKit
import IQKeyboardManager

class TextViewVC: UIViewController {

    @IBOutlet weak var TextView: UITextView!
  
    @IBOutlet weak var ViewA: UIView!
    @IBOutlet weak var ViewB: UIView!
    @IBOutlet weak var leadingConstainViewB: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        leadingConstainViewB.constant = self.ViewA.frame.size.width + 40
    }
    func moveRight(view: UIView) {
        view.center.x += 300
    }
    
    func moveLeft(view: UIView) {
        view.center.x -= 300
    }
    

    @IBAction func TypePressed(_ sender: UIButton) {
        UIView.animate(withDuration: 2.0) {
            self.leadingConstainViewB.constant = 0
            self.view.layoutIfNeeded()
        }
    }
    
    @IBAction func ClosePressed(_ sender: UIButton) {
         UIView.animate(withDuration: 2.0) {
          self.leadingConstainViewB.constant = self.ViewA.frame.size.width
              self.view.layoutIfNeeded()
        }
    }
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
extension UIFont {
    func withTraits(traits:UIFontDescriptor.SymbolicTraits) -> UIFont {
        let descriptor = fontDescriptor.withSymbolicTraits(traits)
        return UIFont(descriptor: descriptor!, size: 0) //size 0 means keep the size as it is
    }
    
    func bold() -> UIFont {
        return withTraits(traits: .traitBold)
    }
    
    func italic() -> UIFont {
        return withTraits(traits: .traitItalic)
    }
}
