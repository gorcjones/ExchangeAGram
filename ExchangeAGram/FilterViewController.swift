//
//  FilterViewController.swift
//  ExchangeAGram
//
//  Created by Ryan Jones on 6/6/15.
//  Copyright (c) 2015 Ryan Jones. All rights reserved.
//

import UIKit

class FilterViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    var thisFeedItem: FeedItem!
    
    var collectionView: UICollectionView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        layout.itemSize = CGSize(width: 150, height: 150)
        collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.registerClass(FilterCell.self, forCellWithReuseIdentifier: "MyCell")
        
        collectionView.backgroundColor = UIColor.whiteColor()
        
        
        self.view.addSubview(collectionView)
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 2
        
    
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell:FilterCell = collectionView.dequeueReusableCellWithReuseIdentifier("MyCell", forIndexPath: indexPath) as! FilterCell
        cell.imageView.image = UIImage(named: "Placeholder")
        
        return cell
        
    }
    


}
