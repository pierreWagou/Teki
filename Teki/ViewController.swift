import UIKit

class ViewController: UIViewController {
    
    var celeb = ["le Steve Jobs", "le Zinedine Zidane", "la Madonna", "le Karl Lagarfeld", "la Scarlett Johansson"]
    
    var act = ["du dancefloor", "du barbecue", "de la surprise ratée", "des blagues lourdes", "de la raclette party"]

    @IBOutlet weak var quoteLabel: UILabel!
    
    @IBAction func changeQuote() {
        var randomIndex = arc4random_uniform(UInt32(celeb.count))
        let randomCeleb = celeb[Int(randomIndex)]
        randomIndex = arc4random_uniform(UInt32(act.count))
        let randomAct = act[Int(randomIndex)]
        quoteLabel.text = "Tu es " + randomCeleb + " " + randomAct
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

