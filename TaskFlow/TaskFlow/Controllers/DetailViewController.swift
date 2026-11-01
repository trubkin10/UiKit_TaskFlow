//
//  DetailViewController.swift
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
        
        addTaskButton.buttonAddTask.addTarget(self, action: #selector(addTaskTapped), for: .touchUpInside)
    }
    
    @objc func addTaskTapped() {
        //Отладка
        print("addTaskTapped вызван")
        let valueTitle = inputBlock.textFieldName.text ?? ""
        let title = valueTitle.trimmingCharacters(in: .whitespacesAndNewlines)
        
        let valueDescription = inputBlock.textFieldDescription.text ?? ""
        let cleanDescription = valueDescription.trimmingCharacters(in: .whitespacesAndNewlines)
        let description = cleanDescription.isEmpty ? nil : cleanDescription
        
        guard !title.isEmpty else {
                return
            }
        
        
        let newTask = Task(
                idTask: UUID(),
                nameTask: title,
                descriptionTask: description,
                isCompleted: false
            )
        //Отладка
        print("title \(title) description \(description)")
        TaskStorage.storage.tasks.append(newTask)
        navigationController?.popViewController(animated: true)
    }
}
