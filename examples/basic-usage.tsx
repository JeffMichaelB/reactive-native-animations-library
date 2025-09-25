// Basic Usage Examples
// Simple examples showing how to use the animation library components

import React, { useState } from 'react';
import { View, Text, StyleSheet, ScrollView, TouchableOpacity } from 'react-native';

// Import components from the animation library
import { InstagramHeader } from '../components/instagram';
import { ColorPicker } from '../components/colorsapp';
import { SlackCatchUpGesture } from '../components/slack';
import { PinterestMasonryList } from '../components/pinterest';
import { AlmaOnboardingCarousel } from '../components/alma';

export function BasicUsageExamples() {
  const [selectedColor, setSelectedColor] = useState('#FF6B6B');
  const [isOnboardingComplete, setIsOnboardingComplete] = useState(false);

  // Example 1: Instagram Header
  const InstagramExample = () => (
    <View style={styles.exampleContainer}>
      <Text style={styles.exampleTitle}>Instagram Header</Text>
      <InstagramHeader 
        title="My App" 
        onScroll={(scrollY) => console.log('Scroll Y:', scrollY)}
      />
    </View>
  );

  // Example 2: Color Picker
  const ColorPickerExample = () => (
    <View style={styles.exampleContainer}>
      <Text style={styles.exampleTitle}>Color Picker</Text>
      <ColorPicker 
        initialColor={selectedColor}
        onColorChange={setSelectedColor}
      />
      <Text style={styles.selectedColor}>
        Selected: {selectedColor}
      </Text>
    </View>
  );

  // Example 3: Slack Gesture
  const SlackGestureExample = () => (
    <View style={styles.exampleContainer}>
      <Text style={styles.exampleTitle}>Slack Swipe Gesture</Text>
      <SlackCatchUpGesture 
        onSwipeComplete={() => console.log('Swipe completed!')}
      />
    </View>
  );

  // Example 4: Pinterest Masonry
  const PinterestExample = () => {
    const imageData = [
      { id: 1, url: 'https://example.com/image1.jpg', height: 200 },
      { id: 2, url: 'https://example.com/image2.jpg', height: 300 },
      { id: 3, url: 'https://example.com/image3.jpg', height: 250 },
    ];

    return (
      <View style={styles.exampleContainer}>
        <Text style={styles.exampleTitle}>Pinterest Masonry List</Text>
        <PinterestMasonryList 
          data={imageData}
          numColumns={2}
          renderItem={({ item }) => (
            <View style={[styles.imageCard, { height: item.height }]}>
              <Text>Image {item.id}</Text>
            </View>
          )}
        />
      </View>
    );
  };

  // Example 5: Alma Onboarding
  const AlmaOnboardingExample = () => {
    const onboardingSlides = [
      { title: "Welcome", subtitle: "Get started with our app" },
      { title: "Features", subtitle: "Discover what you can do" },
      { title: "Ready", subtitle: "You're all set!" }
    ];

    return (
      <View style={styles.exampleContainer}>
        <Text style={styles.exampleTitle}>Alma Onboarding</Text>
        <AlmaOnboardingCarousel 
          slides={onboardingSlides}
          onComplete={() => setIsOnboardingComplete(true)}
        />
        {isOnboardingComplete && (
          <Text style={styles.completeText}>Onboarding Complete!</Text>
        )}
      </View>
    );
  };

  return (
    <ScrollView style={styles.container}>
      <Text style={styles.mainTitle}>Animation Library Examples</Text>
      
      <InstagramExample />
      <ColorPickerExample />
      <SlackGestureExample />
      <PinterestExample />
      <AlmaOnboardingExample />
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#f8f9fa',
  },
  mainTitle: {
    fontSize: 24,
    fontWeight: 'bold',
    textAlign: 'center',
    marginVertical: 20,
    color: '#212529',
  },
  exampleContainer: {
    backgroundColor: 'white',
    margin: 16,
    padding: 16,
    borderRadius: 8,
    shadowColor: '#000',
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 0.1,
    shadowRadius: 4,
    elevation: 3,
  },
  exampleTitle: {
    fontSize: 18,
    fontWeight: '600',
    marginBottom: 12,
    color: '#212529',
  },
  selectedColor: {
    marginTop: 8,
    fontSize: 14,
    color: '#6c757d',
  },
  imageCard: {
    backgroundColor: '#e9ecef',
    borderRadius: 8,
    justifyContent: 'center',
    alignItems: 'center',
    margin: 4,
  },
  completeText: {
    marginTop: 12,
    fontSize: 16,
    fontWeight: '600',
    color: '#28a745',
    textAlign: 'center',
  },
});
