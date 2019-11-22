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
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.articleListViewModel.numberOfRows
    }

  
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "newsCell", for: indexPath)
        let articleViewModel = articleListViewModel.articleAtIndex(indexPath.row)

        
    }
   

}
