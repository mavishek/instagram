//
//  postCell.swift
//  instagram
//
//  Created by Avishek Thapa Magar on 10/3/18.
//  Copyright © 2018 Avishek Thapa Magar. All rights reserved.
//

import UIKit
import Parse
import ParseUI

class postCell: UICollectionViewCell {
    
    
    @IBOutlet weak var collectionImage: PFImageView!
    var instagramPost: PFObject! {
        didSet {
            self.collectionImage.file = instagramPost["media"] as? PFFile
            self.collectionImage.loadInBackground
        }
    }
}
