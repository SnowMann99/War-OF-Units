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
    var name: String { get }
    
    var gun: String { get }
    var roar: String { get }
    
    //MARK: - Protocol Methods
    
    func takeDamage(from unit: Unit)
    
    func prepareForBattle()
    func makeBattleRoar()
    
    func printInfo()
    
    //MARK: - Life Cycle
    
    init()
}

extension Unit {
    
    func printInfo() {
        print(name)
        print("Здоровье - \(healthPoints)")
        
        print("Урон - \(damage)")
        print("Броня - \(resistanceDamageCoefficient)")
        
        print("Оружие - \(gun)")
        print("")
    }
    
    func takeDamage(from unit: Unit) {
        print("\(name) получает урон от \(unit.name)")
        print("")
    }
    
    func prepareForBattle() {
        print("\(name) теперь готов к битве! Его оружие - \(gun)")
    }
    
    func makeBattleRoar() {
        print("\(name) издает боевой клич - \(roar)")
        print("")
    }
}
