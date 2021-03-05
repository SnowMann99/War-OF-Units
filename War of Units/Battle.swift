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
    
    init(unit1: Unit, unit2: Unit) {
        firstUnit = unit1
        secondUnit = unit2
    }
    
    //MARK: - Public Methods
    
    func isAliveCheck(unit: Unit) -> Bool {
        return unit.healthPoints > 0 ? true : false
    }
    
    func winnerAnnouncement() {
        let winner = [firstUnit, secondUnit].sorted { ($0.healthPoints > $1.healthPoints)}
        print("Победитель - \(winner.first!.name) (\(winner.first!.healthPoints))")
    }
    
    func startBattle() {
        while firstUnit.healthPoints > 0 && secondUnit.healthPoints > 0 {
            firstUnit.printInfo()
            secondUnit.printInfo()
            
            firstUnit.makeBattleRoar()
            
            secondUnit.takeDamage(from: firstUnit)
            secondUnit.healthPoints -= (firstUnit.damage - secondUnit.resistanceDamageCoefficient)
            
            if isAliveCheck(unit: secondUnit) {
                secondUnit.makeBattleRoar()
                firstUnit.takeDamage(from: secondUnit)
            
                firstUnit.healthPoints -= (secondUnit.damage - firstUnit.resistanceDamageCoefficient)
            } else {
                break
        }
    }
        winnerAnnouncement()
    }
}
