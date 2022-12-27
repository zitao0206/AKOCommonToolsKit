//
//  AKOSwiftViewController.swift
//  AKOCommonToolsKit_Example
//
//  Created by lizitao on 2022/12/27.
//  Copyright © 2022 lizitao. All rights reserved.
//

import Foundation
import AKOCommonToolsKit

@objcMembers class AKOSwiftObject : NSObject {
    
    @objc public func testCase() {
    
        testSequenceForUniqued()
        testSequenceForCount()
//        testForSafeArray()
    }
    func testSequenceForUniqued() {
        let a = [ 1, 2, 3, 1, 2 ].uniqued()   // [ 1, 2, 3 ]
        print(a)
        
        struct ArticleModel {
            public var title : String = ""
            public var content : String = ""
            public var articleID : String = ""
        }
        let article1 = ArticleModel(title: "111", content: "aa", articleID: "11111")
        let article2 = ArticleModel(title: "222", content: "aaa", articleID: "22222")
        let article3 = ArticleModel(title: "111", content: "aaaa", articleID: "33333")
        let article4 = ArticleModel(title: "333", content: "aaaaa", articleID: "44444")
        
        let articles = [article1, article2, article3, article4]

//        let newarticles = articles.uniqued(comparator: {$0.title == $1.title})
//        print(newarticles)    // 结果 article3 会被删除
      
        let newarticles = articles.uniqued(\.title)  // 结果 article3 会被删除
        
    }
    
    func testSequenceForCount() {
        let num = ["A", "A", "B"].count(where: { $0 == "A" }) // 2
        print (num)

        print (["B", "A", "B"].dropLast(1)  // --> ArraySlice<String>
        .count(where: { $0 == "B" })) // 1
    }
    
    func testForSafeArray() {
        let values = ["A", "B", "C"]
        if let value = values[safe: 2] {
            print(value)
        }
        if let vale = values[safe: 3] {
            print(vale)
        }

    }
    
}
