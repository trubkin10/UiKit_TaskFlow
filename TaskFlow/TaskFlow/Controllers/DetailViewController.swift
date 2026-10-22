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
    private let sendCellValue = TaskTableViewCell()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray5
        
        view.addSubview(topMenu)
        
        topMenu.topText(text: "Новая задача")
        topMenu.hidePlusButton()
        
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
        
        addTaskButton.addTarget(self, action: #selector(addTaskTapped), for: .touchUpInside)
    }
    
    @objc func addTaskTapped() {
        let title = inputBlock.textFieldName.text ?? "Default"
        let description = inputBlock.textFieldDescription.text ?? "Default"
        
        let newTask = Task(
                idTask: UUID(),
                nameTask: title,
                descriptionTask: description,
                isCompleted: false
            )
        TaskStorage.storage.tasks.append(newTask)
    }
}
