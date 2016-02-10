//
//  ViewController.swift
//  scrollingNotationV3
//
//  Created by brendan woods on 2016-02-09.
//  Copyright © 2016 brendan woods. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var grandStaff:GrandStaff?
    @IBOutlet weak var ovalNote:OvalNote?
    
    var noteLibrary:NoteLibrary?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        noteLibrary = NoteLibrary()
        noteLibrary?.fillNoteLibrary()
        noteLibrary?.filterNotesForDifficulty("easyTreble")
        var tempArray = noteLibrary?.returnNotesArray()
        
        for note in tempArray! {
            if note.noteName == "f" && note.octaveNumber == 5 {
                print(note)
            }
        }
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

