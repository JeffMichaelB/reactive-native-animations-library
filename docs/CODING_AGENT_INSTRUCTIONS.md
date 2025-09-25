# Coding Agent Instructions 🤖

## Library Overview
You have access to a comprehensive React Native animation library with 24 apps and 60+ components.

## Import Syntax
```typescript
// Import specific components
import { InstagramHeader, ColorPicker, SlackCatchUp } from '@/animations-library';

// Import by category
import { InstagramHeader, InstagramCarousel } from '@/animations-library/components/instagram';
import { useScrollDirection, useHapticOnScroll } from '@/animations-library/hooks';
```

## Component Categories & Use Cases

### Navigation & Headers
```typescript
// Instagram-style header
<InstagramHeader title="My App" onScroll={scrollHandler} />

// WhatsApp large title
<WhatsAppLargeTitle title="Chats" subtitle="Messages" />

// Shopify shared header
<ShopifySharedHeader tabs={['Home', 'Search', 'Profile']} />
```

### Onboarding & Tutorials
```typescript
// Alma carousel onboarding
<AlmaOnboardingCarousel 
  slides={onboardingData}
  onComplete={() => navigation.navigate('Home')}
/>

// Slack swipe tutorial
<SlackCatchUpGesture onSwipeComplete={nextStep} />
```

### Lists & Content
```typescript
// Pinterest masonry layout
<PinterestMasonryList 
  data={images}
  numColumns={2}
  renderItem={ImageCard}
/>

// Instagram carousel
<InstagramCarousel 
  images={postImages}
  showPagination={true}
/>
```

### Interactive Elements
```typescript
// ColorsApp color picker
<ColorPicker 
  initialColor="#FF6B6B"
  onColorChange={setSelectedColor}
/>

// Discord custom button
<DiscordCustomButton 
  title="Join Server"
  shimmerEffect={true}
  onPress={handleJoin}
/>
```

### Settings & Preferences
```typescript
// ColorsApp theme toggle
<ColorsAppThemeToggle 
  isDark={isDarkMode}
  onToggle={setIsDarkMode}
/>

// Queue preferences
<QueueCustomSwitch 
  label="Push Notifications"
  value={notificationsEnabled}
  onValueChange={setNotificationsEnabled}
/>
```

## Hooks Usage

### Scroll-based Animations
```typescript
import { useScrollDirection, useScrollViewOffset } from '@/animations-library/hooks';

function MyScreen() {
  const scrollDirection = useScrollDirection();
  const scrollOffset = useScrollViewOffset();
  
  // Use in animations
  const headerOpacity = useSharedValue(scrollOffset.value > 100 ? 0 : 1);
}
```

### Haptic Feedback
```typescript
import { useHapticOnScroll } from '@/animations-library/hooks';

function MyList() {
  const { onScroll } = useHapticOnScroll({
    hapticStyle: 'light',
    threshold: 50
  });
  
  return <FlatList onScroll={onScroll} {...props} />;
}
```

## Common Patterns

### Social Media App
```typescript
function SocialApp() {
  return (
    <View>
      <InstagramHeader title="Feed" />
      <FlatList 
        data={posts}
        renderItem={({ item }) => <InstagramPostCard post={item} />}
      />
      <ThreadsAddButton onPress={createPost} />
    </View>
  );
}
```

### E-commerce App
```typescript
function EcommerceApp() {
  return (
    <ShopifyTabsLayout>
      <Tab.Screen name="home" component={HomeScreen} />
      <Tab.Screen name="search" 
        component={() => (
          <ShopifySearchFilters 
            onFilter={handleFilter}
            products={products}
          />
        )} 
      />
    </ShopifyTabsLayout>
  );
}
```

### Onboarding Flow
```typescript
function OnboardingFlow() {
  return (
    <AlmaOnboardingCarousel 
      slides={[
        { title: "Welcome", subtitle: "Get started with our app" },
        { title: "Features", subtitle: "Discover what you can do" },
        { title: "Ready", subtitle: "You're all set!" }
      ]}
      onComplete={() => navigation.replace('Main')}
    />
  );
}
```

## Performance Guidelines

### Use Proper Dependencies
- Always check component dependencies before using
- Install only required packages for components you use
- Use lazy loading for heavy components

### Animation Best Practices
- Use `worklet` functions for smooth animations
- Prefer `useSharedValue` over `useState` for animated values
- Use `runOnUI` for UI thread operations

### Memory Management
- Clean up animations in `useEffect` cleanup
- Use `useMemo` for expensive computations
- Implement proper list virtualization for large datasets

## Error Handling

### Missing Dependencies
```typescript
// Check if dependencies are installed
try {
  const Component = require('@/animations-library/components/instagram/Header');
} catch (error) {
  console.warn('Instagram components not available. Install: react-native-reanimated');
  // Fallback to basic component
}
```

### Platform-Specific Components
```typescript
import { Platform } from 'react-native';

// Use iOS-specific animations on iOS
const HeaderComponent = Platform.OS === 'ios' 
  ? WhatsAppLargeTitle 
  : AndroidMaterialHeader;
```

## Testing Components

### Use Test Screen
```typescript
import { TestScreen } from '@/animations-library/catalog';

// View component in isolation
<TestScreen component={InstagramHeader} props={{ title: "Test" }} />
```

### Component Catalog
```typescript
import { ComponentCatalog } from '@/animations-library/catalog';

// Browse all available components
<ComponentCatalog />
```

## Quick Reference

### Most Popular Components
- **InstagramHeader** - Animated header with scroll effects
- **ColorPicker** - Interactive color selection
- **PinterestMasonryList** - Pinterest-style grid layout
- **AlmaOnboardingCarousel** - Smooth onboarding flow
- **SlackCatchUpGesture** - Swipe gesture animations
- **ShopifySharedHeader** - E-commerce navigation
- **DiscordCustomButton** - Animated buttons with effects
- **WhatsAppLargeTitle** - iOS-style large titles

### Animation Hooks
- **useScrollDirection** - Detect scroll direction
- **useScrollViewOffset** - Track scroll position
- **useHapticOnScroll** - Haptic feedback on scroll
- **useDebounce** - Debounce user interactions

### Shared Utilities
- **AnimatedBlurView** - Universal blur effects
- **Marquee** - Scrolling text animations
- **CreateCollapsibleNavigator** - Advanced navigation
- **CurvedDivider** - Custom shape animations

## Best Practices

1. **Start Simple**: Begin with basic components and add complexity
2. **Test on Device**: Always test animations on real devices
3. **Performance First**: Use lazy loading and proper cleanup
4. **Consistent Design**: Stick to one design system per app
5. **Documentation**: Keep track of which components you use

## Troubleshooting

### Common Issues
- **Animations not smooth**: Check if `react-native-reanimated` is properly configured
- **Gesture not working**: Ensure `react-native-gesture-handler` is set up
- **Import errors**: Verify TypeScript paths are configured correctly
- **Performance issues**: Use lazy loading and proper cleanup

### Getting Help
- Check the [Component Catalog](./COMPONENT_CATALOG.md) for detailed component info
- Review [Installation Guide](./INSTALLATION_GUIDE.md) for setup issues
- Browse [Usage Examples](../examples/) for implementation patterns
