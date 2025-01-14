# CVS Flickr APP

A SwiftUI-based iOS application that allows users to search and view images from Flickr's public feed.

## Features

- **Real-time image search** using Flickr's public feed API
- **Grid layout** displaying thumbnail images
- **Image detail view** with metadata
- **Progress indicator** during searches
- **Continuous search updates** on each keystroke
- **Supports comma-separated search tags** (e.g., "soccer, food, programming")

## Technical Requirements

- **iOS** (latest version)
- **Swift**
- **SwiftUI**
- **Xcode** (latest version)

## API

The app uses Flickr's public feed API:  
[https://api.flickr.com/services/feeds/photos_public.gne?format=json&nojsoncallback=1&tags={searchTerm}
](https://api.flickr.com/services/feeds/photos_public.gne?format=json&nojsoncallback=1&tags={searchTerm})

- No API key required.

## Core Functionality

### Search View

- **Search bar** for entering search terms
  - Users can enter **single words** (e.g., "soccer") or **comma-separated tags** (e.g., "soccer, food, programming")
- **Grid layout** for displaying image thumbnails
- **Non-blocking progress indicator** during searches
- **Continuous search updates** after each keystroke or change to the search string

### Detail View

- Full-size **image display**
- **Title**
- **Description**
- **Author information**
- **Formatted publication date**

## Demo

### Watch Full Demo Video


[![Watch the demo](https://img.youtube.com/vi/YOUR_VIDEO_ID/0.jpg)](https://streamable.com/kjjgfe)

## Testing

- Includes **unit tests** covering core functionality.

## Development Guidelines

- Written in **Swift** using **SwiftUI**
- Follows **Apple's Human Interface Guidelines**
- Implements **proper error handling**
- Ensures **thread safety** for API calls
- Maintains **memory management best practices**
- Uses **clean coding practices** and consistent formatting

## Getting Started

1. **Clone the repository**
2. **Open the project in Xcode**
3. **Build and run** on simulator or device

## Time Allocation

Project is designed to be completed within **3 hours**.

## About

This project is a simple image search application that leverages the Flickr API for fetching images. It is part of an iOS Developer Candidate Code Challenge.


### Languages

- **Swift**: 100%

---

© 2025 GitHub, Inc.
