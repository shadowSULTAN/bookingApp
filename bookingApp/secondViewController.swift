//
//  secondViewController.swift
//  bookingApp
//
//  Created by ddukk15 on 16/11/22.
//

import UIKit

class secondViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{
    var fulllist :[String] = ["sabu","devan","abu"]
    
    @IBOutlet weak var petiant: UITextField!
    @IBOutlet weak var PatiantData: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        PatiantData.delegate = self
        PatiantData.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fulllist.count
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = fulllist[indexPath.row]
        return cell
    }
    
    public var data = 0
    @IBAction func addButton(_ sender: UIButton) {
        guard let data = petiant.text
         else
        {
          return
            
        }
        fulllist.append(data)
        let alertTile = "Saving"
        let message = "Data Has been Added Sucssesfully i TableView"
        let alertBox = UIAlertController(title: alertTile, message: message, preferredStyle: .alert)
        let alertAction = UIAlertAction(title:"Ok", style:.default,handler: nil )
        alertBox.addAction(alertAction)
        present(alertBox, animated: true,completion: nil)
     PatiantData.reloadData()
      petiant.text = ""
        
        
    }
    
    
}
    


