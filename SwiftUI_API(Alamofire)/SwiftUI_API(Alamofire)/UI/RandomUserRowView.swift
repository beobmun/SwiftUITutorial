//
//  RandomUserRowView.swift
//  SwiftUI_API(Alamofire)
//
//  Created by 한법문 on 2021/07/24.
//

import SwiftUI


struct RandomUserRowView:View {
    
    var randomUser: RandomUser
    
    init(_ randomUser: RandomUser) {
        self.randomUser = randomUser
    }
    
    var body: some View {
        HStack {
            
            ProfileImageView(imageUrl: randomUser.profileImageUrl)
                
            
            Text("\(randomUser.description)")
                .fontWeight(.heavy)
                .font(.system(size: 25))
                .lineLimit(2)
                .minimumScaleFactor(0.5)
        }
        .frame(minWidth:0, maxWidth: .infinity, minHeight: 0, maxHeight: 50, alignment: .leading)
        .padding([.top, .bottom])
        .background(Color.green)
    }
}


struct RandomUserRowView_Previews: PreviewProvider {
    static var previews: some View {
        
        RandomUserRowView(RandomUser.getDummy())
    }
}
