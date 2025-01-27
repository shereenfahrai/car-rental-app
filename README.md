# WhipIt Car Rental App

## Description of Project

For my project, I have developed WhipIt, a car-sharing application, to allow users to browse available cars, rent them, and list their own vehicles for others to rent. The app has been implemented using Swift and Xcode, and it integrates the MapKit, Core Location, and Photos APIs from Apple.

## Features

The WhipIt app is designed using Swift, leveraging UIKit components. The app uses a tab-based navigation system, allowing users to easily switch between the main features:

- WhipIt Tab: Displays a list of cars available for rent. Users can view details like make, model, price, and location. This tab also integrates a map view to show car locations visually.

- RentIt Out Tab: Allows users to list their vehicles. Users can input details about their car, upload photos, and set rental prices.

- About Tab: Provides information about the app and its functionality.

To expand, the app handles mock data when retrieving the car listings for display, and when users book a car rental, the app performs dynamic price calculation based on the selected rental duration. The interface also includes validation for user input, ensuring required fields are completed before submission, and alerts to confirm actions such as successful listings or incomplete forms.

Moreover, this app integrates Apple APIs to provide a dynamic and interactive user experience:

- MapKit: Displays car locations on a map, allowing users to visually browse options.

- Core Location: Dynamically tracks and updates the user’s location.

- Photos API: Allows users to upload photos of their cars directly from their device.

## If I had more time, what would I do differently?

If given more time, I would focus on the following improvements to enhance the functionality and user experience of WhipIt:

- Styling Improvements: Refine the UI design to make the app’s interface more modern and visually appealing.

- Enhanced Booking Features: Add more granular control for booking times, such as half-hour increments.

- User Authentication and Security: Implement a robust user authentication system with account creation and secure login using Firebase or a similar service.

- Data Persistence: Transition from mock data to a cloud-based database like Firebase Firestore or Core Data for data storage.
