# 📌 SwiftUI
**SwiftUI** is a modern framework developed by Apple for building user interfaces across all Apple platforms, including iOS, macOS, watchOS, and tvOS. It was introduced in 2019 as a more intuitive and declarative way to design apps compared to the older UIKit and AppKit frameworks.

### Key Features of SwiftUI:

- **Declarative Syntax**: You describe what the UI should do, and SwiftUI takes care of the how. For example:
  ```swift
  Text("Hello, world!")
      .font(.title)
      .foregroundColor(.blue)
  ```

- **Live Previews**: SwiftUI works seamlessly with Xcode to show real-time previews of your UI as you code.

- **Cross-Platform**: You can write one codebase that works across iPhone, iPad, Mac, Apple Watch, and Apple TV.

- **State Management**: SwiftUI uses property wrappers like `@State`, `@Binding`, and `@ObservedObject` to manage UI state reactively.

- **Integration with Swift**: It’s built entirely in Swift, making it safe, fast, and modern.

- **Animations and Transitions**: SwiftUI makes it easy to add smooth animations and transitions with minimal code.




# 📌 View
In **SwiftUI**, a **View** is a fundamental building block of your app’s user interface. Everything you see on the screen—buttons, text, images, lists, and even entire screens—is a **View**.

---

### 🧱 What is a View in SwiftUI?

A **View** is a struct that conforms to the `View` protocol and describes part of your app’s UI. It’s **declarative**, meaning you describe *what* the UI should look like, and SwiftUI takes care of rendering it.

---

### 📦 Example of a Simple View

```swift
struct GreetingView: View {
    var body: some View {
        Text("Hello, SwiftUI!")
            .font(.title)
            .padding()
    }
}
```

- `GreetingView` is a custom view.
- `body` returns a view hierarchy (in this case, a `Text` view).
- SwiftUI uses this to render the UI.

---

### 🧩 Common Built-in Views

| View Type     | Description                          |
|---------------|--------------------------------------|
| `Text`        | Displays a string of text            |
| `Image`       | Shows an image                       |
| `Button`      | A tappable button                    |
| `List`        | A scrollable list of items           |
| `VStack`      | Vertically stacks views              |
| `HStack`      | Horizontally stacks views            |
| `ZStack`      | Overlays views on top of each other  |
| `NavigationView` | Adds navigation capabilities     |
| `Form`        | Groups controls for data entry       |

---

### 🧠 Key Concepts

- **Composable**: Views can be nested and reused.
- **Declarative**: You describe the UI, not how to draw it.
- **Reactive**: Views update automatically when data changes.



# Declarative Syntax

In **SwiftUI**, a **declarative syntax** means you describe **what** the user interface should look like and **how it behaves**, rather than **how to construct it step by step**. This is a major shift from the **imperative** style used in UIKit.

---

## 🧾 Declarative vs Imperative

| Style         | Description |
|---------------|-------------|
| **Imperative** | You tell the system *how* to do things (e.g., create a button, set its frame, add it to a view). |
| **Declarative** | You describe *what* the UI should look like based on the current state. SwiftUI handles the rest. |

---

## 🧩 Declarative Syntax Example

```swift
struct WelcomeView: View {
    var body: some View {
        VStack {
            Text("Welcome!")
                .font(.largeTitle)
            Button("Continue") {
                print("Button tapped")
            }
        }
    }
}
```

- You’re not telling SwiftUI how to lay out the views manually.
- You’re declaring a **hierarchy of views** (`VStack`, `Text`, `Button`) and their **properties**.
- SwiftUI figures out the layout and rendering.

---

## 🔄 Why Declarative?

- **Simplifies UI updates**: When state changes, SwiftUI automatically updates the UI.
- **Less boilerplate**: No need to manually manage view lifecycles or constraints.
- **More readable**: Code closely matches the visual structure of the UI.

---

