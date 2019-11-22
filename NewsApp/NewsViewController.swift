//
//  NewsViewController.swift
//  NewsApp
//
//  Created by Sandesh Basnet on 11/19/19.
//  Copyright © 2019 Sandesh Basnet. All rights reserved.
//

import UIKit

class NewsViewController: UITableViewController {
    
    var articleListViewModel:ArticleListViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.articleListViewModel == nil ? 0: self.articleListViewModel.numberOfRows
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "newsCell", for: indexPath) as? ArticleCell else {
           fatalError("Article Cell could not be initialized")
        }
        let articleViewModel = articleListViewModel.articleAtIndex(indexPath.row)
        cell.title.text = articleViewModel.title
        cell.articleDescription.text = articleViewModel.description
        return cell
    }
    
    func setup() {
        guard let url = URL(string: "https://newsapi.org/v2/everything?q=bitcoin&from=2019-10-22&sortBy=publishedAt&apiKey=129463eece23426c80dff0e7b7960b5e") else {
            fatalError("URL is not a valid string")
        }
        WebService().getArticle(url: url) { articles in
            if let articles = articles {
                print(articles)
                self.articleListViewModel = ArticleListViewModel(articles: articles)
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
            else {
                fatalError("Web Service completion handler failed")
            }
        }
  }
    
}
