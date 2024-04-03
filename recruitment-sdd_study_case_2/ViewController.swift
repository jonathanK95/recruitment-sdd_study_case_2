//
//  ViewController.swift
//  recruitment-sdd_study_case_2
//
//  Created by Jonathan Kristian on 03/04/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.test()
        // Do any additional setup after loading the view.
    }


    func test(){
        PromoRequest.get(completionHandler: {
            result in
            switch result {
            case .success(let data):
                
                break
            case .failure(let err):
                print(err?.localizedDescription ?? "-")
                break
            }
        })
    }
}

