//
//  detailView.swift
//  test
//
//  Created by Ashutosh Mane on 27/05/20.
//  Copyright © 2020 Ashutosh Mane. All rights reserved.
//

import SwiftUI

struct DetailView: View {
    var data:[Friend]
    
    
    
    @State var countryData:[[String:Any]]=[]
    @ObservedObject var vModel:DetailViewModel=DetailViewModel()
    @State private var selectedColor = 0
    @State private var showPicker=false
    
    
    
    var body: some View {
        
        VStack {
            Button(action: {
                print("tapped")
                
                self.showPicker.toggle()
                
                DispatchQueue.main.asyncAfter(deadline: .now()+3, execute: {
                    self.vModel.trigger.toggle()
                    print("async")
                })
            
                
            }, label: {
                Text("press to show picker")})
            
            if showPicker{
                Picker(selection: $selectedColor, label: Text("Please choose a color")) {
                    ForEach(0 ..< self.vModel.colors.count) {
                        index in
                        HStack{
                            if self.vModel.trigger{
                                Image(systemName: "checkmark.seal.fill")
                                Text(self.vModel.colors[index])
                            }
                            else{
                                Image(systemName: "checkmark.seal")
                                Text(self.vModel.colors[index])
                            }
                                
                                
                            }
    
                    }
                }.labelsHidden()
                
                
                
            }
            
            Text("You selected: \(self.vModel.colors[selectedColor])")
            
            
//            labelfromUIKit()
            
        }
        
    }
    
    
}



struct labelfromUIKit:UIViewRepresentable{
    
    
    typealias UIViewType = UILabel
    
    
    
    let emoji=String("\u{1F1E6}\u{1F1E9}")
    
    func makeUIView(context: Context) -> UILabel {
        let label=UILabel()
        label.text=emoji
        
        return label
    }
    
    func updateUIView(_ uiView: UILabel, context: Context) {
        print("updating UI kit bridge view")
        uiView.text=emoji
    }
    
    
    
    
}


struct detailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(data: testData)
        
    }
}


