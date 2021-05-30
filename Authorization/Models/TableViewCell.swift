//
//  TableCellTableViewCell.swift
//  Authorization
//
//  Created by Алексей on 30.05.2021.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
