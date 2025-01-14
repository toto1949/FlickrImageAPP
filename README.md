# iOS Developer Candidate Code Challenge - Flickr Image Search

This is an iOS application developed as part of the iOS Developer Candidate Code Challenge. The goal was to create a simple app that allows users to search for images on Flickr by tags. The app features a search bar, image grid, image detail view, and a debouncing mechanism for efficient search functionality.

## Demo Video

You can view the demo video of the application here:

[Link to Demo Video]

## Features

- **Search for Images**: Users can search for images on Flickr by typing tags into the search bar. The search term can be a single word or a comma-separated list of tags.
- **Debounced Search**: The search input is debounced to avoid making too many API calls while the user types, improving performance.
- **Image Grid**: The app displays a grid of thumbnail images that match the search query.
- **Progress Indicator**: A progress indicator shows while the images are being fetched from the API.
- **Image Detail View**: Tapping on an image opens a detail view that displays:
  - The image itself.
  - The title of the image.
  - A description of the image.
  - The author's name.
  - The formatted published date.
  - The image’s width and height.
- **Unit Test**: A unit test is provided for one portion of the code.

## Requirements

- Xcode 12.0+
- iOS 14.0+
- Swift 5.0+
- SwiftUI
- Combine (for the debouncing mechanism)

## Installation

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/your-username/FlickrImageSearch.git
