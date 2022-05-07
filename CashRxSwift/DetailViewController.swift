//
//  DetailViewController.swift
//  CashRxSwift
//
//  Created by said fatah on 7/5/2022.
//

import UIKit

protocol ColorDelegate{
    func didTapColor(_ name:String)
}
class DetailViewController: UIViewController {
    var delegate:ColorDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onRedTap(_ sender: UIButton) {
        guard let color = sender.titleLabel?.text else {return}
        
        if let delegateObject = delegate {
            delegateObject.didTapColor(color)
        }
        
    }
    
    @IBAction func onGreenTap(_ sender: UIButton) {
        guard let color = sender.titleLabel?.text else {return}
        
        if let delegateObject = delegate {
            delegateObject.didTapColor(color)
        }
    }
    @IBAction func onYellowTap(_ sender: UIButton) {
        guard let color = sender.titleLabel?.text else {return}
        
        if let delegateObject = delegate {
            delegateObject.didTapColor(color)
        }
    }


}
