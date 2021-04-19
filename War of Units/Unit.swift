//
//  Unit.swift
//  War of Units
//
//  Created by Egor Salnikov on 20.02.2021.
//

protocol Unit {
    
    //MARK: - Protocol Properties
    
    var healthPoints: Int { get set }
    var resistanceDamageCoefficient: Int { get set }
    
    var damage: Int { get set }
    var isAlive: Bool { get }
    
    var name: String { get }
    
    var gun: String { get }
    var roar: String { get }
    
    //MARK: - Protocol Methods
    
    mutating func takeDamage(from unit: Unit)
    
    func makeBattleRoar()
    func printUnitInfo()
    
    //MARK: - Life Cycle
    
    init()
}

extension Unit {
    
    var isAlive: Bool {
        return healthPoints > 0
    }
    
    func printUnitInfo() {
        print("\(name)\nЗдоровье - \(healthPoints)\nУрон - \(damage)\nБроня - \(resistanceDamageCoefficient)\nОружие - \(gun)\n")
    }
    
    mutating func takeDamage(from unit: Unit) {
        let pureDamage = unit.damage - resistanceDamageCoefficient
        
        print("\(unit.name) наносит урон \(name) (\(pureDamage))\n")
        healthPoints -= pureDamage
    }
    
    func makeBattleRoar() {
        print("\(name) издает боевой клич - \(roar)\n")
    }
}
