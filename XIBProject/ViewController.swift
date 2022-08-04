//
//  ViewController.swift
//  XIBProject
//
//  Created by Mac on 29/06/22.
//

import UIKit

class ViewController: UIViewController {

    var name = ["Akshay","Vaibhav","Rohit","Uday"]
    var course = ["iOS","Swift","iOS","Swift"]
    var address = ["Amravati","Akola","Pune","Kolhapur"]
    var batch = ["June","May","June","May"]
    
    
    @IBOutlet weak var studentTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        studentTableView.dataSource = self
        studentTableView.delegate = self
        
        self.navigationItem.title = "Student Details of iOS Batch"
        
        let uiNib = UINib(nibName: "CustomTableViewCell", bundle: nil)
        self.studentTableView.register(uiNib, forCellReuseIdentifier: "studentCell")
    }
}


extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.studentTableView.dequeueReusableCell(withIdentifier: "studentCell")as! CustomTableViewCell
        cell.nameLabel.text = name[indexPath.row]
        cell.courseLabel.text = course[indexPath.row]
        cell.addressLabel.text = address[indexPath.row]
        cell.batchLabel.text = batch[indexPath.row]
        return cell
    }
    
    
}


extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        200
    }
}
