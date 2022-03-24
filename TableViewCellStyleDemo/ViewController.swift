//
//  ViewController.swift
//  TableViewCellStyleDemo
//
//  Created by Peggy Tsai on 2022/3/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableview: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        switch section {
        case 0:
            return "default"
        case 1:
            return "subtitle"
        case 2:
            return "value1"
        case 3:
            return "value2"
        default:
            return ""
        }
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 44
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        
        switch indexPath.section {
        case 0:
            cell = tableView.dequeueReusableCell(withIdentifier: "cell") ?? UITableViewCell(style: .default, reuseIdentifier: "cell")
            if indexPath.row == 0{
                cell.imageView?.image = UIImage(named: "1")
                cell.textLabel?.text = "title"
            }else{
                cell.imageView?.image = UIImage(named: "2")
                cell.textLabel?.text = "textLabel"
            }
        case 1:
            cell = tableView.dequeueReusableCell(withIdentifier: "cell") ?? UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
            if indexPath.row == 0{
                cell.imageView?.image = UIImage(named: "3")
                cell.textLabel?.text = "title"
                cell.detailTextLabel?.text = "subTitle"
            }else{
                cell.imageView?.image = UIImage(named: "4")
                cell.textLabel?.text = "textLabel"
                cell.detailTextLabel?.text = "detailTextLabel"
            }
        case 2:
            cell = tableView.dequeueReusableCell(withIdentifier: "cell") ?? UITableViewCell(style: .value1, reuseIdentifier: "cell")
            if indexPath.row == 0{
                cell.textLabel?.text = "left"
                cell.detailTextLabel?.text = "right"
            }else{
                cell.textLabel?.text = "textLabel"
                cell.detailTextLabel?.text = "detailTextLabel"
            }
        case 3:
            cell = tableView.dequeueReusableCell(withIdentifier: "cell") ?? UITableViewCell(style: .value2, reuseIdentifier: "cell")
            if indexPath.row == 0{
                cell.textLabel?.text = "left"
                cell.detailTextLabel?.text = "right"
            }else{
                cell.textLabel?.text = "textLabel"
                cell.detailTextLabel?.text = "detailTextLabel"
            }
        default:
            break
        }
        return cell
    }
}