## 🧠 Key Concepts in Declarative SwiftUI

- **State-driven UI**: UI reflects the current state (`@State`, `@Binding`, etc.).
- **View composition**: Build complex UIs by combining smaller views.
- **Modifiers**: Chain view modifiers to customize appearance and behavior.

---



# 📌 Composition

In **SwiftUI**, **composition** refers to the practice of **building complex user interfaces by combining smaller, reusable views**. It’s a core concept in SwiftUI’s declarative design philosophy.

---

### 🧱 What is View Composition?

Instead of creating one large view with all the UI logic, you **break it down into smaller, focused views** and then **compose** them together.

---

### 🧩 Example

```swift
struct ProfileView: View {
    var body: some View {
        VStack {
            ProfileImage()
            ProfileDetails()
            FollowButton()
        }
    }
}

struct ProfileImage: View {
    var body: some View {
        Image(systemName: "figure.archery")
            .resizable()
            .frame(width: 100, height: 100)
            .clipShape(Circle())
    }
}

struct ProfileDetails: View {
    var body: some View {
        VStack {
            Text("Jane Doe").font(.headline)
            Text("iOS Developer").font(.subheadline)
        }
    }
}

struct FollowButton: View {
    var body: some View {
        Button("Follow") {
            print("Followed!")
        }
        .buttonStyle(.borderedProminent)
    }
}
```

Here:
- `ProfileView` is composed of three smaller views: `ProfileImage`, `ProfileDetails`, and `FollowButton`.
- Each subview is **independent**, **reusable**, and **testable**.

---

### ✅ Benefits of Composition

- **Reusability**: Use the same view in multiple places.
- **Readability**: Smaller views are easier to understand.
- **Maintainability**: Easier to update or debug.
- **Testability**: Smaller units are easier to test.


# State Management

In **SwiftUI**, state management is essential for building dynamic, reactive user interfaces. SwiftUI provides several **property wrappers** to manage and share state across views. Here's a breakdown of how **state flows** and the different **state annotations** you can use:

---

## 🔄 How State Flows in SwiftUI

State flows **from parent to child** views. When a state value changes, SwiftUI **automatically re-renders** the affected views.

### 🧭 Typical Flow:
1. **@State**: Local state in a view.
2. **@Binding**: Passes a reference to a `@State` variable to a child view.
3. **@ObservedObject**: Observes an external object that conforms to `ObservableObject`.
4. **@EnvironmentObject**: Shares state across many views via the environment.
5. **@StateObject**: Owns and initializes an observable object in a view.

---

## 🧩 State Annotations Explained

| Annotation         | Scope                     | Ownership         | Use Case |
|--------------------|---------------------------|-------------------|----------|
| `@State`           | Local to a single view     | View owns it      | Simple, local state like toggles, counters |
| `@Binding`         | Passed from parent         | Parent owns it    | Child view modifies parent’s state |
| `@StateObject`     | Local to a view            | View owns it      | First-time creation of observable object |
| `@ObservedObject`  | Passed from parent         | Parent owns it    | View observes external object |
| `@EnvironmentObject` | Global/shared via environment | System owns it | App-wide shared data like user settings |

---

## 🧠 Example Flow

```swift
class CounterModel: ObservableObject {
    @Published var count = 0
}

struct ParentView: View {
    @StateObject var model = CounterModel()

    var body: some View {
        ChildView(model: model)
    }
}

struct ChildView: View {
    @ObservedObject var model: CounterModel

    var body: some View {
        VStack {
            Text("Count: \(model.count)")
            Button("Increment") {
                model.count += 1
            }
        }
    }
}
```

- `ParentView` owns the model using `@StateObject`.
- `ChildView` observes it using `@ObservedObject`.
- When `count` changes, both views update as needed.

---

In **SwiftUI**, `@State` is a **property wrapper** used to declare **local, mutable state** inside a view. It allows SwiftUI to **track changes** to that value and **automatically update the UI** when the value changes.

