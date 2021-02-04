//
//  FormType.swift
//  RxSample
//
//  Created by Takuya Ando on 2021/02/04.
//

import UIKit

enum FormType: Int, CaseIterable {
    case userName
    case email
    case password
    
    var title: String {
        switch self {
        case .userName:
            return "userName"
        case .email:
            return "email"
        case .password:
            return "password"
        }
    }
}
