// Instagram Header Component
// Animated header that responds to scroll

import React from 'react';
import { View, Text, StyleSheet } from 'react-native';
import Animated, { useSharedValue, useAnimatedStyle } from 'react-native-reanimated';

interface InstagramHeaderProps {
    title: string;
    scrollY?: Animated.SharedValue<number>;
}

export function InstagramHeader({ title, scrollY }: InstagramHeaderProps) {
    const animatedStyle = useAnimatedStyle(() => {
        const opacity = scrollY ? 1 - (scrollY.value / 100) : 1;
        return {
            opacity: Math.max(0, Math.min(1, opacity)),
        };
    });

    return (
        <Animated.View style={[styles.header, animatedStyle]}>
            <Text style={styles.title}>{title}</Text>
        </Animated.View>
    );
}

const styles = StyleSheet.create({
    header: {
        height: 60,
        backgroundColor: '#fff',
        justifyContent: 'center',
        alignItems: 'center',
        borderBottomWidth: 1,
        borderBottomColor: '#e0e0e0',
    },
    title: {
        fontSize: 18,
        fontWeight: 'bold',
        color: '#000',
    },
});
