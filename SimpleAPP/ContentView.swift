import SwiftUI
import Just

struct ContentView: View {
    @State private var responseData: String = "Loading..."
    
    var body: some View {
        VStack {
            Text("Hello, world!")
            Text(responseData) // 添加这行来显示responseData
                .padding()
        }
        .padding()
        .onAppear {
            fetchData()
        }
    }
    
    func fetchData() {
        Just.get("http://127.0.0.1:8000/", asyncCompletionHandler: { response in
            if response.ok, let json = response.json as? [String: Any], let data = json["message"] as? String {
                DispatchQueue.main.async {
                    self.responseData = data
                }
            } else {
                DispatchQueue.main.async {
                    self.responseData = "Failed to fetch data"
                }
            }
        })
    }
}

#Preview {
    ContentView()
}
