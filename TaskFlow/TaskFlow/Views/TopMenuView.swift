//
//  TopMenuView.swift
//  TaskFlow
//
//  Created by Александр Трубкин on 20.10.2026.
//

import UIKit
import SnapKit

class TopMenuView: UIView {
    
    //Название страницы
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 24, weight: .bold)
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    // Принимает текст и передает в UILabel
    func topText(text: String) {
        titleLabel.text = text
    }
    
    //Кнопка на страницу создания заметки
    private let buttonToPageCreateTask: UIButton = {
        let addButton = UIButton(type: .system)
        addButton.setImage(UIImage(systemName: "plus"), for: .normal)
        return addButton
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupUI() {
        backgroundColor = .white
        addSubview(titleLabel)
        addSubview(buttonToPageCreateTask)
        
        // Позиционирование текста
        titleLabel.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.leading.equalToSuperview().inset(20)
        }
        
        //Позиционирование кнопки +
        buttonToPageCreateTask.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.trailing.equalToSuperview().inset(25)
        }
    }
}
