//
//  PromoRequest.swift
//  recruitment-sdd_study_case_2
//
//  Created by Jonathan Kristian on 04/04/24.
//

import Foundation
import Alamofire


final class PromoRequest: NSObject {
    var promos: [Promo] = []
    
    init?(dictionary: [String: Any]) {
        
        if let promos = dictionary["promos"] as? [[String: Any]] {
            var temp: [Promo] = []
            for row in promos{
                temp.append(Promo.init(dictionary: row)! )
            }
            self.promos = temp
        }
    }
}

extension PromoRequest {
    enum PromoRequestResult {
        case success(PromoRequest)
        case failure(Error?)
    }
    
    
    static func get( completionHandler: @escaping (PromoRequestResult) -> Void){
        let parameters: [String: String] = [:]
        let headers: HTTPHeaders = [
            "Authorization": "Bearer \(TOKEN_BEARER)",
            "Accept": "application/json"
        ]
        
        AF.request("\(BASE_URL)/promos",
                   method: .get,
                   parameters: parameters,
                   headers: headers
        ).responseData { response in
            switch response.result {
            case .success:
                let data = response.value
                do {
                    if let dictionary = try JSONSerialization.jsonObject(with: data!, options : .allowFragments) as? [String: Any]{
                        completionHandler(.success(PromoRequest.init(dictionary:dictionary)! ))
                    } else {
                        completionHandler(.failure(RequestError.invalidReturnedJSON))
                    }
                } catch let error{
                    completionHandler(.failure(error))
                }
                
            case let .failure(error):
                completionHandler(.failure(error))
            }
        }
    }
}
