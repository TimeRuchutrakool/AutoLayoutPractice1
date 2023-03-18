//
//  BooksDetailViewController.swift
//  AutoLayoutPractice1
//
//  Created by Time Ruchutrakool on 3/18/23.
//

import UIKit

class BooksDetailViewController: UIViewController {

    @IBOutlet weak var descripionLabel: UILabel!
    @IBOutlet weak var summaryLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var scroll: UIScrollView!
    var bookInfo = [String:String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scroll.contentLayoutGuide.bottomAnchor.constraint(equalTo: descripionLabel.bottomAnchor).isActive = true
        
        // Do any additional setup after loading the view.
        titleLabel.text = bookInfo["title"]
        authorLabel.text = bookInfo["author"]
        summaryLabel.text = bookInfo["summary"]
        descripionLabel.text = bookInfo["notes"]
    }
    

}
