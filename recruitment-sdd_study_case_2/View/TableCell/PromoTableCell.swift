//
//  PromoTableCell.swift
//  recruitment-sdd_study_case_2
//
//  Created by Jonathan Kristian on 04/04/24.
//

import UIKit
import SDWebImage

protocol PromoCellDelegate: AnyObject{
    func showPromo(promo: Promo)
}

class PromoTableCell: UITableViewCell {

    @IBOutlet weak var banner_img: UIImageView!
    @IBOutlet weak var title_lab: UILabel!

    var promo: Promo?
    var delegate: PromoCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupCell(promo: Promo){
        self.promo = promo
        self.title_lab.text = promo.name
        self.banner_img.sd_setImage(with: URL(string: promo.images_url), placeholderImage: UIImage(named: "Poster"))
    }
    
    @IBAction func showAction() {
        if let thisPromo = self.promo{
            self.delegate?.showPromo(promo: thisPromo)
        }
    }
    

}
