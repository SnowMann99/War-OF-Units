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
        healthPoints = (85 ... 100).randomElement() ?? 0
        resistanceDamageCoefficient = (7 ... 10).randomElement() ?? 0
        
        gun = ["Ракета", "Бластер"].randomElement() ?? ""
        roar = "Im going to kill you!"
        
        name = "Робот 🤖"
        
        damage = (20 ... 30).randomElement() ?? 0
        isDamageBoosted = [true, false].randomElement()!
        
        damageBoostDetect()
        
    }
    
    //MARK: - Public Methods
    
    func damageBoostDetect() {
        if isDamageBoosted {
            damage += (1 ... 5).randomElement() ?? 0
        }
    }
    
}

