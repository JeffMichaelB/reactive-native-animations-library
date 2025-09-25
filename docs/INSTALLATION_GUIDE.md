# Installation Guide 🚀

## Quick Start

### Method 1: Clone the Repository (Recommended)
```bash
# Clone the animation library
git clone https://github.com/JeffMichaelB/reactive-native-animations-library.git animations-library

# Navigate to your new project
cd my-react-native-app

# Copy the library to your project
cp -r ../animations-library ./src/animations-library
```

### Method 2: Add as Git Submodule
```bash
# In your React Native project directory
git submodule add https://github.com/JeffMichaelB/reactive-native-animations-library.git animations-library
```

### Method 3: Download ZIP
1. Go to [GitHub Repository](https://github.com/JeffMichaelB/reactive-native-animations-library)
2. Click "Code" → "Download ZIP"
3. Extract to your project directory

## Dependencies Installation

### Required Dependencies
```bash
# Core animation dependencies
npm install react-native-reanimated@^3.18.0
npm install react-native-gesture-handler@^2.24.0

# Expo dependencies (if using Expo)
npx expo install expo-blur@^14.1.4
npx expo install expo-haptics@^14.1.4
npx expo install expo-image@^2.3.0
npx expo install expo-linear-gradient@^14.1.4

# Optional but recommended
npm install @shopify/react-native-skia@^2.0.0
npm install @shopify/flash-list@^1.6.0
```

### React Native CLI Setup
```bash
# iOS setup
cd ios && pod install && cd ..

# Android setup (if needed)
npx react-native run-android
```

## Project Configuration

### 1. Update Metro Config
```javascript
// metro.config.js
const { getDefaultConfig } = require('expo/metro-config');

const config = getDefaultConfig(__dirname);

// Add support for the animations library
config.resolver.alias = {
  '@animations-library': './src/animations-library',
};

module.exports = config;
```

### 2. Update TypeScript Config
```json
// tsconfig.json
{
  "compilerOptions": {
    "baseUrl": ".",
    "paths": {
      "@animations-library/*": ["./src/animations-library/*"]
    }
  }
}
```

### 3. Import Components
```typescript
// Import specific components
import { InstagramHeader, ColorPicker, SlackCatchUp } from '@/animations-library';

// Or import by category
import { InstagramHeader } from '@/animations-library/components/instagram';
import { ColorPicker } from '@/animations-library/components/colorsapp';
```

## Usage Examples

### Basic Component Usage
```typescript
import React from 'react';
import { View } from 'react-native';
import { InstagramHeader, ColorPicker } from '@/animations-library';

export default function MyScreen() {
  return (
    <View>
      <InstagramHeader title="My App" />
      <ColorPicker onColorChange={(color) => console.log(color)} />
    </View>
  );
}
```

### Advanced Usage with Props
```typescript
import React, { useState } from 'react';
import { View, ScrollView } from 'react-native';
import { 
  InstagramHeader, 
  PinterestMasonryList,
  AlmaOnboardingCarousel 
} from '@/animations-library';

export default function HomeScreen() {
  const [selectedColor, setSelectedColor] = useState('#FF6B6B');
  
  return (
    <ScrollView>
      <InstagramHeader 
        title="My App" 
        onScroll={(scrollY) => console.log(scrollY)}
      />
      
      <PinterestMasonryList 
        data={imageData}
        numColumns={2}
        renderItem={({ item }) => <ImageCard image={item} />}
      />
      
      <AlmaOnboardingCarousel 
        slides={onboardingData}
        onComplete={() => navigation.navigate('Main')}
      />
    </ScrollView>
  );
}
```

## Troubleshooting

### Common Issues

#### 1. "Module not found" errors
```bash
# Clear Metro cache
npx react-native start --reset-cache

# Or for Expo
npx expo start --clear
```

#### 2. Animation not working
- Ensure `react-native-reanimated` is properly installed
- Check that gesture handler is configured
- Verify component dependencies are installed

#### 3. TypeScript errors
- Make sure TypeScript paths are configured correctly
- Check that all component types are properly exported

### Platform-Specific Setup

#### iOS
```bash
# Install pods
cd ios && pod install && cd ..

# Run on iOS
npx react-native run-ios
```

#### Android
```bash
# Clean and rebuild
cd android && ./gradlew clean && cd ..

# Run on Android
npx react-native run-android
```

## Performance Tips

### 1. Lazy Loading
```typescript
// Lazy load heavy components
const InstagramCarousel = React.lazy(() => 
  import('@/animations-library/components/instagram/Carousel')
);
```

### 2. Memory Management
```typescript
// Clean up animations in useEffect
useEffect(() => {
  return () => {
    // Cleanup animations
    animatedValue.value = 0;
  };
}, []);
```

### 3. Bundle Optimization
```javascript
// metro.config.js - Add tree shaking
module.exports = {
  resolver: {
    alias: {
      '@animations-library': './src/animations-library',
    },
  },
  transformer: {
    minifierConfig: {
      keep_fnames: true,
    },
  },
};
```

## Next Steps

1. **Browse Components**: Check the [Component Catalog](./COMPONENT_CATALOG.md)
2. **Coding Agent**: Use the [Coding Agent Instructions](./CODING_AGENT_INSTRUCTIONS.md)
3. **Examples**: See [Usage Examples](../examples/)
4. **Customization**: Modify components to fit your design system

## Support

- **Issues**: [GitHub Issues](https://github.com/JeffMichaelB/reactive-native-animations-library/issues)
- **Documentation**: [Component Catalog](./COMPONENT_CATALOG.md)
- **Examples**: [Usage Examples](../examples/)

Happy coding! 🎉
