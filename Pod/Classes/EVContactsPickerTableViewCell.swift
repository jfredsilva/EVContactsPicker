//
//  EVContactsPickerTableViewCell.swift
//  Pods
//
//  Created by Edward Valentini on 9/18/15.
//
//

import UIKit
import Nuke

public class EVContactsPickerTableViewCell: UITableViewCell {
    
    @IBOutlet var fullName : UILabel?
    @IBOutlet var phone : UILabel?
    @IBOutlet var email : UILabel?
    @IBOutlet var contactImage : UIImageView?
    @IBOutlet open var checkImage : UIImageView?
    @IBOutlet weak var captainImage: UIImageView!
    
    var imageURL: URL? {
        didSet {
            guard let imageURL = imageURL, let contactImage = contactImage else { return }
            Nuke.loadImage(with: imageURL, into: contactImage)
        }
    }
    
    override public func awakeFromNib() {
        super.awakeFromNib()
        
        self.captainImage.layer.masksToBounds = false
        self.captainImage.layer.cornerRadius = self.captainImage.frame.height/2
        self.captainImage.clipsToBounds = true
        self.captainImage.image = UIImage(named: "Default")
        self.captainImage.isHidden = true
    }

    override public func prepareForReuse() {
        super.prepareForReuse()
        self.captainImage.isHidden = true
    }
    
    override public func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
