//
//  ViewController.swift
//  RxSample
//
//  Created by Takuya Ando on 2021/02/03.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var textField2: UITextField!
    
    @IBOutlet weak var errorLabel1: UILabel!
    @IBOutlet weak var errorLabel2: UILabel!
    
    @IBOutlet weak var button: UIButton!
    
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        button.isEnabled = false
        button.setTitle("おせない", for: .disabled)
        button.setTitle("いける", for: .normal)
        
    }
    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//    }
    
    
}
