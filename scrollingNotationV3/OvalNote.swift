//
//  OvalNote.swift
//  scrollingNotationV3
//
//  Created by brendan woods on 2016-02-09.
//  Copyright © 2016 brendan woods. All rights reserved.
//

import UIKit

class OvalNote: UIView {

    
    let ovalNoteWidth: CGFloat = 30
    let ovalNoteHeight: CGFloat = 20
    var noteX = 0
    var noteY = 0
    let spaceBetweenStaffLines: CGFloat = 20
    let topLineY: CGFloat = 100.0
    
     
    // draw the note inside the frame, and position it. Begin the timer
    //that will be firing, to call the function to move the note.
    override func drawRect(rect: CGRect) {
        
        UIColor.blackColor().setFill()
        
        self.frame.origin.x = UIScreen.mainScreen().bounds.size.width
        self.frame.origin.y = topLineY - ovalNoteHeight / 2
        
        let note = UIBezierPath(ovalInRect: CGRectMake(0, 0, ovalNoteWidth , ovalNoteHeight))
        note.fill()
        
        let _ = NSTimer.scheduledTimerWithTimeInterval(0.02, target: self, selector: Selector("moveNoteLeft"), userInfo:nil, repeats: true)
    }
    
    
    // move the note to the left
    func moveNoteLeft() {
        self.frame.origin.x -= 2
       
    }
    
}
