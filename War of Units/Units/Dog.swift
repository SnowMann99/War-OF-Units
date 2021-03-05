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
        healthPoints = (70 ... 75).randomElement() ?? 0
        resistanceDamageCoefficient = (6 ... 12).randomElement() ?? 0
        
        gun = ["Зубы", "Лапы"].randomElement() ?? "Без оружия"
        roar = "WOOF WOOF"
        
        name = "Собака 🐕"
        
        damage = (20 ... 25).randomElement() ?? 0
        isHealthPointsBoosted = [true, false].randomElement()!
        
        healthPointBoostDetect()
    }
    
    //MARK: - Public Methods
    
    func healthPointBoostDetect() {
        if isHealthPointsBoosted {
            damage += (5 ... 10).randomElement() ?? 0
        }
    }
    
    func prepareForBattle() {
        print("Собака теперь готова к битве! Ее оружие - \(gun)")
    }
}