---

## 🧠 What Does `@State` Do?

- It **stores a value** that belongs to the view.
- When the value changes, SwiftUI **re-renders** the view.
- It’s used for **simple, view-local state**, like toggles, counters, or text input.

---

## 🧩 Example

```swift
struct CounterView: View {
    @State private var count = 0

    var body: some View {
        VStack {
            Text("Count: \(count)")
            Button("Increment") {
                count += 1
            }
        }
    }
}
```

### 🔍 What’s Happening:
- `@State private var count = 0`: Declares a state variable.
- When the button is tapped, `count` increases.
- SwiftUI **detects the change** and **rebuilds the view** to show the new count.

---

## ✅ Key Characteristics of `@State`

| Feature | Description |
|--------|-------------|
| **Local** | Only used within the view it’s declared in. |
| **Private** | Typically marked `private` to prevent external access. |
| **Persistent** | SwiftUI keeps the value even when the view is re-rendered. |
| **Triggers UI updates** | Changing the value causes the view to refresh. |

---

## ⚠️ When *Not* to Use `@State`

- When the state needs to be **shared** with other views → use `@Binding`, `@ObservedObject`, or `@EnvironmentObject`.
- When the state is **complex or long-lived** → use `@StateObject` or `@ObservedObject`.

---

In **SwiftUI**, `@Binding` is a property wrapper used to **create a two-way connection** between a parent view’s state and a child view. It allows the child view to **read and write** to a value that is owned by the parent.

---

## 🔄 What Does `@Binding` Do?

- It **binds** a variable in a child view to a `@State` variable in the parent.
- When the child view **modifies** the value, the change is **reflected in the parent**.
- It’s used for **shared, mutable state** between views.

---

## 🧩 Example

### Parent View

```swift
struct ParentView: View {
    @State private var isOn = false

    var body: some View {
        ToggleView(isOn: $isOn)
    }
}
```

### Child View

```swift
struct ToggleView: View {
    @Binding var isOn: Bool

    var body: some View {
        Toggle("Enable Feature", isOn: $isOn)
    }
}
```

### 🔍 What’s Happening:
- `ParentView` owns the `@State` variable `isOn`.
- It passes a **binding** (`$isOn`) to `ToggleView`.
- `ToggleView` uses `@Binding` to access and modify the value.
- Changes in the toggle update the parent’s state.

---

## ✅ When to Use `@Binding`

- When a **child view needs to modify** a value owned by its parent.
- For **form inputs**, **toggles**, **sliders**, or any control that updates shared state.

---

## ⚠️ Key Notes

| Feature | Description |
|--------|-------------|
| **Two-way binding** | Child can read and write the value. |
| **No ownership** | The child does not own the data—it just accesses it. |
| **Requires $ prefix** | Use `$` to pass a binding from a `@State` variable. |

---


In **SwiftUI**, `@StateObject` is a property wrapper used to **create and own an instance of a reference type** that conforms to the `ObservableObject` protocol. It’s designed for managing **complex, long-lived state** like view models or data controllers.

---

## 🧠 What Does `@StateObject` Do?

- It **initializes and owns** an observable object.
- SwiftUI **tracks changes** to any `@Published` properties inside the object.
- When those properties change, SwiftUI **automatically re-renders** the view.

---

## 🧩 Example

```swift
class CounterModel: ObservableObject {
    @Published var count = 0
}

struct CounterView: View {
    @StateObject private var model = CounterModel()

    var body: some View {
        VStack {
            Text("Count: \(model.count)")
            Button("Increment") {
                model.count += 1
            }
        }
    }
}
```

### 🔍 What’s Happening:
- `CounterModel` is a class that conforms to `ObservableObject`.
- `@Published` makes `count` observable.
- `@StateObject` tells SwiftUI to **create and manage** the model’s lifecycle.
- When `count` changes, the view updates.

