//
//  War.swift
//  War of Units
//
//  Created by Egor Salnikov on 26.02.2021.
//

final class War {
    
    //MARK: - Properties
    
    var armyOne: [Unit] = []
    var armyTwo: [Unit] = []
    
    //MARK: - Life Cycle
    
    init?(units: [Unit]) {
        guard !units.isEmpty else { return nil }
        var isReverseNeeded = false
        
        let sortedUnits = units.sorted {
            if $0.healthPoints == $1.healthPoints {
                return $0.damage > $1.damage
            }
            if $0.healthPoints == $1.healthPoints && $0.damage == $1.damage {
                return $0.resistanceDamageCoefficient > $1.resistanceDamageCoefficient
            }
            return $0.healthPoints > $1.healthPoints
        }
        
        for (index, unit) in sortedUnits.enumerated() {
            let totalCount = armyOne.count + armyTwo.count
            
            if index.isMultiple(of: 2) && !isReverseNeeded {
                armyOne.append(unit)
            } else if !index.isMultiple(of: 2) && !isReverseNeeded {
                armyTwo.append(unit)
                isReverseNeeded = true
            } else if isReverseNeeded {
                if totalCount.isMultiple(of: 2) {
                    armyTwo.append(unit)
                } else {
                    armyOne.append(unit)
                    isReverseNeeded = false
                }
            }
        }
    }
    
    //MARK: - Public Methods
    
    func startWar() {
        while armyOne.count > 0 && armyTwo.count > 0 {
            let armiesZip = zip(armyOne, armyTwo)
            
            for pair in armiesZip {
                let battle = Battle(firstUnit: pair.0, secondUnit: pair.1)
                
                armyOne.removeFirst()
                armyTwo.removeFirst()
                
                battle.startBattle()
                
                if battle.firstUnit.isAlive {
                    armyOne.append(battle.firstUnit)
                } else {
                    armyTwo.append(battle.secondUnit)
                }
            }
        }
        armyTwo.count < 1 ? print("Победила первая армия!") : print("Победила вторая армия!")
    }
}
