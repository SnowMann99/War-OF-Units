//
//  Spawn.swift
//  War of Units
//
//  Created by Egor Salnikov on 20.02.2021.
//

class Spawn {
    
    func generateUnits(count: Int) -> [Unit] {
        var spawnedUnits: [Unit] = []
        
        for _ in 1 ... count {
            let types: [Unit.Type] = [Dog.self, Human.self, Robot.self, Jedi.self]

            if let randomType = types.randomElement() {
                let unit = randomType.init()
                spawnedUnits.append(unit)
            }
        }
        
        return spawnedUnits
    }
    
}
