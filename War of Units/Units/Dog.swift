//
//  Dog.swift
//  War of Units
//
//  Created by Egor Salnikov on 20.02.2021.
//

final class Dog: Unit {
    
    //MARK: - Properties
    
    var healthPoints: Int
    var resistanceDamageCoefficient: Int
    
    var damage: Int
    
    var gun: String
    var roar: String
    
    var name: String
    var isHealthPointsBoosted: Bool
    
    //MARK: - Life Cycle
    
    required init() {
        
        healthPoints = (50 ... 80).randomElement() ?? 0
        resistanceDamageCoefficient = (10 ... 15).randomElement() ?? 0
        
        gun = ["Зубы", "Лапы"].randomElement() ?? "Без оружия"
        roar = "WOOF WOOF"
        
        name = "Собака"
        
        damage = (35 ... 40).randomElement() ?? 0
        isHealthPointsBoosted = [true, false].randomElement()!
        
        prepareForBattle()
        makeBattleRoar()
        
        healthPointBoostDetect()
    }
    
    //MARK: - Public Methods
    
    func healthPointBoostDetect() {
        if isHealthPointsBoosted {
            healthPoints += (5 ... 10).randomElement() ?? 0
        }
    }
    
    func prepareForBattle() {
        print("Собака теперь готова к битве! Ее оружие - \(gun)")
    }
}
