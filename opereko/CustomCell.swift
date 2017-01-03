//
//  CustomCell.swift
//  
//
//  Created by 原 あゆみ on 2016/12/25.
//
//

import UIKit

class CustomCell: UITableViewCell {
    
    @IBOutlet var leftLabel : UILabel!
    @IBOutlet var rightLabel : UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
        
    }
       
}
