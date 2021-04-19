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
        firstUnit.printUnitInfo()
        secondUnit.printUnitInfo()
        
        while firstUnit.isAlive && secondUnit.isAlive {
            
            if firstUnit.isAlive {
                firstUnit.makeBattleRoar()
                
                #warning("TODO: Устранить дублирование")
                sleep(pauseDuration)
                
                secondUnit.takeDamage(from: firstUnit)
                
                #warning("TODO: Устранить дублирование")
                sleep(pauseDuration)
                
                if !secondUnit.isAlive {
                    print("Победитель - \(firstUnit.name) (\(firstUnit.healthPoints))")
                    break
                }
            }
            
            if secondUnit.isAlive {
                secondUnit.makeBattleRoar()
                
                firstUnit.takeDamage(from: secondUnit)
                
                if !firstUnit.isAlive {
                    print("Победитель - \(secondUnit.name) (\(secondUnit.healthPoints))")
                }
            }
        }
    }
}
