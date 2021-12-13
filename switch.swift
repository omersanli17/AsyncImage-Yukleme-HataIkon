import SwiftUI

extension Image {
    
    func GorselDegistir() -> some View {
        self
            .resizable()
            .scaledToFit()
    }
    
    
    func iconDegistir() -> some View {
        self
        .resizable()
        .scaledToFit()
        .frame(maxWidth: 60)
        .foregroundColor(.green)
        .opacity(0.5)
        
    }
    
}

private let imageURL: String = "https://lh3.googleusercontent.com/Z_NNZ84NGq5RJ20qdtbKTo6svZjB3CxXEwC8l2lSh96hIkpNYg8JtXw8-xPhMKBMCjt3MHadeJkaRhNnheH39yCfCeFqndRjKAbvlg=w600"


struct ContentView: View {
    
    
    var body: some View{

        AsyncImage(url: URL(string: imageURL)){
            phase in
            switch phase {
            case .success(let image):
                image.GorselDegistir()
            case .failure(_):
                Image(systemName: "ant.circle.fill")
                    .iconDegistir()
            case .empty:
                Image(systemName: "photo.circle.fill")
                    .iconDegistir()
            }
            
        }.padding(40)
        
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}
