#!/bin/bash

# GTCX Agile Ecosystem - Commit Hook Script
# This script encourages frequent commits and pushes

echo "🚀 GTCX Agile Ecosystem - Commit Hook"
echo "======================================"

# Check if we're in a git repository
if [ ! -d ".git" ]; then
    echo "❌ Not in a git repository"
    exit 1
fi

# Get current branch
CURRENT_BRANCH=$(git branch --show-current)
echo "📍 Current branch: $CURRENT_BRANCH"

# Check for uncommitted changes
if [ -n "$(git status --porcelain)" ]; then
    echo "📝 Found uncommitted changes:"
    git status --short
    
    echo ""
    echo "💡 Recommended actions:"
    echo "1. git add .                    # Stage all changes"
    echo "2. git commit -m 'message'      # Commit with descriptive message"
    echo "3. git push origin $CURRENT_BRANCH  # Push to remote"
    
    # Auto-commit if requested
    read -p "🤖 Would you like to auto-commit these changes? (y/n): " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        echo "🔄 Auto-committing changes..."
        git add .
        git commit -m "🤖 Auto-commit: Update agile templates and protocols [skip ci]"
        echo "✅ Changes committed successfully!"
        
        # Auto-push if requested
        read -p "🚀 Would you like to push to remote? (y/n): " -n 1 -r
        echo
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            echo "🔄 Pushing to remote..."
            git push origin $CURRENT_BRANCH
            echo "✅ Changes pushed successfully!"
        fi
    fi
else
    echo "✅ No uncommitted changes found"
    echo "💡 Repository is up to date!"
fi

echo ""
echo "🎯 Remember: Commit and push often to:"
echo "   - Keep your work safe"
echo "   - Enable team collaboration"
echo "   - Track progress effectively"
echo "   - Maintain version history"
echo ""
echo "🔄 Next recommended commit: $(date -d '+2 hours' '+%H:%M')"
