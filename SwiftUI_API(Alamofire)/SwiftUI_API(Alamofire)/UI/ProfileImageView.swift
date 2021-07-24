//
//  ProfileImageView.swift
//  SwiftUI_API(Alamofire)
//
//  Created by 한법문 on 2021/07/24.
//

import SwiftUI
import URLImage


struct ProfileImageView: View {
    
    var imageUrl: URL
    
    var body: some View {
        
        URLImage(imageUrl) { image in
            image
                .resizable()
                .aspectRatio(contentMode: .fit)
        }
        .frame(width:50, height: 60)
        .clipShape(Circle())
        .overlay(Circle().stroke(Color.init(#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)), lineWidth: 2))
        
    }
}


struct ProfileImageView_Previews: PreviewProvider {
    static var previews: some View {
        
        let url = URL(string: "https://randomuser.me/api/portraits/women/33.jpg")!
        
        ProfileImageView(imageUrl: url)
    }
}
