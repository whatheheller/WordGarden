
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var wordsGuessedLabel: UILabel!
    @IBOutlet weak var wordsRemainingLabel: UILabel!
    @IBOutlet weak var wordsMissedLabel: UILabel!
    @IBOutlet weak var wordsInGameLabel: UILabel!
    @IBOutlet weak var wordRevealedLabel: UILabel!
    @IBOutlet weak var guessLetterField: UITextField!
    @IBOutlet weak var guessLetterButton: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    @IBOutlet weak var gameStatusLabel: UILabel!
    @IBOutlet weak var flowerImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let text = guessLetterField.text!
        guessLetterButton.isEnabled = !(text.isEmpty)
    }
    
    func updateUIAfterGuess() {
        guessLetterField.resignFirstResponder()
        guessLetterField.text! = ""
        guessLetterButton.isEnabled = false
    }
    
    @IBAction func guessLetterFieldChanged(_ sender: UITextField) {
        let text = guessLetterField.text!
        guessLetterButton.isEnabled = !(text.isEmpty)
    }
    
    @IBAction func doneKeyPressed(_ sender: UITextField) {
        updateUIAfterGuess()
    }
    
    @IBAction func guessLetterButtonPressed(_ sender: UIButton) {
        updateUIAfterGuess()
    }
    
    @IBAction func playAgainButtonPressed(_ sender: UIButton) {
        
    }
    
}

