//
//  News.swift
//  MyFirstProject
//
//  Created by IndyZa on 5/29/2560 BE.
//  Copyright © 2560 IndyZaLab. All rights reserved.
//

import UIKit

class News {
    var id:Int
    var title:String
    var description:String
    var iconImage:UIImage
    var author:String
    var view:Int
    var createDate:String
    var category:String
    
    
    //แก้ชื่อไฟล์ให้เหมือนกัน กำหนดชื่อใหม่
    // var category:String{
    //     return self.cetegory2
    //  }
    
    
    
    init(id:Int , title:String, description:String, iconImage:UIImage, author:String, view:Int, createDate:String, category:String = "Undefined") {
        self.id = id
        self.title = title
        self.description = description
        self.iconImage = iconImage
        self.author = author
        self.view = view
        self.createDate = createDate
        self.category = category
    }

    
}
