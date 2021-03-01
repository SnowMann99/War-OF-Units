//
//  Robot.swift
//  War of Units
//
//  Created by Egor Salnikov on 20.02.2021.
//

final class Robot: Unit {
    
    //MARK: - Properties
    
    var healthPoints: Int
    var resistanceDamageCoefficient: Int
    
    var damage: Int
    
    var gun: String
    var roar: String
    
    var name: String
    var isDamageBoosted: Bool
    
    //MARK: - Life Cycle
    
    required init() {
        healthPoints = (50 ... 100).randomElement() ?? 0
        resistanceDamageCoefficient = (1 ... 3).randomElement() ?? 0
        
        gun = ["Ракета", "Бластер"].randomElement() ?? ""
        roar = "Im going to kill you!"
        
        name = "Робот"
        
        damage = (35 ... 45).randomElement() ?? 0
        isDamageBoosted = [true, false].randomElement()!
        
        prepareForBattle()
        makeBattleRoar()
        
        damageBoostDetect()
        
    }
    
    //MARK: - Public Methods
    
    func damageBoostDetect() {
        if isDamageBoosted {
            damage += (5 ... 10).randomElement() ?? 0
        }
    }
    
}

