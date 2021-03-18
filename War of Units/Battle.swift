//
//  Battle.swift
//  War of Units
//
//  Created by Egor Salnikov on 05.03.2021.
//

import Foundation

final class Battle {
    
    //MARK: - Properties
    
    var firstUnit: Unit
    var secondUnit: Unit
    
    let pauseDuration: UInt32 = 1
    
    //MARK: - Life Cycle
    
    init(firstUnit: Unit, secondUnit: Unit) {
        self.firstUnit = firstUnit
        self.secondUnit = secondUnit
    }
    
    //MARK: - Public Methods
    
    func startBattle() {
        while firstUnit.isAlive && secondUnit.isAlive {
            firstUnit.printUnitInfo()
            secondUnit.printUnitInfo()
            
            pause(seconds: pauseDuration)
            
            if firstUnit.isAlive {
                firstUnit.makeBattleRoar()
                pause(seconds: pauseDuration)
                
                secondUnit.takeDamage(from: firstUnit)
                pause(seconds: pauseDuration)
                
                if !secondUnit.isAlive {
                    print("Победитель - \(firstUnit.name) (\(firstUnit.healthPoints))")
                    break
                }
            }
            
            if secondUnit.isAlive {
                secondUnit.makeBattleRoar()
                pause(seconds: pauseDuration)
                
                firstUnit.takeDamage(from: secondUnit)
                pause(seconds: pauseDuration)
                
                if !firstUnit.isAlive {
                    print("Победитель - \(secondUnit.name) (\(secondUnit.healthPoints))")
                }
            }
        }
    }
    
    func pause(seconds: UInt32) {
        sleep(seconds)
    }
}
