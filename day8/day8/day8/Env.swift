//
//  Env.swift
//  day8
//
//  Created by alqattan on 07/01/2021.
//

import Foundation
import SwiftUI
class Env : ObservableObject {
    @Published var name = ""
    @Published var age = ""
    @Published var phone = ""
    @Published var ismentor = false
    
}
