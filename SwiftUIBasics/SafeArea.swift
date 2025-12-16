import SwiftUI

struct SafeArea: View {
    var body: some View {
        ZStack {
            
            // Background fills the entire screen (including Dynamic Island)
            Color.yellow
//                .ignoresSafeArea()
//            
            // Foreground content respects safe area
            VStack {
                Text("Hello, World!")
                
                    .foregroundColor(.blue)
                    .font(.title)
                

            }

            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        }
        .background(Color.red)
    }
}

struct SafeArea_Previews: PreviewProvider {
    static var previews: some View {
        SafeArea()
    }
}

