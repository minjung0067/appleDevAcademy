import Foundation
import SwiftUI

struct ExpandView : View {
    
    @Binding var data : todayCapsule
    @Binding var show : Bool
    
    let backgroundColor: LinearGradient = LinearGradient(gradient: Gradient(colors: [Color.white.opacity(1), Color.gray.opacity(0.4)]), startPoint: .topLeading, endPoint: .bottom)
    
    var body: some View{
        backgroundColor
            .edgesIgnoringSafeArea(.all)
        
        VStack(spacing: 20){
            
            // dismiss Button...
            
            ZStack(alignment: .center) {
                
//                Image(self.data.image)
//                .resizable()
//                .cornerRadius(25)
                
            }
            
            VStack(alignment: .leading, spacing: 20){
                
                Text("\(self.data.owner)의 하루")
                    .font(.custom("KCC-Ganpan", size: 30))
                    .font(.title)
                    .fontWeight(.bold)
                
                Text(self.data.text)
                    .font(.custom("KCC-Ganpan", size: 15))
                    .foregroundColor(.black)
                    .opacity(0.6)
            }
            .padding(.horizontal,40)
            .padding(.bottom,20)
            .foregroundColor(.black)
            .padding(.top)

            Button(action: {
                
                // dismissing the expand view...
                
                withAnimation{
                    
                    self.show.toggle()
                }
                
            }) {
                
                Image(systemName: "xmark")
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.orange.opacity(0.7))
                    .clipShape(Circle())
            }
            .padding(.trailing)
            .padding(.bottom, (UIApplication.shared.windows.first?.safeAreaInsets.top)! + 10)
            
            
        }
        .foregroundColor(.black)
        .padding(.top)
        
    }
}
