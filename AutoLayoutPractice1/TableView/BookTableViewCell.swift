//
//  BookTableViewCell.swift
//  AutoLayoutPractice1
//
//  Created by Time Ruchutrakool on 3/18/23.
//

import UIKit

class BookTableViewCell: UITableViewCell {

    @IBOutlet weak var summaryLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(booksInfo: [String:String]){
        guard let title = booksInfo["title"], let author = booksInfo["author"], let summary = booksInfo["summary"] else{
            return
        }
        titleLabel.text = title
        authorLabel.text = author
        summaryLabel.text = summary
    }

}