---

## ✅ When to Use `@StateObject`

- When the view **creates** the observable object.
- When the view is the **owner** of the object’s lifecycle.
- For **view models** in MVVM architecture.

---

## ⚠️ When *Not* to Use `@StateObject`

- Don’t use it in child views that **receive** the object from a parent — use `@ObservedObject` instead.
- Don’t use it for **simple, local state** — use `@State`.

---

## 🧾 Summary Table

| Property Wrapper | Ownership | Use Case |
|------------------|-----------|----------|
| `@StateObject`   | View owns and creates the object | View model or controller |
| `@ObservedObject`| View receives the object | Shared object from parent |
| `@State`         | View owns a simple value | Local, simple state |

---

In **SwiftUI**, `@ObservedObject` is a property wrapper used to **observe an external reference type** (usually a view model or data controller) that conforms to the `ObservableObject` protocol. It allows a view to **respond to changes** in that object’s data.

---

## 🧠 What Does `@ObservedObject` Do?

- It **subscribes** to an object that conforms to `ObservableObject`.
- When any of the object’s `@Published` properties change, the view **automatically re-renders**.
- The view **does not own** the object—it just observes it.

---

## 🧩 Example

```swift
class TimerModel: ObservableObject {
    @Published var time = 0
}

struct TimerView: View {
    @ObservedObject var model: TimerModel

    var body: some View {
        Text("Time: \(model.time)")
    }
}
```

### 🔍 What’s Happening:
- `TimerModel` is a class with a `@Published` property.
- `TimerView` observes it using `@ObservedObject`.
- When `time` changes, `TimerView` updates automatically.

---

## ✅ When to Use `@ObservedObject`

- When a view **receives** an observable object from a parent.
- When you want to **react to changes** in shared data without owning it.

---

## ⚠️ When *Not* to Use `@ObservedObject`

- Don’t use it to **create** the object—use `@StateObject` for that.
- Don’t use it for **simple local state**—use `@State`.

---

## 🧾 Summary Table

| Property Wrapper | Ownership | Use Case |
|------------------|-----------|----------|
| `@StateObject`   | View owns and creates the object | View model or controller |
| `@ObservedObject`| View receives the object | Shared object from parent |
| `@State`         | View owns a simple value | Local, simple state |

---

In **SwiftUI**, `@EnvironmentObject` is a property wrapper used to **inject shared data** into a view hierarchy from the environment. It allows you to **share state across many views** without explicitly passing it through every view initializer.

---

## 🌍 What is `@EnvironmentObject`?

- It’s used for **global or app-wide state**.
- The object must conform to `ObservableObject`.
- Views that use it **automatically update** when the object’s `@Published` properties change.

---

## 🧩 Example

### Shared Data Model

```swift
class UserSettings: ObservableObject {
    @Published var username: String = "Guest"
}
```

### Root View (Injecting the Object)

```swift
@main
struct MyApp: App {
    var settings = UserSettings()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(settings)
        }
    }
}
```

### Child View (Accessing the Object)

```swift
struct ContentView: View {
    @EnvironmentObject var settings: UserSettings

    var body: some View {
        Text("Hello, \(settings.username)!")
    }
}
```

---

## ✅ When to Use `@EnvironmentObject`

- When you need to **share data across many views**.
- When passing data manually would be **cumbersome**.
- For **global settings**, **user preferences**, **authentication state**, etc.

---

## ⚠️ Important Notes

| Feature | Description |
|--------|-------------|
| **Must be injected** | Use `.environmentObject()` in a parent view or `@main` app struct. |
| **Crashes if missing** | If a view uses `@EnvironmentObject` but it’s not injected, the app will crash. |
| **ObservableObject required** | The object must conform to `ObservableObject` and use `@Published` for properties. |

---

# 📌 MVVM

