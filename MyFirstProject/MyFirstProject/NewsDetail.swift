//
//  NewsDetail.swift
//  MyFirstProject
//
//  Created by std107 on 5/31/17.
//  Copyright © 2017 IndyZaLab. All rights reserved.
//

import UIKit
import ObjectMapper


class NewsDetail:Mappable {
    
    
    var id:Int = -1
    var content:String = ""
    var imageUrl:[String] = []
    var createdAt:String = ""
    var lat:Double? //จะมีค่าหรือไม่มีก็ได้
    var link:String = ""
    var lng:Double? //จะมีค่าหรือไม่มีก้ได้
    private var primaryColorstr:String = ""
    private var secondaryColorstr:String = ""
    private var backgroundColorstr:String = ""
    var updatedAt:String = ""
    
    var primaryColor:UIColor{
        return UIColor(hexString: self.primaryColorstr)
    }
    
    var secondaryColor:UIColor{
        return UIColor(hexString: self.secondaryColorstr)
    }

    var backgroundColor:UIColor{
        return UIColor(hexString: self.backgroundColorstr)
    }

    
    init(){
        
    }
    
    
    required init?(map:Map){
        
    }
    
    func mapping (map:Map){
        
        self.id                     <- map["id"]
        self.content                <- map["content"]
        self.imageUrl               <- map["image_urls"]
        self.backgroundColorstr     <- map["background_color"]
        self.createdAt              <- map["created_at"]
        self.lat                    <- map["lat"]
        self.link                   <- map["linl"]
        self.lng                    <- map["lng"]
        self.primaryColorstr        <- map["primary_color"]
        self.secondaryColorstr      <- map["secondary_color"]
        self.updatedAt              <- map["updated_at"]
        

}

}
