//
//  DadLandingViewController.swift
//  ikid
//
//  Created by Lei Ryan on 5/3/21.
//

import UIKit

class DadLandingViewController: UIViewController {

    fileprivate var dadViewController : DadViewController! = nil
    fileprivate var dadNextViewController : DadNextViewController! = nil
    
    @IBAction func switchdad(_ sender: UIButton) {
            
            UIView.beginAnimations("View Flip", context: nil)
            UIView.setAnimationDuration(0.4)
            UIView.setAnimationCurve(.easeInOut)
            
            if dadViewController != nil &&
                dadViewController?.view.superview != nil {
                UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
                dadNextViewController.view.frame = view.frame
                switchViewController(dadViewController, to: dadNextViewController)
            } else {
                UIView.setAnimationTransition(.flipFromLeft, for: view, cache: true)
                dadViewController.view.frame = view.frame
                switchViewController(dadNextViewController, to: dadViewController)
            }
            UIView.commitAnimations()
        }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        dadBuilder()
        dadNextBuilder()
        switchViewController(nil, to: dadViewController)
    }
    
    fileprivate func dadNextBuilder() {
        if dadNextViewController == nil {
            dadNextViewController =
                storyboard?
                    .instantiateViewController(withIdentifier: "Dadnext")
                as! DadNextViewController
        }
    }
    fileprivate func dadBuilder() {
        if dadViewController == nil {
            dadViewController =
                storyboard?
                    .instantiateViewController(withIdentifier: "Dad")
                as! DadViewController
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
