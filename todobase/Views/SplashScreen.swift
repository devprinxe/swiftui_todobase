//
//  SplashScreen.swift
//  todobase
//
//  Created by TechnoNext on 15/2/26.
//

import SwiftUI

struct SplashScreen: View {
    @StateObject var onboardingViewModel = OnboardingViewModel()
    
    var body: some View {
        
        if onboardingViewModel.isOnboardingEnabled{
            OnBoardScreen()
        } else {
            //MARK: Splash Screen Animation
            ZStack{
                Rectangle()
                    .foregroundColor(.brand)
                    .ignoresSafeArea()
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    Image(systemName: "swift")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .scaleEffect(onboardingViewModel.scale)
                        .opacity(onboardingViewModel.opacity)
                        .foregroundColor(.white)
                    Text("ToDoBase")
                        .font(.largeTitle)
                        .bold()
                        .foregroundColor(.white)
                        .scaleEffect(onboardingViewModel.scale)
                        .opacity(onboardingViewModel.opacity)
                }
                .task {
                    withAnimation(.easeInOut(duration: 2)){
                        onboardingViewModel.scale = 1
                        onboardingViewModel.opacity = 1
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        withAnimation{
                            onboardingViewModel.isOnboardingEnabled.toggle()
                        }
                    }
                }
            }
        }
        
    }
}

#Preview {
    SplashScreen()
}
