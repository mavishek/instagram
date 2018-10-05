//
//  instaCell.swift
//  instagram
//
//  Created by Avishek Thapa Magar on 10/3/18.
//  Copyright © 2018 Avishek Thapa Magar. All rights reserved.
//

import UIKit
import Parse
import ParseUI

class instaCell: UITableViewCell {


    @IBOutlet weak var instaImage: PFImageView!
    @IBOutlet weak var caption: UILabel!
    
    
    var instagramPost: PFObject! {
        didSet {
            self.instaImage.file = instagramPost["media"] as? PFFile
            self.caption.text = instagramPost["caption"] as! String
            self.instaImage.loadInBackground()
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
