//
//  Friend.swift
//  test
//
//  Created by Ashutosh Mane on 24/05/20.
//  Copyright © 2020 Ashutosh Mane. All rights reserved.
//

import Foundation

class Friend: Identifiable {
    var ID:UUID
    var name:String
    var status:String{
        didSet{
            print("the status was set to \(self.status)")
        }
    }
    
    init(withName name:String, withStatus status:String) {
        self.ID=UUID()
        self.name=name
        self.status=status
    }
}

#if DEBUG

let testData=[Friend(withName: "Ashutosh", withStatus: "Online"),
              Friend(withName: "Ashutosh", withStatus: "Online"),
              Friend(withName: "Ashutosh", withStatus: "Online"),
              Friend(withName: "Ashutosh", withStatus: "Online"),
              Friend(withName: "Ashutosh", withStatus: "Online"),
              Friend(withName: "Ashutosh", withStatus: "Online"),
              Friend(withName: "Ashutosh", withStatus: "Online"),
              Friend(withName: "Ashutosh", withStatus: "Online"),
              Friend(withName: "Ashutosh", withStatus: "Online"),
              Friend(withName: "Ashutosh", withStatus: "Online"),
              Friend(withName: "Ashutosh", withStatus: "Online"),
              Friend(withName: "Ashutosh", withStatus: "Online"),]

let testData1=[Friend(withName: "Ashutosh", withStatus: "Online"),
              Friend(withName: "Ashutosh", withStatus: "Online"),
              Friend(withName: "Ashutosh", withStatus: "Online"),
              Friend(withName: "Ashutosh", withStatus: "Online"),
              Friend(withName: "Ashutosh", withStatus: "Online "),
              Friend(withName: "Ashutosh", withStatus: "Online "),
              Friend(withName: "Ashutosh", withStatus: "Online "),
              Friend(withName: "Ashutosh", withStatus: "Online"),
              Friend(withName: "Ashutosh", withStatus: "Online"),
              Friend(withName: "Ashutosh", withStatus: "Online "),
              Friend(withName: "Ashutosh", withStatus: "Online"),
              Friend(withName: "Ashutosh", withStatus: "Online"),]


#endif
