//
//  ArticleViewModel.swift
//  NewsApp
//
//  Created by Sandesh Basnet on 11/19/19.
//  Copyright © 2019 Sandesh Basnet. All rights reserved.
//

import Foundation

struct ArticleViewModel {
    let article: Article
}

extension ArticleViewModel {
    init(_ article: Article) {
        self.article = article
    }
}
extension ArticleViewModel {
    var description: String {
        return self.article.description
    }
    var title: String {
        return self.article.title
    }
}

struct ArticleListViewModel {
    var articles: [Article]
}

extension ArticleListViewModel {
    
    var numberOfRows: Int {
        return self.articles.count
    }
    
    var numberOfSections: Int {
        return 1
    }
    
    func articleAtIndex(_ index: Int) -> ArticleViewModel {
        let article = articles[index]
        return ArticleViewModel(article: article)
    }
}
