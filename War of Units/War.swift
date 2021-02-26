//
//  War.swift
//  War of Units
//
//  Created by Egor Salnikov on 26.02.2021.
//

class War {
    
    init(units: [Unit]) {
        print(units.map {$0.healthPoints})
    }
    
}
