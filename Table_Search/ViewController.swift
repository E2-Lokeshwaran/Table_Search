//
//  ViewController.swift
//  Table_Search
//
//  Created by Lokeshwaran on 05/08/24.
//

import UIKit

var myData = ["aaa","bbb","aa","cc","qwer","okyt","yts","kdk","gkkdfjr","zzz","jhike","ders","mnbyur","rteuec","wsww"]
var searchData : [String]!

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource,UISearchBarDelegate
{
    
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        searchData = myData
        tableView.delegate = self
        tableView.dataSource = self
    
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return searchData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        var cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.lbl.text = searchData[indexPath.row]
        return cell
    }


    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) 
    {
        searchData = []
        
        if searchText == ""
        {
            searchData = myData
        }
        
        for word in myData
        {
            if word.uppercased().contains(searchText.uppercased())
            {
                searchData.append(word)
            }
        }
        self.tableView.reloadData()
    }
}

