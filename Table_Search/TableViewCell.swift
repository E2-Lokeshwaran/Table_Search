//
//  TableViewCell.swift
//  Table_Search
//
//  Created by Lokeshwaran on 05/08/24.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var lbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
