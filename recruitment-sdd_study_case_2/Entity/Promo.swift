//
//  Promo.swift
//  recruitment-sdd_study_case_2
//
//  Created by Jonathan Kristian on 04/04/24.
//

import Foundation

final class Promo: NSObject {
    var id: Int = 0
    var name: String = ""
    var images_url: String = ""
    var detail: String = ""
    
    init?(dictionary: [String: Any]) {
        
        if let id = dictionary["id"] as? Int {
            self.id = id
        }
        if let name = dictionary["name"] as? String {
            self.name = name
        }
        
        if let images_url = dictionary["images_url"] as? String {
            self.images_url = images_url
        }
        if let detail = dictionary["detail"] as? String {
            self.detail = detail
        }
    }
}
