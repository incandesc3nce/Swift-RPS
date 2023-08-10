//
//  ViewController.swift
//  rock_paper_scissors
//
//  Created on 10.08.2023.
//  my 3rd project after some slots and internship app

import UIKit

let signArray = ["👋", "✊", "✌️",]

var playerWins: UInt = 0
var cpuWins: UInt = 0

class ViewController: UIViewController {
    @IBOutlet weak var playerSign: UILabel!
    @IBOutlet weak var cpuSign: UILabel!
    
    @IBOutlet weak var cpuScore: UILabel!
    @IBOutlet weak var playerScore: UILabel!
    
    
    @IBOutlet weak var playerPaper: UIButton!
    @IBOutlet weak var playerScissors: UIButton!
    @IBOutlet weak var playerRock: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func newRound(playerInput: String) {
        var newPlayerSign: String = playerInput
        var newCPUSign: String = signArray[Int.random(in: 0...2)]
        
        playerSign.text = newPlayerSign
        cpuSign.text = newCPUSign
        
        if newPlayerSign == newCPUSign {
            return
        } else {
            if newPlayerSign == "👋" && newCPUSign == "✊" {
                playerWins += 1;
            }
            if newPlayerSign == "👋" && newCPUSign == "✌️" {
                cpuWins += 1;
            }
            if newPlayerSign == "✊" && newCPUSign == "✌️" {
                playerWins += 1;
            }
            if newPlayerSign == "✊" && newCPUSign == "👋" {
                cpuWins += 1;
            }
            if newPlayerSign == "✌️" && newCPUSign == "👋" {
                playerWins += 1;
            }
            if newPlayerSign == "✌️" && newCPUSign == "✊" {
                cpuWins += 1;
            }
        }
        playerScore.text = String(playerWins)
        cpuScore.text = String(cpuWins)
    }
    
    @IBAction func playPaper(sender: UIButton){
        newRound(playerInput: "👋")
    }
    @IBAction func playRock(sender: UIButton){
        newRound(playerInput: "✊")
    }
    @IBAction func playScissors(sender: UIButton){
        newRound(playerInput: "✌️")
    }
}

