//
//  DetailViewController.swift
//  instagram
//
//  Created by Avishek Thapa Magar on 10/3/18.
//  Copyright © 2018 Avishek Thapa Magar. All rights reserved.
//

import UIKit
import Parse
import ParseUI

class DetailViewController: UIViewController {

    @IBOutlet weak var postedImage: PFImageView!
    @IBOutlet weak var detailCaption: UILabel!
    @IBOutlet weak var detailAuthor: UILabel!
    @IBOutlet weak var detailStamp: UILabel!
    
    var posts: PFObject!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.postedImage.file = posts["media"] as? PFFile
        self.detailCaption.text = posts["caption"] as? String
        let author = posts["author"] as! PFUser
        
        self.detailAuthor.text = author.username! + ":"
        
        if let date = posts.createdAt {
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .short
            dateFormatter.timeStyle = .short
            let dateString = dateFormatter.string(from: date)
            detailStamp.text = dateString
        }
        self.postedImage.loadInBackground()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
