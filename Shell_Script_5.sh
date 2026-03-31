#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Prem Kumar | Course: Open Source Software
echo "------------------------------------------"
echo "   THE OPEN SOURCE MANIFESTO GENERATOR"
echo "------------------------------------------"
echo "Answer three questions to generate your manifesto."
echo ""
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD
DATE=$(date '+%d %B %Y')
USER_ID=$(whoami)
OUTPUT="manifesto_${USER_ID}.txt"

echo "THE OPEN SOURCE MANIFESTO" > "$OUTPUT"
echo "Generated on: $DATE" >> "$OUTPUT"
echo "------------------------------------------" >> "$OUTPUT"
echo "As a member of the open-source community, I recognize that tools 
like $TOOL are the foundation of modern technology. To me, the core 
of this movement is $FREEDOM. Because of this, I commit to 
contributing back to the world by promising to build $BUILD 
and share it freely with others." >> "$OUTPUT"

echo "" >> "$OUTPUT"
echo "Signed, $USER_ID" >> "$OUTPUT"

echo ""
echo "Manifesto successfully saved to $OUTPUT"
echo "------------------------------------------"
cat "$OUTPUT"
