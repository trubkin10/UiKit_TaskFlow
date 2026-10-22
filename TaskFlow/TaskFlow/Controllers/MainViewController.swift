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
    private let cellList = TaskTableViewCell()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray5
        
        view.addSubview(topMenu)
        view.addSubview(cellList)
        
        topMenu.topText(text: "Мои задачи")
        
        topMenu.onPlusTap = { [weak self] in
            let detailVC = DetailViewController()
            self?.navigationController?.pushViewController(detailVC, animated: true)
        }
        
        topMenu.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).offset(10)
            make.leading.trailing.equalToSuperview()
            make.height.equalTo(60)
        }
        
        cellList.snp.makeConstraints { make in
            make.top.equalTo(topMenu.snp.bottom).offset(50)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(90)
        }
    }
    
}

