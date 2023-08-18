import Foundation

// Define a completion handler type
typealias CompletionHandler<T> = (Result<T, Error>) -> Void

// Simulate a network request function with a completion handler
func fetchData(mycompletion123: @escaping CompletionHandler<String>) {
    DispatchQueue.global().asyncAfter(deadline: .now() + 2) {
        print("2 seconds after start")
        if Bool.random() {
            mycompletion123(.success("Data fetched successfully!"))
        } else {
            mycompletion123(.failure(NSError(domain: "com.jiffy.app", code: 1, userInfo: [NSLocalizedDescriptionKey: "user induced error"])))
        }
    }
}

// Example of using the fetchData function
fetchData { result in
    switch result {
    case .success(let fetchedData):
        print("Success: \(fetchedData)")
    case .failure(let error):
        print("Error: \(error)")
    }
}

print("After Fetch Data")

sleep(4)
