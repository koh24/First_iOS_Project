//
//  FeedViewController.swift
//  MyFirstProject
//
//  Created by IndyZa on 5/29/2560 BE.
//  Copyright © 2560 IndyZaLab. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    
    var newsArray:[News] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupTableView()
        self.setupTableViewDummyData()
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /**
     ติดตั้ง TableView
     */
    func setupTableView(){
        self.tableView.register(UINib(nibName: "FeedTableViewCell", bundle: nil), forCellReuseIdentifier: "FeedTableViewCell")
    }
    
    /**
     สร้างข้อมูลทดสอบใน TableView
     */
    func setupTableViewDummyData(){
        let news:News = News(id: 001 , title: "iOS", description: "Error lets stop doing this", iconImage: #imageLiteral(resourceName: "cheese_flat"), author: "Prayuth", view: 2, createDate: "29/06/60" , category: "MobileApp")
        let news2:News = News(id: 002 , title: "Android", description: "5555555555+", iconImage: #imageLiteral(resourceName: "cat"), author: "Yingluck", view: 999999999, createDate: "29/06/60" , category: "Sport")

        
        newsArray.append(news)
        newsArray.append(news2)
        newsArray.append(news2)
        newsArray.append(news2)
        newsArray.append(news2)
        newsArray.append(news2)
    }
    
    
    func toFeedDeteilViewController(news:News){
        
        if let viewController = self.storyboard?.instantiateViewController(withIdentifier:"FeedDetailViewController") as? FeedDetailViewController{
            viewController.news = news
            self.navigationController?.pushViewController(viewController, animated: true)
            
            
        }
          }
    /*
    // MARK: - Navigation

       }
    */
}

extension FeedViewController: UITableViewDataSource,UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newsArray.count
    }
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let rowNo = indexPath.row
        let cell = tableView.dequeueReusableCell(withIdentifier: "FeedTableViewCell", for: indexPath) as! FeedTableViewCell
        var news:News = newsArray[rowNo]
        cell.setupUI(news: news)
        return cell
    }
      //ทำงานเมื่อมีการกดปุ่มแล้ว
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let rowNo = indexPath.row
        var news:News = newsArray[rowNo]
        print(indexPath.row)
        self.toFeedDeteilViewController(news: news)
    }
    
    
}