The **MVVM (Model-View-ViewModel)** architecture is a design pattern commonly used in **SwiftUI** and other UI frameworks to separate concerns and improve code organization, testability, and scalability.

---

## 🧱 MVVM Components

### 1. **Model**
- Represents the **data** and **business logic**.
- Usually plain Swift structs or classes.
- Doesn’t know anything about the UI.

```swift
struct User {
    var name: String
    var age: Int
}
```

---

### 2. **View**
- The **UI layer** that displays data.
- Declares what the UI should look like.
- Binds to the ViewModel for data and actions.

```swift
struct UserView: View {
    @ObservedObject var viewModel: UserViewModel

    var body: some View {
        Text("Name: \(viewModel.user.name)")
    }
}
```

---

### 3. **ViewModel**
- Acts as a **bridge** between the View and the Model.
- Holds the state and logic for the View.
- Uses `@Published` to notify the View of changes.

```swift
class UserViewModel: ObservableObject {
    @Published var user = User(name: "Alice", age: 30)

    func updateName(to newName: String) {
        user.name = newName
    }
}
```

---

## 🔄 How MVVM Works in SwiftUI

1. **Model** holds the data.
2. **ViewModel** manages the data and exposes it to the View.
3. **View** observes the ViewModel and updates automatically when data changes.

---

## ✅ Benefits of MVVM

- **Separation of concerns**: UI, logic, and data are clearly separated.
- **Testability**: ViewModels can be tested independently of the UI.
- **Reusability**: Views and ViewModels can be reused across the app.
- **Scalability**: Easier to manage as the app grows.

---

Here’s a complete **MVVM (Model-View-ViewModel)** implementation in **SwiftUI** using a **Joke API** with a **service layer**, along with detailed explanations for each component.

---

## 🧱 1. Model – `Joke.swift`

```swift
import Foundation

struct Joke: Codable, Identifiable {
    let id: String
    let joke: String
}
```

### ✅ Explanation:
- `Codable`: Allows the model to be encoded/decoded from JSON.
- `Identifiable`: Makes it easier to use in SwiftUI lists or views.
- The API returns a joke with an `id` and `joke` string.

---

## 🌐 2. Service – `JokeService.swift`

```swift
import Foundation

protocol JokeServiceProtocol {
    func fetchJoke(completion: @escaping (Result<Joke, Error>) -> Void)
}

class JokeService: JokeServiceProtocol {
    func fetchJoke(completion: @escaping (Result<Joke, Error>) -> Void) {
        guard let url = URL(string: "https://icanhazdadjoke.com/") else {
            completion(.failure(URLError(.badURL)))
            return
        }

        var request = URLRequest(url: url)
        request.setValue("application/json", forHTTPHeaderField: "Accept")

        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }

            guard let data = data else {
                completion(.failure(URLError(.badServerResponse)))
                return
            }

            do {
                let joke = try JSONDecoder().decode(Joke.self, from: data)
                completion(.success(joke))
            } catch {
                completion(.failure(error))
            }
        }.resume()
    }
}
```

### ✅ Explanation:
- `JokeServiceProtocol`: Defines a contract for fetching jokes.
- `JokeService`: Implements the protocol using `URLSession`.
- Sets the `Accept` header to `"application/json"` to get a JSON response.
- Uses a completion handler with `Result` to handle success/failure.

---

## 🧠 3. ViewModel – `JokeViewModel.swift`

```swift
import Foundation

class JokeViewModel: ObservableObject {
    @Published var jokeText: String = "Loading..."
    private let service: JokeServiceProtocol

    init(service: JokeServiceProtocol = JokeService()) {
        self.service = service
        fetchJoke()
    }

    func fetchJoke() {
        service.fetchJoke { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let joke):
                    self?.jokeText = joke.joke
                case .failure:
                    self?.jokeText = "Failed to load joke."
                }
            }
        }
    }
}
```

