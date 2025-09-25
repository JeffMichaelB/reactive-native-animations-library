# React Native Animations Library 🎨

A comprehensive collection of smooth, professional animations extracted from 24 popular apps with 60+ components.

## 🎯 What's Inside

### 📱 Complete App Library (24 Apps)
- **Instagram**: Header animations, Carousel, Post cards, Story controls
- **ColorsApp**: Color picker, Theme toggle, Paywall modal, Color panels
- **Slack**: Swipe gestures, Catch-up animations, Channel transitions
- **Shopify**: Tab navigation, Search filters, Menu transitions, Shared headers
- **Discord**: Custom buttons, Switches, Settings panels, Language selector
- **WhatsApp**: Large titles, Search bars, Communities, Chat interfaces
- **Pinterest**: Masonry layout, Pull-to-refresh, Loading indicators
- **Alma**: Onboarding carousel, Staggered text animations
- **Apple Books**: Menu buttons, Interactive menus
- **Apple Invites**: Welcome screens, Marquee backgrounds
- **Canva**: Header transitions, Design tool animations
- **ChatGPT**: Shimmer text, AI response animations
- **Fuse**: Financial dashboards, Balance views, Info carousels
- **GitHub**: Achievement badges, Profile headers
- **Gmail**: Compose buttons, Custom tab bars, Content lists
- **Google Chrome**: Tab management, Tab groups, Browser interfaces
- **Grok**: Attach file menus, Photo pickers, Chat interfaces
- **Linear**: Issues tracking, Tab indicators, Task management
- **LinkedIn**: Professional headers, Job cards, Notifications
- **Luma**: Event cards, Blurred images, Discovery interfaces
- **Opal**: Timer interfaces, Start buttons, Productivity tools
- **Queue**: Preference toggles, Settings panels
- **Raycast**: Search interfaces, Command palettes, Productivity tools
- **Showcase**: Event lists, Upcoming animations
- **Threads**: Profile animations, Social posts, Navigation tabs
- **Viber**: Call lists, Chat navigation, Communication tools
- **X (Twitter)**: Social posts, Notifications, Search interfaces
- **Adidas**: Marquee headers, Brand animations

### 🛠️ Shared Components & Utilities
- **AnimatedBlurView**: Universal blur effects
- **Marquee**: Scrolling text animations
- **CreateCollapsibleNavigator**: Advanced navigation
- **CurvedDivider**: Custom shape animations
- **DrawerToggle**: Navigation drawer controls
- **Animation Hooks**: Scroll detection, Haptic feedback, Debouncing
- **Animation Utils**: Gradient transitions, Press simulation, Version checking

## 🚀 Quick Start

### Installation
```bash
# Clone the library
git clone https://github.com/JeffMichaelB/reactive-native-animations-library.git animations-library

# Or add as submodule to your project
git submodule add https://github.com/JeffMichaelB/reactive-native-animations-library.git animations-library
```

### Basic Usage
```typescript
import { 
  InstagramHeader, 
  ColorPicker, 
  SlackCatchUp,
  AlmaOnboardingCarousel,
  PinterestMasonryList 
} from './animations-library';

function MyApp() {
  return (
    <View>
      <InstagramHeader title="My App" />
      <ColorPicker onColorChange={setColor} />
      <PinterestMasonryList data={images} />
    </View>
  );
}
```

## 📖 Documentation

- [Complete Component Catalog](./docs/COMPONENT_CATALOG.md)
- [Installation Guide](./docs/INSTALLATION_GUIDE.md)
- [Coding Agent Instructions](./docs/CODING_AGENT_INSTRUCTIONS.md)
- [Usage Examples](./examples/)

## 🎯 Component Categories

### Navigation & Headers
- Instagram Header, WhatsApp Large Title, Shopify Shared Header

### Onboarding & Tutorials  
- Alma Carousel, Slack Swipe Gestures, Apple Invites Welcome

### Lists & Content
- Pinterest Masonry, Instagram Carousel, Gmail Content Lists

### Interactive Elements
- ColorsApp Color Picker, Discord Custom Buttons, Theme Toggles

### Settings & Preferences
- Queue Switches, Discord Settings, Language Selectors

### Social & Communication
- Threads Posts, WhatsApp Chat, Viber Calls, X Notifications

### Productivity & Tools
- Raycast Search, Linear Issues, Opal Timers, Chrome Tabs

### E-commerce & Business
- Shopify Navigation, LinkedIn Professional, GitHub Profiles

## 🛠️ Development Status

- ✅ Complete component extraction (24 apps, 60+ components)
- ✅ Comprehensive documentation
- ✅ Installation guides
- ✅ Coding agent instructions
- ✅ Usage examples
- ✅ TypeScript support

## 📄 License

MIT License - Use freely in personal and commercial projects.

## 🤝 Contributing

This library is maintained as a resource for React Native developers. Components are extracted from popular apps for educational and development purposes.
