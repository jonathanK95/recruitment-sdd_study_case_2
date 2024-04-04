//
//  HomeController.swift
//  recruitment-sdd_study_case_2
//
//  Created by Jonathan Kristian on 04/04/24.
//

import UIKit

class HomeController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var thisPromos: [Promo] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTable()
        self.fetch()
        // Do any additional setup after loading the view.
    }
    
    func setupTable() {
        self.tableView.register(UINib(nibName: "PromoTableCell", bundle: nil), forCellReuseIdentifier: "PromoTableCell")
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }
    
    @IBAction func openFleksiDetailAction() {
        guard let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FleksiDetailController") as? FleksiDetailController else { return }
        self.navigationController?.pushViewController(vc, animated: true)
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

// MARK: - Fetch
extension HomeController{
    
    func fetch(){
        PromoRequest.get(completionHandler: {
            result in
            switch result {
            case .success(let data):
                self.thisPromos = data.promos
                self.tableView.reloadData()
                print(data)
                break
            case .failure(let err):
                print(err?.localizedDescription ?? "-")
                break
            }
        })
    }
}

// MARK: - UITable Delegate
extension HomeController: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.thisPromos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PromoTableCell", for: indexPath) as? PromoTableCell else{
            return UITableViewCell()
        }
        cell.setupCell(promo: self.thisPromos[indexPath.row])
        cell.delegate = self
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
}

// MARK: - UITable Cell Delegate
extension HomeController: PromoCellDelegate{
    func showPromo(promo: Promo) {
        switch promo.id {
        case 1:
            guard let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MobileBankingDetailController") as? MobileBankingDetailController else { return }
            vc.thisPromo = promo
            self.navigationController?.pushViewController(vc, animated: true)
        case 2:
            guard let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "WholesaleDetailController") as? WholesaleDetailController else { return }
            vc.thisPromo = promo
            self.navigationController?.pushViewController(vc, animated: true)
        default:
            break
        }
    }
}

