import SwiftUI

struct CardButton: View {
    var id: String = "1"
    var feel: String = "Neutral"
    var estado: String = "Nada extravagante"
    var imagen: String = "Normal"
    @Binding var selectedIndex: String
    @State var degree: Double = 0
    
    var selected: Bool {
        return selectedIndex == id
    }
    
    var body: some View {
        Button(action: {
            withAnimation(.easeIn(duration: 3)) {
                selectedIndex = id
                degree += -360
            }
        }) {
            HStack {
                Text(selected ? estado : feel)
                    .font(.title)
                    .padding()
                Spacer()
                Image(imagen)
                    .resizable()
                    .frame(width: 100, height: 100)
                    .rotationEffect(.degrees(degree))
                    .onAppear {
                        if UIImage(named: imagen) == nil {
                            print("Imagen no encontrada: \(imagen)")
                        }
                    }

            }
            .frame(maxWidth: .infinity) 
            
        }
        .padding()
        .foregroundColor(.black)
        .background(
            Group {
                if selected {
                    (Color(red:250/255,green:222/255,blue:222/255))
                } else {
                    LinearGradient(gradient: Gradient(colors: [Color.green, Color.yellow, Color.orange, Color.red, Color.pink, Color.purple, Color.blue]), startPoint: .leading, endPoint: .trailing)
                }
            }
        )
        .cornerRadius(60)
    }
}
