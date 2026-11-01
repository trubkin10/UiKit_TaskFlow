//
//  PrimaryButton.swift
//  TaskFlow
//
//  Created by Александр Трубкин on 20.10.2026.
//

import UIKit
import SnapKit

/// Поля ввода Название и Описание
class PrimaryButton: UIButton {
    
    //Кнопка Добавить задачу
    let buttonAddTask: UIButton = {
        let button = UIButton()
        button.setTitle("Добавить задачу", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
        button.backgroundColor = .systemBlue
        button.layer.cornerRadius = 12
        button.layer.masksToBounds = true
//        button.isEnabled = false
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        buttonUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func buttonUI() {
        
        addSubview(buttonAddTask)
        
        buttonAddTask.snp.makeConstraints { make in
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(54)
        }
        
    }
}
