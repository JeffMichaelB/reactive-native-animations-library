# Usage Examples 📚

This directory contains practical examples of how to use the React Native Animations Library in your projects.

## Examples Available

### 1. Basic Usage (`basic-usage.tsx`)
Simple examples showing how to implement common components:
- Instagram Header with scroll effects
- Color Picker with state management
- Slack Swipe Gesture interactions
- Pinterest Masonry List layout
- Alma Onboarding Carousel flow

### 2. Advanced Patterns (Coming Soon)
- Complex animation sequences
- Custom component combinations
- Performance optimization techniques
- Platform-specific implementations

## How to Use Examples

### Copy and Paste
```typescript
// Copy the example code
import { BasicUsageExamples } from './examples/basic-usage';

// Use in your app
export default function MyApp() {
  return <BasicUsageExamples />;
}
```

### Modify for Your Needs
```typescript
// Customize the examples
import { InstagramHeader } from '@/animations-library';

function MyCustomHeader() {
  return (
    <InstagramHeader 
      title="My Custom App"
      onScroll={(scrollY) => {
        // Your custom scroll logic
        console.log('Custom scroll:', scrollY);
      }}
    />
  );
}
```

## Example Categories

### Navigation & Headers
- Instagram Header animations
- WhatsApp Large Title
- Shopify Shared Header

### Onboarding & Tutorials
- Alma Carousel onboarding
- Slack Swipe gestures
- Apple Invites welcome screens

### Lists & Content
- Pinterest Masonry layouts
- Instagram Carousel
- Gmail Content Lists

### Interactive Elements
- ColorsApp Color Picker
- Discord Custom Buttons
- Theme Toggles

### Settings & Preferences
- Queue Custom Switches
- Discord Settings panels
- Language Selectors

## Best Practices from Examples

### 1. State Management
```typescript
const [selectedColor, setSelectedColor] = useState('#FF6B6B');
const [isOnboardingComplete, setIsOnboardingComplete] = useState(false);
```

### 2. Event Handling
```typescript
<ColorPicker 
  initialColor={selectedColor}
  onColorChange={setSelectedColor}
/>
```

### 3. Conditional Rendering
```typescript
{isOnboardingComplete && (
  <Text>Onboarding Complete!</Text>
)}
```

### 4. Performance Optimization
```typescript
// Use React.memo for expensive components
const MemoizedComponent = React.memo(ExpensiveComponent);

// Lazy load heavy components
const LazyComponent = React.lazy(() => import('./HeavyComponent'));
```

## Contributing Examples

Want to add your own examples? Here's how:

1. **Create a new file** in the `examples/` directory
2. **Follow the naming convention**: `category-name.tsx`
3. **Include comprehensive comments** explaining the code
4. **Test on both iOS and Android**
5. **Submit a pull request** with your example

### Example Template
```typescript
// examples/my-custom-example.tsx
import React from 'react';
import { View, Text, StyleSheet } from 'react-native';
import { YourComponent } from '../components/your-app';

export function MyCustomExample() {
  return (
    <View style={styles.container}>
      <Text style={styles.title}>My Custom Example</Text>
      <YourComponent 
        // Your props here
      />
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#f8f9fa',
  },
  title: {
    fontSize: 18,
    fontWeight: '600',
    marginBottom: 12,
  },
});
```

## Need Help?

- **Documentation**: Check the [Component Catalog](../docs/COMPONENT_CATALOG.md)
- **Installation**: See the [Installation Guide](../docs/INSTALLATION_GUIDE.md)
- **Coding Agent**: Use the [Coding Agent Instructions](../docs/CODING_AGENT_INSTRUCTIONS.md)
- **Issues**: Report problems on [GitHub Issues](https://github.com/JeffMichaelB/reactive-native-animations-library/issues)

Happy coding! 🚀