### ✅ Explanation:
- `ObservableObject`: Allows the view to observe changes.
- `@Published`: Updates the UI when `jokeText` changes.
- `fetchJoke()`: Calls the service and updates the UI on the main thread.

---

## 🖼️ 4. View – `ContentView.swift`

```swift
import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = JokeViewModel()

    var body: some View {
        VStack(spacing: 20) {
            Text(viewModel.jokeText)
                .font(.title2)
                .padding()

            Button("Get Another Joke") {
                viewModel.fetchJoke()
            }
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .cornerRadius(10)
        }
        .padding()
    }
}
```

### ✅ Explanation:
- `@StateObject`: Initializes and observes the `JokeViewModel`.
- Displays the joke and a button to fetch a new one.
- UI updates automatically when `jokeText` changes.

---

## 🚀 5. App Entry – `YourAppNameApp.swift`

```swift
import SwiftUI

@main
struct YourAppNameApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
```

### ✅ Explanation:
- Entry point of the app.
- Loads `ContentView` into the main window.

---
# Navigation
Here’s a clear explanation of **navigation in SwiftUI** with code examples using the modern `NavigationStack` and `NavigationLink`.

---

## 🧭 Basic Navigation with `NavigationStack`

### ✅ Code Example:

```swift
import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationStack {
            VStack(spacing: 20) {
                Text("Welcome to the Home View")
                    .font(.title)

                NavigationLink("Go to Detail View") {
                    DetailView()
                }
            }
            .navigationTitle("Home")
        }
    }
}

struct DetailView: View {
    var body: some View {
        Text("This is the Detail View")
            .font(.title2)
            .navigationTitle("Detail")
    }
}
```

### 🔍 Explanation:
- `NavigationStack`: Manages a stack of views.
- `NavigationLink`: Creates a tappable link to navigate to another view.
- `.navigationTitle`: Sets the title in the navigation bar.

---

## 🧠 Navigation with Data Passing

You can pass data to the destination view using `NavigationLink`.

### ✅ Code Example:

```swift
struct HomeView: View {
    var body: some View {
        NavigationStack {
            NavigationLink("Show Joke", value: "Why don't scientists trust atoms? Because they make up everything!")
                .navigationDestination(for: String.self) { joke in
                    JokeDetailView(joke: joke)
                }
                .navigationTitle("Jokes")
        }
    }
}

struct JokeDetailView: View {
    let joke: String

    var body: some View {
        Text(joke)
            .padding()
            .navigationTitle("Joke")
    }
}
```

### 🔍 Explanation:
- `NavigationLink(value:)`: Triggers navigation with a value.
- `navigationDestination(for:)`: Defines the destination view for a specific data type.

---

## 🔄 Programmatic Navigation with State

You can control navigation using a `@State` variable.

### ✅ Code Example:

```swift
struct HomeView: View {
    @State private var isDetailActive = false

    var body: some View {
        NavigationStack {
            VStack {
                Button("Go to Detail") {
                    isDetailActive = true
                }

                NavigationLink(destination: DetailView(), isActive: $isDetailActive) {
                    EmptyView()
                }
            }
            .navigationTitle("Home")
        }
    }
}
```

### 🔍 Explanation:
- `@State`: Tracks whether the navigation should occur.
- `NavigationLink(isActive:)`: Binds navigation to a Boolean state.

---

# 📌 Revisit #Binding
Here's a **real-world example** of using `@Binding` with navigation in a **multi-step onboarding flow** — a common pattern in apps like fitness trackers, finance apps, or productivity tools.

---

## 🧭 Scenario: Onboarding Flow with `@Binding` Navigation

### 🧩 Goal:
- Show a welcome screen.
- Navigate to a user info screen.
- Navigate to a confirmation screen.
- Allow each screen to control navigation using `@Binding`.

---

## ✅ Step-by-Step Code

### 🔹 1. `OnboardingFlow.swift` (Parent View)

