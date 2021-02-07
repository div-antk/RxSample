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
    @IBOutlet weak var textField3: UITextField!
    
    @IBOutlet weak var errorLabel1: UILabel!
    @IBOutlet weak var errorLabel2: UILabel!
    @IBOutlet weak var errorLabel3: UILabel!
    
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    
    private var count = 0
    
    private var disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        button.rx.tap
            .subscribe(onNext: {(next) in
//                self.count += 1
//                self.countLabel.text = String(self.count)
//                        print("あああああ")
                        self.set()
                    })
                .disposed(by: disposeBag)
    }
    
    func set() {
        print("あああああ")
    }
    
}
