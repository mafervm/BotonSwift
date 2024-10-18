import SwiftUI

struct Feeling {
    var id: String
    var feel: String
    var estado: String
    var imagen: String
}

struct ContentView: View {
    @State var index: String = "0"
    
    var body: some View {
        let feels = [
            Feeling(id: "1",feel: "Neutral",  estado: "Nada extravagante", imagen: "Normal"),
            Feeling(id: "2",feel: "Feliz",  estado: "Fue un buen día", imagen: "Happy"),
            Feeling(id: "3",feel: "Más o menos",  estado: "Día un poco difícil",imagen: "Mid"),
            Feeling(id: "4",feel: "No preguntes",  estado: "Pésimo día",imagen: "Mad"),
        ]
        VStack {
            Text("¿Cómo estas hoy?")
                .fontWeight(.bold)
                .font(.system(size: 24))
            List {
                ForEach(feels, id: \.self.id) {
                    item in CardButton(id: item.id, feel: item.feel, estado: item.estado, imagen: item.imagen, selectedIndex: $index)
                }
            }
            
        }
        .padding()
    }
}

/*struct ContentView: View {
    //@State var select: Bool 
    var body: some View {
        
        Button(action: {
            print("click")
        }){
            HStack() {
                Image(systemName: "cursorarrow.rays")
                Text("Facil")
                    .frame(maxWidth: 250)
                    .foregroundColor(.white)
                    .padding(10)
                    .background(LinearGradient(gradient: Gradient(colors: [Color.blue,Color.purple, Color.pink, Color.red, Color.orange, Color.yellow, Color.green]), startPoint: .leading, endPoint: .trailing))
                    .font(.title)
                    .cornerRadius(30)
                    .padding()
            }
        }.buttonStyle(.borderedProminent)
            .clipShape(Capsule())
        
        
        VStack {
            Button(action: {
                withAnimation(
                    .easeIn(duration: 0.3)){
                        //select.toggle()
                    }
            }){
                Text("Facil")
                    .frame(maxWidth: 250)
                    .foregroundColor(.white)
                    .padding(10)
                    .background(LinearGradient(gradient: Gradient(colors: [Color.blue,Color.purple, Color.pink, Color.red, Color.orange, Color.yellow, Color.green]), startPoint: .leading, endPoint: .trailing))
                    .font(.title)
                    .cornerRadius(30)
                    .padding()
            }
            VStack{
                Button(action: {
                }){
                    Text("Normal")
                        .frame(maxWidth: 250)
                        .foregroundColor(.white)
                        .padding(10)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.green,Color.yellow, Color.orange, Color.red, Color.pink, Color.purple, Color.blue]), startPoint: .leading, endPoint: .trailing))
                        .font(.title)
                        .cornerRadius(30)
                        .padding()
                }
            }
            VStack{
                Button(action: {
                }){
                    Text("Dificil")
                        .frame(maxWidth: 250)
                        .foregroundColor(.white)
                        .padding(10)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.blue,Color.purple, Color.pink, Color.red, Color.orange, Color.yellow, Color.green]), startPoint: .leading, endPoint: .trailing))
                        .font(.title)
                        .cornerRadius(30)
                        .padding()
                }
            }
            VStack{
                Button(action: {
                }){
                    Text("Extremo")
                        .frame(maxWidth: 250)
                        .foregroundColor(.white)
                        .padding(10)
                        .background(LinearGradient(gradient: Gradient(colors: [Color.green,Color.yellow, Color.orange, Color.red, Color.pink, Color.purple, Color.blue]), startPoint: .leading, endPoint: .trailing))
                        .font(.title)
                        .cornerRadius(30)
                        .padding()
                }
            }
        }
    }
}*/
/*var body: some View {
    //VStack {
        Image(systemName: "arrow.right")
            .font(.title)
            .foregroundColor(.orange)
            .rotationEffect(
                .degrees(degrees)
            )
            .padding()
            .background(Color(.indigo))
            .border(Color.indigo)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .shadow(color: Color.white ,radius: 20)
            .scaleEffect(clics ? 2.0 : 1.0)
            .opacity(0.8)
            .padding()
        Text("Ha girado: \(Int(degrees)) grados")
        Text ("Ha dado  \(getdegrees(totalDegrees: degrees))")
        Button(action: {
            withAnimation(
                .easeIn(duration: 0.3)){
                    degrees += 900
                    changeSize()
                }
        }){
            Text("Spin")
        } .padding()
            .foregroundColor(.pink)
            .background(Color.yellow)
    }
}
}*/
