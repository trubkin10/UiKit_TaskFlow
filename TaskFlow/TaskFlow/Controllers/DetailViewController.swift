//
//  CreateTasksViewController.swift
//  TaskFlow
//
//  Created by Александр Трубкин on 19.10.2026.
//

import UIKit
import SnapKit

class DetailViewController: UIViewController {
    
    private let topMenu = TopMenuView()
    private let inputBlock = TaskInputView()
    private let addTaskButton = PrimaryButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray5
        
        view.addSubview(topMenu)
        
        topMenu.topText(text: "Новая задача")
        
        topMenu.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(10)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(60)
        }
        
        view.addSubview(inputBlock)
        
        inputBlock.snp.makeConstraints { make in
            make.top.equalTo(topMenu.snp.bottom).offset(25)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(160)
        }
        
        view.addSubview(addTaskButton)
        
        addTaskButton.snp.makeConstraints { make in
            make.top.equalTo(inputBlock.snp.bottom).offset(120)
            make.leading.trailing.equalToSuperview()
        }
        
        
    }
    
}
