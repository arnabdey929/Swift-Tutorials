import SwiftUI

struct PredictionView: View {
    @State var predictionRisk: Risk
    
    var body: some View {
        VStack {
            RiskCard(risk: predictionRisk)
            Spacer()
        }
        .navigationTitle("Results")
        .navigationBarTitleDisplayMode(.large)
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink {
                    riskSummaryView
                } label: {
                    Image(systemName: "info.circle")
                }
            }
        }
        .trailTheme()
    }
    
    var riskSummaryView: some View {
        ScrollView {
            ForEach(Risk.allCases) {
                RiskCard(risk: $0)
            }
        }
        .trailTheme()
    }
}

#Preview {
    NavigationStack {
        PredictionView(predictionRisk: .moderate)
    }
}
