//
//  BoardView.swift
//  9block
//
//  Created by Greeley Dawson on 10/19/21.
//

import UIKit

class BoardView: UIView {
    let cols: Int = 9
    let rows: Int = 9
    
    let originX: CGFloat = 53
    let originY: CGFloat = 71
    let cellSide: CGFloat = 23
    
    override func draw(_ rect: CGRect) {
        drawGrid()
    }
    
    func drawGrid() {
        let gridPath = UIBezierPath()
        for i in 0...rows {
            gridPath.move(to: CGPoint(x: originX, y: originY + CGFloat(i) * cellSide))
            gridPath.addLine(to: CGPoint(x: originX + CGFloat(cols) * cellSide, y: originY + CGFloat(i) * cellSide))
        }
        
        for i in 0...cols {
            gridPath.move(to: CGPoint(x: originX + CGFloat(i) * cellSide, y: originY))
            gridPath.addLine(to: CGPoint(x: originX + CGFloat(i) * cellSide, y: originY + CGFloat(rows) * cellSide))
        }
        
        UIColor.lightGray.setStroke()
        gridPath.stroke()
    }
}
