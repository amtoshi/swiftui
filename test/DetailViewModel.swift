//
//  DetailViewModel.swift
//  test
//
//  Created by Ashutosh Mane on 06/07/20.
//  Copyright © 2020 Ashutosh Mane. All rights reserved.
//

import Foundation
import Combine

class DetailViewModel:ObservableObject,Identifiable{
    
    var didChange=PassthroughSubject<Void,Error>()
    @Published var trigger:Bool=false
    @Published var countryData:[[String:Any]]?
    @Published var colors:[String]
    init() {
        self.colors=["sjgjcrs","sjgjcrs1","sjgjcrs2"]
        
        
    }
    
    private func fetchingCountryData() {
        
//        Json decoding of the test.jspon file
        
        
//           guard let urlOfJSON:URL=URL(fileURLWithPath:Bundle.main.path(forResource: "test.json", ofType: "json")!)
//
//               else {print("error url")
//                   return nil
//           }
//           do{
//               guard let data:Data = try Data(contentsOf: urlOfJSON) else {return nil}
//
//               guard let d:[[String:Any]] = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as! [[String : Any]]
//
//                   else{
//                       return nil
//               }
//
//               return d as [[String:Any]]
//           }
//           catch {
//
//               print(error)
//                return []
//           }
           
           
           
           
           
           
           
       }
    
    
}


