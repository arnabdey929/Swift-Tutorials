import SwiftUI

struct ContentView: View {
    @State private var trailInfo = TrailInfo()
    
    var body: some View {
        NavigationStack {
            ScrollView {
                HStack {
                    Text("Enter the data about your upcoming hike")
                        .font(.subheadline)
                        .bold()
                    Spacer()
                }
                .padding(.bottom)
                
                TrailInfoView(trailInfo: $trailInfo)
                
                NavigationLink {
                    let analyser = TrailAnalyser()
                    let risk = analyser.predictRisk(trailInfo: trailInfo)
                    PredictionView(predictionRisk: risk)
                } label: {
                    Text("Submit")
                        .font(.headline)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(.tint, in: RoundedRectangle(cornerRadius: 12))
                        .foregroundStyle(.white)
                }
            }
            .navigationTitle("Trail Analyser")
            .scrollDismissesKeyboard(.interactively)
            .trailTheme()
        }
        .tint(Color.trailTheme)
        .onAppear {
            trailInfo = .sample
        }
    }
}

#Preview {
    ContentView()
}
