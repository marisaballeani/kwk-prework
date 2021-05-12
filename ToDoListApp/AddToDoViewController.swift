//
//  AddToDoViewController.swift
//  ToDoListApp
//
//  Created by Apple on 5/11/21.
//

import UIKit

class AddToDoViewController: UIViewController {
    var previousVC = ToDoTableViewController ()
    

    
    @IBOutlet weak var importantSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBOutlet weak var titleTextField: UITextField!
    
    @IBAction func addTapped(_ sender: Any) {
    let toDo = ToDo ()
        
        
        if let titleText = titleTextField.text {
        toDo.name = titleText
            toDo.important = importantSwitch.isOn
        }
        
        //update toDos array with new object
        previousVC.toDos.append (toDo)
        previousVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
        
        
    }
        
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
