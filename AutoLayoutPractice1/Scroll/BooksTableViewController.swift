//
//  BooksTableViewController.swift
//  AutoLayoutPractice1
//
//  Created by Time Ruchutrakool on 3/18/23.
//

import UIKit

class BooksTableViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    var selectedBook = [String:String]()
    let books = [
        ["title": "The Ice Monster", "summary": "When Elsie, an orphan on the streets of Victorian London, hears about the mysterious Ice Monster – a woolly mammoth found at the North Pole – she’s determined to discover more… A chance encounter brings Elsie face to face with the creature, and sparks the adventure of a lifetime – from London to the heart of the Arctic!", "author": "By David Walliams", "notes": """
            David Walliams fans, are you ready for an absolute MAMMOTH of an adventure? The Ice Monster is David's biggest and most epic adventure yet! This is the story of a ten-year-old orphan and a 10,000-year-old mammoth…
            
            Read all about it! Read all about it! ICE MONSTER FOUND IN ARCTIC!
            
            When Elsie, an orphan on the streets of Victorian London, hears about the mysterious Ice Monster – a woolly mammoth found at the North Pole – she’s determined to discover more… A chance encounter brings Elsie face to face with the creature, and sparks the adventure of a lifetime – from London to the heart of the Arctic!
            
            Heroes come in all shapes and sizes in David Walliams’ biggest and most epic adventure yet!
            """],
        ["title": "Wundersmith: The Calling of Morrigan Crow", "summary": "Morrigan Crow has been invited to join the prestigious Wundrous Society, a place that promised her friendship, protection and belonging for life. She's hoping for an education full of wunder, imagination and discovery - but all the Society want to teach her is how evil Wundersmiths are. And someone is blackmailing Morrigan's unit, turning her last few loyal friends against her. Has Morrigan escaped from being the cursed child of Wintersea only to become the most hated figure in Nevermoor?", "author": "By Jessica Townsend", "notes": """
            Morrigan Crow may have defeated her deadly curse, passed the dangerous trials and joined the mystical Wundrous Society, but her journey into Nevermoor and all its secrets has only just begun. And she is fast learning that not all magic is used for good.
            
            Morrigan Crow has been invited to join the prestigious Wundrous Society, a place that promised her friendship, protection and belonging for life. She's hoping for an education full of wunder, imagination and discovery - but all the Society want to teach her is how evil Wundersmiths are. And someone is blackmailing Morrigan's unit, turning her last few loyal friends against her. Has Morrigan escaped from being the cursed child of Wintersea only to become the most hated figure in Nevermoor?
            
            Worst of all, people have started to go missing. The fantastical city of Nevermoor, once a place of magic and safety, is now riddled with fear and suspicion...
            """],
        ["title": "Diary of a Wimpy Kid: The Meltdown", "summary": "When snow shuts down Greg Heffley's middle school, his neighborhood transforms into a wintry battlefield. Rival groups fight over territory, build massive snow forts, and stage epic snowball fights. And in the crosshairs are Greg and his trusty best friend, Rowley Jefferson.", "author": "By Jeff Kinney", "notes": """
            When snow shuts down Greg Heffley's middle school, his neighborhood transforms into a wintry battlefield. Rival groups fight over territory, build massive snow forts, and stage epic snowball fights. And in the crosshairs are Greg and his trusty best friend, Rowley Jefferson. It's a fight for survival as Greg and Rowley navigate alliances, betrayals, and warring gangs in a neighborhood meltdown. When the snow clears, will Greg and Rowley emerge as heroes? Or will they even survive to see another day?
            """],
        ["title": "Good Night Stories for Rebel Girls", "summary": "Good Night Stories for Rebel Girls introduces us to one hundred remarkable women and their extraordinary lives. From Marie Curie to Malala, Ada Lovelace to Zaha Hadid, this book brings together the stories of scientists, artists, politicians, pirates and spies. Each double-page spread contains a mini-biography written in the style of a modern fairy tale and a full-page portrait capturing the spirit of each heroine, by one of the sixty female artists from across the globe who were commissioned to illustrate the book.", "author": "By Elena Favilli", "notes": """
            From the creators of the New York Times Best Seller and crowdfunding sensation “Good Night Stories for Rebel Girls” comes a beautiful Gift Box containing 200 stories that inspire girls to dream big. “Good Night Stories For Rebel Girls” reinvents fairy tales with a collection of bedtime stories about the life of extraordinary women, from Nefertiti to Beyoncé. The unique narrative style of “Good Night Stories for Rebel Girls” transforms each biography into a fairy-tale, filling the readers with wonder and with a burning curiosity to know more about each hero.
            Each Gift Box Set contains both “Good Night Stories for Rebel Girls” and “Good Night Stories for Rebel Girls 2” included in a beautiful slipcase, shrink-wrapped to ensure scuff-free arrival. Illustrated by 70 female artists from all over the world, the books contained in the Gift Box are hardcover, with an extra smooth matte scuff-free lamination, 100lbs beautiful paper, a double satin bookmark and an extraordinary print quality with soy and vegetable based inks, “Good Night Stories For Rebel Girls” will inspire your entire family to dream bigger, aim higher and fight harder!
            """],
        ["title": "The 104-Storey Treehouse", "summary": "Join Andy and Terry in their wonderfully wild and wacky 104-storey treehouse. You can throw some refrigerators, make some money with the money-making machine (or honey if you'd prefer-it makes that too), climb the never-ending staircase, have a bunfight, deposit some burps in the burp bank, get totally tangled up in the tangled-up level, or just take some time out and relax in the peaceful sunny meadow full of buttercups, butterflies and bluebirds.", "author": "By: Andy Griffiths", "notes": """
            The 104-Storey Treehouse is the eighth book of Andy Griffiths and Terry Denton's wacky treehouse adventures, where the laugh-out-loud story is told through a combination of text and fantastic cartoon-style illustrations.
            Join Andy and Terry in their now 104-storey spectacular treehouse. They've added thirteen new levels, including a never-ending staircase, a burp bank, and even a mighty fortress. But Andy and Terry are in a race against time to find a funny story for their next book – will the tooth fairy, the two-million-dollar shop or even the riddles of the deep-thoughts thinking room be able to help?
            Well, what are you waiting for? Come on up!
            """]
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ScrollCell",for: indexPath)
        
        let bookInfo = books[indexPath.row]
        
        cell.textLabel?.text = bookInfo["title"]
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedBook = books[indexPath.row]
        performSegue(withIdentifier: "toDetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetail"{
            let destinationVC = segue.destination as! BooksDetailViewController
            destinationVC.bookInfo = selectedBook
            
        }
    }
    
}
