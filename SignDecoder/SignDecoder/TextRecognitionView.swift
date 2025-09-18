import SwiftUI

struct TextRecognitionView: View {
    let imageResource: ImageResource
    let boundingColour = Color(red: 1.00, green: 0.00, blue: 0.85)
    @State private var textRecogniser: TextRecogniser?
    
    var body: some View {
        VStack {
            Image(imageResource)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .task {
                    textRecogniser = await TextRecogniser(imageResource: imageResource)
                }
                .overlay {
                    if let observations = textRecogniser?.observations {
                        ForEach(observations, id: \.uuid) { observation in
                            BoundsRect(normalisedRect: observation.boundingBox)
                                .stroke(boundingColour, lineWidth: 3)
                        }
                    }
                }
            Spacer()
            
            TranslationView(text: textRecogniser?.recognisedText ?? "", isProcessing: isProcessing)
        }
        .padding()
        .trailTheme()
        .navigationTitle("Sign Info")
    }
    
    private var isProcessing: Bool {
        textRecogniser == nil
    }
}

#Preview {
    NavigationStack {
        TextRecognitionView(imageResource: .sign1)
            .navigationBarTitleDisplayMode(.inline)
    }
}
