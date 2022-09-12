//
//  NetworkManager.swift
//  MyJSONParsing
//
//  Created by Ruslan Liulka on 10.09.2022.
//

import Foundation
import Alamofire

struct NetworkManager {
    
    static let shared = NetworkManager()
    
    func getRequest(completion: @escaping((Products) -> ())) {
        let request = AF.request("https://app.fakejson.com/q", method: .post, parameters: parameters, encoding: JSONEncoding.default)
        
        request.responseDecodable(of: Products.self) { response in
            do {
                guard let users = try response.value else {
                    return}
                completion(users)
            } catch {
                print("error: ", error)
            }
        }
        
    }
    
}
