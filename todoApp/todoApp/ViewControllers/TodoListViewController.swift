//
//  TodoListViewController.swift
//  todoApp
//
//  Created by Miguel Arturo Ruiz Martinez on 10/07/23.
//

import UIKit

class TodoListViewController: UITableViewController {
    
    var stuffToDo = [TodoItem]()

    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
    }
    
    func loadData() {
        guard let url = URL(string: "https://gist.githubusercontent.com/rigovides/12708f4aed26f847a0fe34f0fef1dbd7/raw/bb5a9a21f599acb2a46d01f45709d0aeb669f965/items.json") else {
            fatalError("Invalid URL")
        }
        
        let request = URLRequest(url: url)
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                do {
                    let res = try JSONDecoder().decode([TodoItem].self, from: data)
                    self.stuffToDo = res
                    DispatchQueue.main.async {
                        self.tableView.reloadData()
                    }
                } catch let error {
                    print(error)
                }
            }
        }.resume()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stuffToDo.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let todoItem = stuffToDo[indexPath.row]
        
        cell.textLabel?.text = todoItem.details.day.toString()
        cell.detailTextLabel?.text = "\(todoItem.title) - \(todoItem.details.description)"
        
        return cell
    }
}
