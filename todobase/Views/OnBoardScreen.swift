//
//  OnBoardScreen.swift
//  todobase
//
//  Created by TechnoNext on 15/2/26.
//

import SwiftUI

struct OnBoardScreen: View {
    @StateObject var onboardingViewModel = OnboardingViewModel()
    var body: some View {
        NavigationStack{
            VStack {
                TabView(selection: $onboardingViewModel.selectedIndex) {
                    OnboardItem(
                        title: "Welcome To Todo Base", subtitle: "Manage your busy life with ease because Todobase is at your service 24/7. Make sure you allow the notification permission to update you on time", image: "onboard1",
                    )
                    .tag(0)
                    OnboardItem(
                        title: "Schedule your tasks", subtitle: "Manage your busy life with ease because Todobase is at your service 24/7. Make sure you allow the notification permission to update you on time", image: "onboard2",
                    )
                    .tag(1)
                    OnboardItem(
                        title: "Chase your goals", subtitle: "Manage your busy life with ease because Todobase is at your service 24/7. Make sure you allow the notification permission to update you on time", image: "onboard3",
                    )
                    .tag(2)
                }
                .tabViewStyle(.page(indexDisplayMode: .always))
                .indexViewStyle(.page(backgroundDisplayMode: .always))
                .padding()
                if onboardingViewModel.selectedIndex == 2 {
                    NavigationLink(destination: HomeView()){
                        Text("Get Started")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .background(.brand)
                            .frame(maxWidth: 300)
                            .cornerRadius(8)
                            .padding()
                    }
                    .navigationBarHidden(true)
                } else {
                    CommonButton(
                        title: "Next",
                        action: onboardingViewModel.changeTabPage
                    )
                    .padding()
                }
            }
        }
    }
}

#Preview {
    OnBoardScreen()
}
