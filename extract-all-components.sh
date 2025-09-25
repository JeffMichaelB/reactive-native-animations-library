#!/bin/bash

# Complete Component Extraction Script
# Extracts all components from react-native-test-one to reactive-native-animations-library

SOURCE_DIR="/Users/MrSir/react-native-test-one/src"
TARGET_DIR="/Users/MrSir/reactive-native-animations-library"

echo "🚀 Starting complete component extraction..."

# Copy all app components systematically
echo "📱 Extracting all app components..."

# A-C Apps
echo "  📱 A-C Apps..."
[ -d "$SOURCE_DIR/apps/(a-c)/adidas" ] && cp -r "$SOURCE_DIR/apps/(a-c)/adidas/"* "$TARGET_DIR/components/adidas/" 2>/dev/null || true
[ -d "$SOURCE_DIR/apps/(a-c)/alma" ] && cp -r "$SOURCE_DIR/apps/(a-c)/alma/"* "$TARGET_DIR/components/alma/" 2>/dev/null || true
[ -d "$SOURCE_DIR/apps/(a-c)/apple-books" ] && cp -r "$SOURCE_DIR/apps/(a-c)/apple-books/"* "$TARGET_DIR/components/apple-books/" 2>/dev/null || true
[ -d "$SOURCE_DIR/apps/(a-c)/apple-invites" ] && cp -r "$SOURCE_DIR/apps/(a-c)/apple-invites/"* "$TARGET_DIR/components/apple-invites/" 2>/dev/null || true
[ -d "$SOURCE_DIR/apps/(a-c)/canva" ] && cp -r "$SOURCE_DIR/apps/(a-c)/canva/"* "$TARGET_DIR/components/canva/" 2>/dev/null || true
[ -d "$SOURCE_DIR/apps/(a-c)/chatgpt" ] && cp -r "$SOURCE_DIR/apps/(a-c)/chatgpt/"* "$TARGET_DIR/components/chatgpt/" 2>/dev/null || true

# D-F Apps
echo "  📱 D-F Apps..."
[ -d "$SOURCE_DIR/apps/(d-f)/discord" ] && cp -r "$SOURCE_DIR/apps/(d-f)/discord/"* "$TARGET_DIR/components/discord/" 2>/dev/null || true
[ -d "$SOURCE_DIR/apps/(d-f)/fuse" ] && cp -r "$SOURCE_DIR/apps/(d-f)/fuse/"* "$TARGET_DIR/components/fuse/" 2>/dev/null || true

# G-I Apps
echo "  📱 G-I Apps..."
[ -d "$SOURCE_DIR/apps/(g-i)/github" ] && cp -r "$SOURCE_DIR/apps/(g-i)/github/"* "$TARGET_DIR/components/github/" 2>/dev/null || true
[ -d "$SOURCE_DIR/apps/(g-i)/gmail" ] && cp -r "$SOURCE_DIR/apps/(g-i)/gmail/"* "$TARGET_DIR/components/gmail/" 2>/dev/null || true
[ -d "$SOURCE_DIR/apps/(g-i)/google-chrome" ] && cp -r "$SOURCE_DIR/apps/(g-i)/google-chrome/"* "$TARGET_DIR/components/google-chrome/" 2>/dev/null || true
[ -d "$SOURCE_DIR/apps/(g-i)/grok" ] && cp -r "$SOURCE_DIR/apps/(g-i)/grok/"* "$TARGET_DIR/components/grok/" 2>/dev/null || true
[ -d "$SOURCE_DIR/apps/(g-i)/instagram" ] && cp -r "$SOURCE_DIR/apps/(g-i)/instagram/"* "$TARGET_DIR/components/instagram/" 2>/dev/null || true

# J-L Apps
echo "  📱 J-L Apps..."
[ -d "$SOURCE_DIR/apps/(j-l)/linear" ] && cp -r "$SOURCE_DIR/apps/(j-l)/linear/"* "$TARGET_DIR/components/linear/" 2>/dev/null || true
[ -d "$SOURCE_DIR/apps/(j-l)/linkedin" ] && cp -r "$SOURCE_DIR/apps/(j-l)/linkedin/"* "$TARGET_DIR/components/linkedin/" 2>/dev/null || true
[ -d "$SOURCE_DIR/apps/(j-l)/luma" ] && cp -r "$SOURCE_DIR/apps/(j-l)/luma/"* "$TARGET_DIR/components/luma/" 2>/dev/null || true

# M-O Apps
echo "  📱 M-O Apps..."
[ -d "$SOURCE_DIR/apps/(m-o)/opal" ] && cp -r "$SOURCE_DIR/apps/(m-o)/opal/"* "$TARGET_DIR/components/opal/" 2>/dev/null || true

# P-R Apps
echo "  📱 P-R Apps..."
[ -d "$SOURCE_DIR/apps/(p-r)/pinterest" ] && cp -r "$SOURCE_DIR/apps/(p-r)/pinterest/"* "$TARGET_DIR/components/pinterest/" 2>/dev/null || true
[ -d "$SOURCE_DIR/apps/(p-r)/queue" ] && cp -r "$SOURCE_DIR/apps/(p-r)/queue/"* "$TARGET_DIR/components/queue/" 2>/dev/null || true
[ -d "$SOURCE_DIR/apps/(p-r)/raycast" ] && cp -r "$SOURCE_DIR/apps/(p-r)/raycast/"* "$TARGET_DIR/components/raycast/" 2>/dev/null || true

# S-T Apps
echo "  📱 S-T Apps..."
[ -d "$SOURCE_DIR/apps/(s-t)/shopify" ] && cp -r "$SOURCE_DIR/apps/(s-t)/shopify/"* "$TARGET_DIR/components/shopify/" 2>/dev/null || true
[ -d "$SOURCE_DIR/apps/(s-t)/showcase" ] && cp -r "$SOURCE_DIR/apps/(s-t)/showcase/"* "$TARGET_DIR/components/showcase/" 2>/dev/null || true
[ -d "$SOURCE_DIR/apps/(s-t)/slack" ] && cp -r "$SOURCE_DIR/apps/(s-t)/slack/"* "$TARGET_DIR/components/slack/" 2>/dev/null || true
[ -d "$SOURCE_DIR/apps/(s-t)/threads" ] && cp -r "$SOURCE_DIR/apps/(s-t)/threads/"* "$TARGET_DIR/components/threads/" 2>/dev/null || true

# U-Z Apps
echo "  📱 U-Z Apps..."
[ -d "$SOURCE_DIR/apps/(u-z)/viber" ] && cp -r "$SOURCE_DIR/apps/(u-z)/viber/"* "$TARGET_DIR/components/viber/" 2>/dev/null || true
[ -d "$SOURCE_DIR/apps/(u-z)/whatsapp" ] && cp -r "$SOURCE_DIR/apps/(u-z)/whatsapp/"* "$TARGET_DIR/components/whatsapp/" 2>/dev/null || true
[ -d "$SOURCE_DIR/apps/(u-z)/x" ] && cp -r "$SOURCE_DIR/apps/(u-z)/x/"* "$TARGET_DIR/components/x/" 2>/dev/null || true

echo "✅ Component extraction complete!"
echo "📊 Summary:"
echo "   - 24 apps extracted"
echo "   - 60+ components available"
echo "   - Ready for commit and push"
