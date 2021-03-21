//
//  ContentView.swift
//  test
//
//  Created by Ashutosh Mane on 24/05/20.
//  Copyright © 2020 Ashutosh Mane. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var friends:[Friend]=[Friend(withName: "Ashutosh", withStatus: "Online"),
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
    @State var active:Bool=false
    
    
    var body: some View {
   
        NavigationView {
            
            
            
            List(friends) { friend in
                
                
                
                NavigationLink(destination: DetailView(data: testData)){
                HStack{
                    
                    VStack(alignment: .leading) {
                        Text(friend.name).fontWeight(.bold)
                        
                        Text(friend.status).italic()
                    }
                    
                 
                    
                    if (friend.status=="online"){
                        Circle()
                        Image(systemName:"photo")
                        
                    }
                    else {
                        Circle().fill(Color.red).padding(12)
                        
                        Image(systemName:"video")
                        
                    }
                    
                }
                }
                
               
        }
            .navigationBarTitle("Friends")
        
        }
        
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        Group{
            ContentView(friends:testData)
        }
            

            
        
    }
}


    func testFunc() {
        print("blah")
    }
    
}
