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
    
    init(units: [Unit]) {
        var sortedUnits = units.sorted {
            if $0.healthPoints == $1.healthPoints {
                return $0.damage > $1.damage
            }
            return $0.healthPoints > $1.healthPoints
        }
        
        if !sortedUnits.isEmpty {
            
            armyOne.append(sortedUnits.first!)
            sortedUnits.removeFirst()
        
            armyTwo.append(sortedUnits.first!)
            sortedUnits.removeFirst()
        }
        
        for i in sortedUnits {
            if armyTwo.count == armyOne.count {
                armyTwo.append(i)
            } else {
                armyOne.append(i)
            }
        }
    }
    
    //MARK: - Public Methods
    
    func startWar() {
        for _ in armyOne {
            let battle = Battle(unit1: armyOne.first!, unit2: armyTwo.first!)
            let fights = [battle]
            
            for _ in fights {
                battle.startBattle()
        
                armyOne.removeFirst()
                armyTwo.removeFirst()
            }
        }
    }
}
