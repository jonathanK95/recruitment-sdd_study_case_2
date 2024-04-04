//
//  MobileBankingDetailController.swift
//  recruitment-sdd_study_case_2
//
//  Created by Jonathan Kristian on 04/04/24.
//

import UIKit

class MobileBankingDetailController: UIViewController {
    @IBOutlet weak var poster_img: UIImageView!
    
    var thisPromo: Promo?
    override func viewDidLoad() {
        super.viewDidLoad()

        self.poster_img.sd_setImage(with: URL(string: self.thisPromo?.images_url ?? ""), placeholderImage: UIImage(named: "Poster"))
        // Do any additional setup after loading the view.
    }
    
    @IBAction func openLinkAction() {
        if let url = URL(string: self.thisPromo?.detail ?? ""), UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
