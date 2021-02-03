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
    
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // textFieldに入力するとLabelに反映される
        textField.rx.text.orEmpty
            .bind(to: label.rx.text)
            .disposed(by: disposeBag)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

