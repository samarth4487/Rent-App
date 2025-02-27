## 📁 Project Structure

The project is organized into the following main directories:

### 1. **Data**
- **Models:** Contains the data models used in the app, including:
  - `Car.swift`: Represents the car object.
  - `Rent.swift`: Holds information about the rental details.
  - `User.swift`: Manages user-related data.
  - `Variant.swift`: Defines different car variants.

---

### 2. **Presentation**
- **Fonts:** Custom fonts used throughout the app, including:
  - Barlow-Bold, Barlow-Italic, Barlow-Light, Barlow-Medium, Barlow-Regular, Barlow-SemiBold.
- **Resources**
  - **Assets:** Contains all image and color assets used in the UI.
- **Util**
  - **Extensions:** Swift extensions to enhance the functionality of core classes and structs:
    - `CGSize.swift`
    - `Colors.swift`: Custom color palette.
    - `Fonts.swift`: Custom fonts configuration.
    - `Constants.swift`: Global constants used across the app.

---

### 3. **Views**
- **Component:** Reusable SwiftUI components that make up the user interface, including:
  - `CarView.swift`: Displays car details.
  - `ImageButton.swift`: Custom button with image support.
  - `MoreCarView.swift`: Lists additional cars.
  - `NearbyCarView.swift`: Shows cars that are nearby.
  - `UserView.swift`: Displays user information.
  - `VariantView.swift`: Shows car variant details.
- **RentView.swift:** The main view responsible for displaying rental information.

---

### 4. **Preview Content**
Contains preview assets used in SwiftUI live previews.

---

### 5. **Info**
Holds configuration files, including the `Info.plist` file.

---

### 6. **RentAppApp.swift**
The entry point of the SwiftUI app.

---
