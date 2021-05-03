//
//  PunLandingViewController.swift
//  ikid
//
//  Created by Lei Ryan on 5/3/21.
//

import UIKit

class PunLandingViewController: UIViewController {


    fileprivate var punViewController : PunViewController! = nil
    fileprivate var punNextViewController : PunNextViewController! = nil
    
    @IBAction func switchPun(_ sender: UIButton) {
            
            UIView.beginAnimations("View Flip", context: nil)
            UIView.setAnimationDuration(0.4)
            UIView.setAnimationCurve(.easeInOut)
            
            if punViewController != nil &&
                punViewController?.view.superview != nil {
                UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
                punNextViewController.view.frame = view.frame
                switchViewController(punViewController, to: punNextViewController)
            } else {
                UIView.setAnimationTransition(.flipFromLeft, for: view, cache: true)
                punViewController.view.frame = view.frame
                switchViewController(punNextViewController, to: punViewController)
            }
            UIView.commitAnimations()
        }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        punBuilder()
        punNextBuilder()
        switchViewController(nil, to: punViewController)
    }
    
    fileprivate func punNextBuilder() {
        if punNextViewController == nil {
            punNextViewController =
                storyboard?
                    .instantiateViewController(withIdentifier: "Punnext")
                as! PunNextViewController
        }
    }
    fileprivate func punBuilder() {
        if punViewController == nil {
            punViewController =
                storyboard?
                    .instantiateViewController(withIdentifier: "Pun")
                as! PunViewController
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
