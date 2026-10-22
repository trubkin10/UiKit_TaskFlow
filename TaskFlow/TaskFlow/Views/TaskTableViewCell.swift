//
//  TaskTableViewCell.swift
//  TaskFlow
//
//  Created by Александр Трубкин on 22.10.2026.
//

import UIKit
import SnapKit


class TaskTableViewCell: UITableViewCell {
    
    private let checkboxButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(systemName: "square"), for: .normal)
        button.setImage(UIImage(systemName: "checkmark.square.fill"), for: .selected)
        button.tintColor = .systemBlue
        return button
    }()
    
    private let cellTitle: UILabel = {
        let label = UILabel()
        label.text = "Изучить UILabel"
        label.font = .systemFont(ofSize: 16, weight: .bold)
        label.textColor = .black
        return label
    }()
    
    private let cellDescription: UILabel = {
        let label = UILabel()
        label.text = "Свойства и отображение текста"
        label.font = .systemFont(ofSize: 12)
        label.textColor = .gray
        return label
    }()

    
    override init(style: TaskTableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupAppearance()
        cellUI()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func cellUI() {
        
        contentView.addSubview(checkboxButton)
        contentView.addSubview(cellTitle)
        contentView.addSubview(cellDescription)
        
        checkboxButton.snp.makeConstraints { make in
            make.leading.equalToSuperview().inset(10)
            make.centerY.equalToSuperview()
        }
        
        cellTitle.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(10)
            make.leading.equalToSuperview().inset(45)
            make.trailing.equalToSuperview().inset(20)
            make.height.equalTo(40)
        }
        
        cellDescription.snp.makeConstraints { make in
            make.bottom.equalToSuperview().inset(24)
            make.leading.equalToSuperview().inset(45)
            make.trailing.equalToSuperview().inset(20)
            make.height.equalTo(20)
        }
        
        checkboxButton.addTarget(self, action: #selector(toggleCheckbox), for: .touchUpInside)
        
    }
    
    //Задний фон ячейки
    private func setupAppearance() {
        backgroundColor = .white
        layer.cornerRadius = 15
        layer.masksToBounds = true
    }
    
    @objc private func toggleCheckbox() {
        checkboxButton.isSelected.toggle()
    }
    
    public func configValue(task: Task) {
        cellTitle.text = task.nameTask
        cellDescription.text = task.descriptionTask
        print(task)
    }
}
