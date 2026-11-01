//
//  TaskInputView.swift
//  TaskFlow
//
//  Created by Александр Трубкин on 20.10.2026.
//

import UIKit
import SnapKit

/// Поля ввода Название и Описание
class TaskInputView: UIView {
    
    //Название для поля name
    private let inputName: UILabel = {
        let label = UILabel()
        label.text = "Название"
        label.font = .systemFont(ofSize: 14, weight: .bold)
        label.textColor = .black
        return label
    }()
    
    // Поле name
    let textFieldName: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Введите название"
        textField.borderStyle = .roundedRect
        textField.layer.cornerRadius = 15
        textField.layer.masksToBounds = true
        return textField
    }()
    
    //Название для поля Description
    let inputDescription: UILabel = {
        let label = UILabel()
        label.text = "Описание"
        label.font = .systemFont(ofSize: 14, weight: .bold)
        label.textColor = .black
        return label
    }()
    
    // Поле description
    let textFieldDescription: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Краткое описание задачи"
        textField.borderStyle = .roundedRect
        textField.layer.cornerRadius = 15
        textField.layer.masksToBounds = true
        return textField
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        inputUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func inputUI() {
        
        addSubview(inputName)
        addSubview(textFieldName)
        addSubview(inputDescription)
        addSubview(textFieldDescription)
        
        inputName.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(20)
            make.leading.trailing.equalToSuperview().inset(20)
        }
        
        textFieldName.snp.makeConstraints { make in
            make.top.equalTo(inputName.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(54)
        }
        
        inputDescription.snp.makeConstraints { make in
            make.top.equalTo(textFieldName.snp.bottom).offset(30)
            make.leading.trailing.equalToSuperview().offset(20)
        }
        
        textFieldDescription.snp.makeConstraints { make in
            make.top.equalTo(inputDescription.snp.bottom).offset(10)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(54)
        }
        
    }
//    textFieldName.addTarget(self, action: #selector(textChanged), for: .editingChanged)
//    
//    @objc func textChanged() {
//        
//    }
}
