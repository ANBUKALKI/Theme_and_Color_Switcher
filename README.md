# theme_and_color_switcher

### A Flutter application that demonstrates theme switching (light/dark/system) and primary color selection using the MVVM pattern with Provider for state management.

## Features

- Theme Mode Selection: Switch between Light, Dark, and System themes

- Primary Color Switcher: Choose from predefined primary colors

- Dynamic UI: Automatically adapts to theme changes

- MVVM Architecture: Follows Model-View-ViewModel pattern

- Provider State Management: Efficient state handling

## Folder Structure (MVVM)

```
lib/
├── core/
│   ├── constants/
│   │   ├── app_colors.dart      # Color constants & utilities
│   │   └── app_themes.dart      # Theme configurations
│   └── widgets/                 # Reusable UI components
│       ├── theme_switcher.dart
│       └── primary_color_switcher.dart
│
├── features/
│   └── theme_switcher/
│       └── presentation/
│           ├── view_models/     # Business logic
│           │   └── theme_provider.dart  
│           └── views/           # UI Screens
│               └── home_page.dart
│
└── main.dart                     # Main application entry


```
## Key Components

### 1. View (UI Layer)
- home_page.dart: Main screen layout

- Widgets (theme_switcher.dart, primary_color_switcher.dart)

### 2. ViewModel (Logic Layer)
- theme_provider.dart: Manages theme state using ChangeNotifier

### 3. Model (Data Layer)
- app_colors.dart: Color definitions

- app_themes.dart: Theme configurations

## How It Works
### 1.User Interaction:

- Tapping theme buttons triggers themeProvider.setSelectedThemeMode()

- Selecting a color calls themeProvider.setSelectedPrimaryColor()

### 2.State Update:

- The ThemeProvider updates its state and calls notifyListeners()

### 3.UI Rebuild:

- Consumer widgets rebuild only the necessary parts of the UI

## Setup
### 1.Add dependencies in pubspec.yaml:

```
dependencies:
  flutter:
    sdk: flutter
  provider: ^6.0.5

```

## Screenshots

<img src="https://github.com/user-attachments/assets/8a16f6e5-c81e-4801-8d01-7ee953dff157" alt="Alt Text" style="width:20%; height:auto;">

<img src="https://github.com/user-attachments/assets/0ae7a778-1242-4dc8-9209-9e1468ad2f76" alt="Alt Text" style="width:20%; height:auto;">

<img src="https://github.com/user-attachments/assets/3f6c2dd7-f108-4f3e-94ee-445397d19212" alt="Alt Text" style="width:20%; height:auto;">

#### ---------------------------------------------------------------------

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
