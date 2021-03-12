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
        
        guard !units.isEmpty else { return }
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
            let allUnits = armyOne.count + armyTwo.count
            
            if index.isMultiple(of: 2) && !isReverseNeeded {
                armyOne.append(unit)
            } else if !index.isMultiple(of: 2) && !isReverseNeeded {
                armyTwo.append(unit)
                isReverseNeeded = true
            } else if isReverseNeeded {
                if allUnits.isMultiple(of: 2) {
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
        let armies = zip(armyOne, armyTwo)
        
        while armyOne.count > 0 && armyTwo.count > 0 {
            
            for _ in armies {
                guard let firstUnit = armyOne.first, let secondUnit = armyTwo.first else { return }
                let battles = [Battle(firstUnit: firstUnit, secondUnit: secondUnit)]
            
                for battle in battles {
                    battle.startBattle()
                
                    if battle.firstUnit.isAlive {
                        print("Добавлен в первую армию")
                        armyOne.append(battle.firstUnit)
                    } else {
                        print("Добавлен во вторую армию")
                        armyTwo.append(battle.secondUnit)
                    }
                    
                    armyOne.removeFirst()
                    armyTwo.removeFirst()
                    
                }
            }
        }
    }
}
