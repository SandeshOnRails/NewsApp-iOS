//
//  ArticleViewModel.swift
//  NewsApp
//
//  Created by Sandesh Basnet on 11/19/19.
//  Copyright © 2019 Sandesh Basnet. All rights reserved.
//

import Foundation


struct ArticleList: Decodable {
    let articles: [Article]
}
struct Article: Decodable {
    let description: String
    let title: String
}
