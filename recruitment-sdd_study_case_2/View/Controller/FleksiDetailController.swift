//
//  FleksiDetailController.swift
//  recruitment-sdd_study_case_2
//
//  Created by Jonathan Kristian on 04/04/24.
//

import UIKit

class FleksiDetailController: UIViewController {

    @IBOutlet weak var info_btn: UIButton!
    @IBOutlet weak var start_btn: UIButton!
    @IBOutlet weak var info_lab: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.info_btn.layer.cornerRadius = 5
        self.info_btn.layer.borderWidth = 1
        self.info_btn.layer.borderColor = UIColor.systemBlue.cgColor
        
        self.start_btn.roundCorners(corners: .allCorners, radius: 5)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func start_action() {
        if let url = URL(string: "https://eform.bni.co.id/BNI_eForm/fleksiJenisPengajuan"), UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url)
        }
    }
    
    @IBAction func info_action() {
        if let url = URL(string: "https://www.bni.co.id/id-id/individu/pinjaman/bni-fleksi"), UIApplication.shared.canOpenURL(url) {
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
