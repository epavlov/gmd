//
//  DealershipTableViewCell.swift
//  GMD
//
//  Created by Eugene on 6/28/16.
//  Copyright © 2016 Ievgenii Pavlov. All rights reserved.
//

import UIKit

class DealershipTableViewCell: UITableViewCell {

    @IBOutlet weak var dealershipImage: UIImageView!
    @IBOutlet weak var dealershipNameLabel: UILabel!
    @IBOutlet weak var dealershipDistanceAwayLabel: UILabel!
    
    var phoneNumber: String! = nil
    var address: String! = nil
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func callButtonTap(sender: AnyObject) {
        if let url = NSURL(string: "tel://\(phoneNumber)") {
            UIApplication.sharedApplication().openURL(url)
        }
    }
    
    @IBAction func navigateButtonTap(sender: AnyObject) {
        let formattedAddress = address.stringByReplacingOccurrencesOfString(" ", withString: "+", options: NSStringCompareOptions.LiteralSearch, range: nil)
        if let url = NSURL(string: "http://maps.apple.com?q=\(formattedAddress)") {
            UIApplication.sharedApplication().openURL(url)
        }
    }

}
