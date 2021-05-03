//
//  GoodLandingViewController.swift
//  ikid
//
//  Created by Lei Ryan on 5/3/21.
//

import UIKit

class GoodLandingViewController: UIViewController {

    fileprivate var goodViewController : GoodViewController! = nil
    fileprivate var goodNextViewController : GoodNextViewController! = nil
    
    @IBAction func switchgood(_ sender: UIButton) {
            
            UIView.beginAnimations("View Flip", context: nil)
            UIView.setAnimationDuration(0.4)
            UIView.setAnimationCurve(.easeInOut)
            
            if goodViewController != nil &&
                goodViewController?.view.superview != nil {
                UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
                goodNextViewController.view.frame = view.frame
                switchViewController(goodViewController, to: goodNextViewController)
            } else {
                UIView.setAnimationTransition(.flipFromLeft, for: view, cache: true)
                goodViewController.view.frame = view.frame
                switchViewController(goodNextViewController, to: goodViewController)
            }
            UIView.commitAnimations()
        }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        goodBuilder()
        goodNextBuilder()
        switchViewController(nil, to: goodViewController)
    }
    
    fileprivate func goodNextBuilder() {
        if goodNextViewController == nil {
            goodNextViewController =
                storyboard?
                    .instantiateViewController(withIdentifier: "Goodnext")
                as! GoodNextViewController
        }
    }
    fileprivate func goodBuilder() {
        if goodViewController == nil {
            goodViewController =
                storyboard?
                    .instantiateViewController(withIdentifier: "Good")
                as! GoodViewController
        }
    }
    

    fileprivate func switchViewController(_ from: UIViewController?, to: UIViewController?) {
            if from != nil {
                from!.willMove(toParent: nil)
                from!.view.removeFromSuperview()
                from!.removeFromParent()
            }
            
            if to != nil {
                self.addChild(to!)
                self.view.insertSubview(to!.view, at: 0)
                to!.didMove(toParent: self)
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
