//
//  OnboardingViewModel.swift
//  todobase
//
//  Created by TechnoNext on 15/2/26.
//
import Foundation
import Combine

class OnboardingViewModel : ObservableObject {
    
    @Published var isOnboardingCompleted: Bool = false
    @Published var selectedIndex: Int = 0
    @Published var scale: CGFloat = 0.1
    @Published var opacity: Double = 0.1
    @Published var isOnboardingEnabled: Bool = false
    
    init() {
        
    }
    
    func changeTabPage(){
        if selectedIndex < 2 {
            selectedIndex += 1
        }
    }
}
