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
    
    // 出現するキーボードのタイプ
    var keyboardType: UIKeyboardType {
        switch self {
        case .email:
            return .emailAddress
        case .userName, .password:
            return .asciiCapable
        }
    }
    
    // 伏せ字にするかどうか
    var isSecureTextEntry: Bool {
        switch self {
        case .userName, .email:
            return false
        case .password:
            return true
        }
    }
    
    // 入力補完
    var textContentType: UITextContentType {
        switch self {
        case .userName:
            return .username
        case .email:
            return .emailAddress
        case .password:
            return .newPassword
            
        }
    }
    
    var caution: String {
        switch self {
        case .userName:
            return "半角英数字6文字以上にしてください"
        case .email:
            return "メールアドレスが不正です"
        case .password:
            return "半角数字、半角英大文字、半角英小文字を含んでください"
        }
    }
        
}
