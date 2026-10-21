//
//  ViewController.swift
//  TaskFlow
//
//  Created by Александр Трубкин on 19.10.2026.
//

import UIKit
import SnapKit

class MainViewController: UIViewController {
    
    private let topMenu = TopMenuView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray5
        
        view.addSubview(topMenu)
        
        topMenu.topText(text: "Мои задачи")
        
        topMenu.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(10)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(60)
        }
    }
    
}

