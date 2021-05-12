//
//  CompleteToDoViewController.swift
//  ToDoListApp
//
//  Created by Apple on 5/11/21.
//

import UIKit

class CompleteToDoViewController: UIViewController {
    var previousVC = ToDoTableViewController ()
    var selectedToDo = ToDo ()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func completeTapped(_ sender: Any) {
    }
    

    
   
    @IBOutlet weak var titleLabel: UILabel!
    titleLabel.text = selectedToDo.name
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
