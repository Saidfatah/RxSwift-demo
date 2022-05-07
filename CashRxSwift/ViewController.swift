//
//  ViewController.swift
//  CashRxSwift
//
//  Created by said fatah on 7/5/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func chooseColorTap(_ sender: Any) {
        
        let detailsviewController = storyboard?.instantiateViewController(withIdentifier: "colorsPicker") as! DetailViewController
        detailsviewController.delegate = self
        print(detailsviewController)
        navigationController?.pushViewController(detailsviewController, animated: true)
        
    }
    
}

extension ViewController:ColorDelegate{
    func didTapColor(_ name: String) {
        label.text = name
    }
}
