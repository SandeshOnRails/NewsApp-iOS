//
//  WebService.swift
//  NewsApp
//
//  Created by Sandesh Basnet on 11/19/19.
//  Copyright © 2019 Sandesh Basnet. All rights reserved.
//

import Foundation

class WebService {
    
    func getArticle(url: URL, completion: @escaping ([Article]?) -> ()) {
        URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let data = data {
                let articleList = try? JSONDecoder().decode(ArticleList.self, from: data)
                if let articleList = articleList {
                     completion(articleList.articles)
                }
            }
        }.resume()
    }
}
