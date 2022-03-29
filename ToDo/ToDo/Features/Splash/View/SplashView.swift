//
//  SplashView.swift
//  Todo
//
//  Created by Francesco Paolo Dellaquila on 29/03/22.
//

import SwiftUI

struct SplashView: View {
    
    @State private var endSplash = false
    
    func delayNavigation(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            
            endSplash = true
        }
    }
    
    var body: some View {
        
        if(!endSplash){
            
            SplashContent()
                .onAppear(){
                    delayNavigation()
                }
            
        }else{
            
            DashboardView()
                .animation(.easeIn)
                .transition(.opacity)
        }
    }
    
    
    struct SplashContent: View {
        
        var body: some View {
            
            VStack{
                
                LottieView(name: "splash_loading", loopMode: .playOnce)
                    .frame(width: 300, height: 300)
             }
        }
    }
    
}


struct SplashIntro_Previews: PreviewProvider {
    static var previews: some View {
        
        SplashView()
            .preferredColorScheme(.light)
    }
}
