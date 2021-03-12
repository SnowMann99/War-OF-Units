//
//  Battle.swift
//  War of Units
//
//  Created by Egor Salnikov on 05.03.2021.
//

final class Battle {
    
    //MARK: - Properties
    
    var firstUnit: Unit
    var secondUnit: Unit
    
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
            
            if firstUnit.isAlive {
                firstUnit.makeBattleRoar()
                secondUnit.takeDamage(from: firstUnit)
                
                if !secondUnit.isAlive {
                    print("Победитель - \(firstUnit.name) (\(firstUnit.healthPoints))")
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