```swift
import SwiftUI

struct OnboardingFlow: View {
    @State private var step: Int = 1

    var body: some View {
        NavigationStack {
            VStack {
                if step == 1 {
                    WelcomeView(step: $step)
                } else if step == 2 {
                    UserInfoView(step: $step)
                } else if step == 3 {
                    ConfirmationView(step: $step)
                }
            }
            .navigationTitle("Onboarding")
        }
    }
}
```

---

### 🔹 2. `WelcomeView.swift`

```swift
struct WelcomeView: View {
    @Binding var step: Int

    var body: some View {
        VStack(spacing: 20) {
            Text("Welcome to the App!")
                .font(.largeTitle)

            Button("Next") {
                step = 2
            }
        }
    }
}
```

---

### 🔹 3. `UserInfoView.swift`

```swift
struct UserInfoView: View {
    @Binding var step: Int
    @State private var name: String = ""

    var body: some View {
        VStack(spacing: 20) {
            Text("Enter Your Name")
            TextField("Name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

            Button("Next") {
                step = 3
            }
        }
        .padding()
    }
}
```

---

### 🔹 4. `ConfirmationView.swift`

```swift
struct ConfirmationView: View {
    @Binding var step: Int

    var body: some View {
        VStack(spacing: 20) {
            Text("You're all set!")
                .font(.title)

            Button("Start Using App") {
                // Reset or navigate to main app
                step = 1
            }
        }
    }
}
```

---

## 🔍 Why This Is Useful

- Each screen can **control the flow** without owning the navigation state.
- The parent (`OnboardingFlow`) manages the current step.
- This pattern is scalable and clean for **multi-step wizards**, **form flows**, or **tutorials**.

---

# 📌 Revisit @StateObject 

A great real-world use case for `@StateObject` in SwiftUI is managing **shared, long-lived state** across multiple views — such as a **shopping cart** in an e-commerce app.

---

## 🛒 Real-World Example: Shopping Cart

### 🧠 Why `@StateObject`?
- You use `@StateObject` when a view **owns** the lifecycle of an observable object.
- It ensures the object is **created once** and **retained** as the view updates.

---

## ✅ Step-by-Step Code

### 🔹 1. `CartManager.swift` – ObservableObject

```swift
import Foundation

class CartManager: ObservableObject {
    @Published var items: [String] = []

    func addItem(_ item: String) {
        items.append(item)
    }

    func removeItem(at index: Int) {
        items.remove(at: index)
    }
}
```

---

### 🔹 2. `ProductListView.swift` – Uses `@StateObject`

```swift
import SwiftUI

struct ProductListView: View {
    @StateObject private var cart = CartManager()

    var body: some View {
        NavigationStack {
            List {
                ForEach(["Apples", "Bananas", "Oranges"], id: \.self) { product in
                    HStack {
                        Text(product)
                        Spacer()
                        Button("Add") {
                            cart.addItem(product)
                        }
                    }
                }
            }
            .navigationTitle("Products")
            .toolbar {
                NavigationLink(destination: CartView(cart: cart)) {
                    Text("Cart (\(cart.items.count))")
                }
            }
        }
    }
}
```

---

### 🔹 3. `CartView.swift` – Uses `@ObservedObject`

```swift
import SwiftUI

struct CartView: View {
    @ObservedObject var cart: CartManager

    var body: some View {
        List {
            ForEach(cart.items.indices, id: \.self) { index in
                Text(cart.items[index])
            }
            .onDelete { indexSet in
                indexSet.forEach { cart.removeItem(at: $0) }
            }
        }
        .navigationTitle("Your Cart")
    }
}
```

---

## 🔍 Summary

| View              | Property Wrapper     | Purpose                                      |
|-------------------|----------------------|----------------------------------------------|
| `ProductListView` | `@StateObject`       | Owns and creates the `CartManager` instance  |
| `CartView`        | `@ObservedObject`    | Observes the shared instance passed in       |

