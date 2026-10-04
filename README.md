# Flutter Test App

A clean, modern test application built with Flutter & Material 3.

## ✨ Features
- **Modern Material 3 Design:** Custom indigo palette, sleek cards, and typography.
- **Light & Dark Theme:** Instant theme toggle with full theme switching support.
- **Animated Counter:** Smooth number transitions using `AnimatedSwitcher` and `ScaleTransition`.
- **Action Controls:** +1 increment, +5 jump, -1 decrement, and instant reset.
- **Clean Architecture:** Separated theme, widgets, screens, and state.

## 📁 Project Structure
```text
lib/
├── app.dart                    # App wrapper and ThemeMode state
├── main.dart                   # Entry point
├── screens/
│   └── home_screen.dart        # Main screen with hero banner and highlights
├── theme/
│   └── app_theme.dart          # Light and Dark Material 3 theme configurations
└── widgets/
    └── counter_card.dart       # Modular animated counter component
test/
└── widget_test.dart            # Widget integration test
```

## 🚀 Running the App
Make sure Flutter is installed and run:
```bash
flutter pub get
flutter run
```

To run tests:
```bash
flutter test
```
