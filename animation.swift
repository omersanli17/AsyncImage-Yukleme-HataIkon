        AsyncImage(url: URL(string: imageURL), transaction: Transaction(animation: .spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.25))){
            phase in
            switch phase {
            case .success(let image):
                image.GorselDegistir()
                 // .transition(.move(edge: .bottom))
                 // .transition(.slide)
                    .transition(.scale)
            case .failure(_):
                Image(systemName: "ant.circle.fill")
                    .iconDegistir()
            case .empty:
                Image(systemName: "photo.circle.fill")
                    .iconDegistir()
            @unknown default:
                ProgressView()
            }
            
        }.padding(40)
