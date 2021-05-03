//
//  PunViewController.swift
//  ikid
//
//  Created by Lei Ryan on 5/2/21.
//

import UIKit

class PunViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      
    }
    
    /*fileprivate var punNextViewController : PunNextViewController! = nil
    
    
    @IBAction func switchPun(_ sender: UIBarButtonItem) {
            
            //UIView.beginAnimations("View Flip", context: nil)
            //UIView.setAnimationDuration(0.4)
            //UIView.setAnimationCurve(.easeInOut)
            
        if self != nil &&
            self.view.superview != nil {
            UIView.setAnimationTransition(.flipFromRight, for: view, cache: true)
            punNextViewController.view.frame = view.frame
            switchViewController(self, to: punNextViewController)
        }
        else {
            UIView.setAnimationTransition(.flipFromLeft, for: view, cache: true)
            self.view.frame = view.frame
            switchViewController(punNextViewController, to: self)
        }
            //UIView.commitAnimations()
        }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        punBuilder()

        switchViewController(nil, to: self)
    }
    
 
    fileprivate func punBuilder() {
        if punNextViewController == nil {
            punNextViewController =
                storyboard?
                    .instantiateViewController(withIdentifier: "Punnext")
                as! PunNextViewController
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
        }*/

    //@IBAction func punButton(_ sender: Any) {
    //    performSegue(withIdentifier: "pun", sender: sender)
    //}

    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
