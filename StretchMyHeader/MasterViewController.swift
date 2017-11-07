//
//  MasterViewController.swift
//  StretchMyHeader
//
//  Created by Olga on 11/7/17.
//  Copyright © 2017 Olga Nesterova. All rights reserved.
//

import UIKit

private let kTableHeaderHeight: CGFloat = 300.0

class MasterViewController: UITableViewController {

    var detailViewController: DetailViewController? = nil
    var news = [NewsItem]()
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var headerView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = true
        
        headerView = tableView.tableHeaderView
        tableView.tableHeaderView = nil
        
        tableView.addSubview(headerView)
        
        createFakeNews()
        setupDateLabel()
        
        tableView.contentInset = UIEdgeInsets(top: kTableHeaderHeight, left: 0, bottom: 0, right: 0)
        tableView.contentOffset = CGPoint(x: 0, y: -kTableHeaderHeight)
        updateHeaderView()
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    // MARK: - Table View

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return news.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! NewsItemTableViewCell

        let newsItem = news[indexPath.row]
        cell.newsItem = newsItem
        return cell
    }
    
    func updateHeaderView() {
        var headerRect = CGRect(x: 0, y: -kTableHeaderHeight, width: tableView.bounds.width, height: kTableHeaderHeight)
        if tableView.contentOffset.y < -kTableHeaderHeight {
            headerRect.origin.y = tableView.contentOffset.y
            headerRect.size.height = -tableView.contentOffset.y
        }
        headerView.frame = headerRect
    }
    
    override func scrollViewDidScroll(_ scrollView: UIScrollView) {
        updateHeaderView()
    }
    
    //MARK: Data source
    func createFakeNews() {
        news = [NewsItem(category: .World, headline: "Climate change protests, divestments meet fossil fuels realities"),
                NewsItem(category: .Europe, headline: "Scotland's 'Yes' leader says independence vote is 'once in a lifetime"),
                NewsItem(category: .MiddleEast, headline: "Airstrikes boost Islamic State, FBI director warns more hostages possible"),
                NewsItem(category: .Africa, headline: "Nigeria says 70 dead in building collapse; questions S. Africa victim claim"),
                NewsItem(category: .AsiaPacicic, headline: "Despite UN ruling, Japan seeks backing for whale hunting"),
                NewsItem(category: .Americas, headline: "Officials: FBI is tracking 100 Americans who fought alongside IS in Syria"),
                NewsItem(category: .World, headline: "South Africa in $40 billion deal for Russian nuclear reactors"),
                NewsItem(category: .Europe, headline: "One million babies' created by EU student exchanges")]
    }
    
    func setupDateLabel() {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM dd"
        let dateString = formatter.string(from: Date())
        dateLabel.text = dateString
    }

}

