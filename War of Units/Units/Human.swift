//
//  Human.swift
//  War of Units
//
//  Created by Egor Salnikov on 24.02.2021.
//

final class Human: Unit {
    
    //MARK: - Properties
    
    var healthPoints: Int
    var resistanceDamageCoefficient: Int
    
    var damage: Int
    
    var gun: String
    var roar: String
    
    var name: String
    var isResistanceBoosted: Bool
    
    //MARK: - Life Cycle
    
    required init() {
        healthPoints = (75 ... 100).randomElement() ?? 0
        resistanceDamageCoefficient = (5 ... 10).randomElement() ?? 0
        
        gun = ["Пистолет", "Автомат"].randomElement() ?? ""
        roar = "Рядовой Куча прибыл!"
        
        name = "Человек 🙎🏻‍♂️"
        
        isResistanceBoosted = [false, true].randomElement()!
        damage = (20 ... 25).randomElement() ?? 0
        
        resistanceBoostDetect()
    }
    
    //MARK: - Public Methods
    
    func resistanceBoostDetect() {
        if isResistanceBoosted {
            resistanceDamageCoefficient += (1 ... 3).randomElement() ?? 0
        }
    }
}
