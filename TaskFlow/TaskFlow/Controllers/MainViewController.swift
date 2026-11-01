//
//  ViewController.swift
//  TaskFlow
//
//  Created by Александр Трубкин on 19.10.2026.
//

import UIKit
import SnapKit

class MainViewController: UIViewController, UITableViewDataSource {
    //Сколько строк показывать
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return TaskStorage.storage.tasks.count
    }
    //Какую ячейку показывать
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = TaskTableViewCell()
        let task = TaskStorage.storage.tasks[indexPath.row]
        cell.configValue(task: task)
        return cell
    }
    
    
    private let topMenu = TopMenuView()
    private let tableView = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGray5
        
        tableView.backgroundColor = .systemGray5
        tableView.dataSource = self
        
        view.addSubview(topMenu)
        view.addSubview(tableView)
        
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
        
        tableView.snp.makeConstraints { make in
            make.top.equalTo(topMenu.snp.bottom).offset(50)
            make.leading.trailing.equalToSuperview().inset(20)
            make.height.equalTo(90)
        }
    }
    
}