---

# 📌 Revisit @ObservedObject

A real-world example of `@ObservedObject` in SwiftUI could be a **shopping cart** in an e-commerce app. Here's a simple scenario to illustrate how it works:

---

### 🛒 Scenario: Shopping Cart in a SwiftUI App

You have a `CartManager` class that keeps track of items in the cart. You want multiple views (like a product list and a cart summary) to update automatically when the cart changes.

---

### 1. Define the Observable Object

```swift
import SwiftUI
import Combine

class CartManager: ObservableObject {
    @Published var items: [String] = []

    func addItem(_ item: String) {
        items.append(item)
    }

    func removeItem(_ item: String) {
        items.removeAll { $0 == item }
    }
}
```

---

### 2. Use `@ObservedObject` in a View

```swift
struct ProductView: View {
    @ObservedObject var cartManager: CartManager

    var body: some View {
        VStack {
            Button("Add Apple") {
                cartManager.addItem("Apple")
            }

            Text("Items in cart: \(cartManager.items.count)")
        }
    }
}
```

---

### 3. Pass the Object from a Parent View

```swift
struct ContentView: View {
    @StateObject private var cartManager = CartManager()

    var body: some View {
        NavigationView {
            VStack {
                ProductView(cartManager: cartManager)
                CartSummaryView(cartManager: cartManager)
            }
        }
    }
}
```

---

### 4. Cart Summary View

```swift
struct CartSummaryView: View {
    @ObservedObject var cartManager: CartManager

    var body: some View {
        Text("Cart has \(cartManager.items.count) items.")
    }
}
```

---

### ✅ Why Use `@ObservedObject`?

- It allows views to **reactively update** when the data in the shared object changes.
- It’s perfect for **shared state** across multiple views, like a cart, user settings, or a live data feed.


# 📌 Revisit @EnvironmentObject
A great real-world example of using `@EnvironmentObject` in SwiftUI is a **user authentication system** where the login state needs to be shared across many views in the app.

---

### 🔐 Scenario: User Authentication

You have a `UserSession` class that tracks whether a user is logged in. You want multiple views (like a login screen, profile screen, and settings) to access and react to this shared state **without passing it manually** through every view.

---

### 1. Define the Shared Observable Object

```swift
import SwiftUI
import Combine

class UserSession: ObservableObject {
    @Published var isLoggedIn: Bool = false
    @Published var username: String = ""
    
    func logIn(username: String) {
        self.username = username
        self.isLoggedIn = true
    }

    func logOut() {
        self.username = ""
        self.isLoggedIn = false
    }
}
```

---

### 2. Inject It into the Environment

```swift
@main
struct MyApp: App {
    @StateObject private var userSession = UserSession()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(userSession)
        }
    }
}
```

---

### 3. Use `@EnvironmentObject` in Views

#### ContentView

```swift
struct ContentView: View {
    @EnvironmentObject var userSession: UserSession

    var body: some View {
        if userSession.isLoggedIn {
            HomeView()
        } else {
            LoginView()
        }
    }
}
```

#### LoginView

```swift
struct LoginView: View {
    @EnvironmentObject var userSession: UserSession
    @State private var username = ""

    var body: some View {
        VStack {
            TextField("Username", text: $username)
            Button("Log In") {
                userSession.logIn(username: username)
            }
        }
        .padding()
    }
}
```

#### HomeView

```swift
struct HomeView: View {
    @EnvironmentObject var userSession: UserSession

    var body: some View {
        VStack {
            Text("Welcome, \(userSession.username)!")
            Button("Log Out") {
                userSession.logOut()
            }
        }
    }
}
```

---

### ✅ Why Use `@EnvironmentObject`?

- It allows **deep view hierarchies** to access shared data **without prop-drilling**.
- It’s ideal for **global app state** like user sessions, theme settings, or app-wide preferences.



