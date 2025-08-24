#!/bin/bash

  # Kevin Bell's Claude Code Agents - Auto-Installer
  # Built by a cop who codes before dawn ☕

  echo "🤖 Installing Kevin Bell's Claude Code Agents..."
  echo "   Built by a cop who codes before dawn ☕"
  echo ""

  # Find Claude Code rules directory (check common locations)
  CLAUDE_RULES_DIR=""
  if [ -d "$HOME/.config/claude-code/rules" ]; then
      CLAUDE_RULES_DIR="$HOME/.config/claude-code/rules"
  elif [ -d "$HOME/.claude/rules" ]; then
      CLAUDE_RULES_DIR="$HOME/.claude/rules"
  elif [ -d "$HOME/Library/Application Support/Claude Code/rules" ]; then
      CLAUDE_RULES_DIR="$HOME/Library/Application Support/Claude Code/rules"
  elif [ -d "$HOME/AppData/Roaming/Claude Code/rules" ]; then
      CLAUDE_RULES_DIR="$HOME/AppData/Roaming/Claude Code/rules"
  fi

  if [ -n "$CLAUDE_RULES_DIR" ]; then
      echo "📂 Found Claude Code rules folder: $CLAUDE_RULES_DIR"
      echo ""

      # Download App Progress Tracker
      echo "📱 Installing App Progress Tracker..."
      if curl -s -o "$CLAUDE_RULES_DIR/app-tracker.mdc"
  https://raw.githubusercontent.com/Kettlebell319/claude-agents/main/app-progress-tracker.mdc; then
          echo "   ✅ App Progress Tracker installed"
      else
          echo "   ❌ Failed to install App Progress Tracker"
      fi

      # Download GitHub Profile Generator
      echo "🎯 Installing GitHub Profile Generator..."
      if curl -s -o "$CLAUDE_RULES_DIR/github-profile-generator.mdc"
  https://raw.githubusercontent.com/Kettlebell319/claude-agents/main/github-profile-generator.mdc; then
          echo "   ✅ GitHub Profile Generator installed"
      else
          echo "   ❌ Failed to install GitHub Profile Generator"
      fi

      echo ""
      echo "🎉 Installation Complete!"
      echo ""
      echo "🚀 Ready to use! Try asking Claude:"
      echo "   • 'Create my app tracker'"
      echo "   • 'Build my GitHub profile'"
      echo "   • 'Update my project progress'"
      echo ""
      echo "💡 Need help? Check out: https://github.com/Kettlebell319/claude-agents"

  else
      echo "⚠️  Couldn't auto-detect your Claude Code rules folder."
      echo ""
      echo "📥 Downloading to current directory instead..."

      # Create local directory and download
      mkdir -p claude-code-agents
      cd claude-code-agents

      curl -s -o app-tracker.mdc
  https://raw.githubusercontent.com/Kettlebell319/claude-agents/main/app-progress-tracker.mdc
      curl -s -o github-profile-generator.mdc
  https://raw.githubusercontent.com/Kettlebell319/claude-agents/main/github-profile-generator.mdc

      echo "✅ Agents downloaded to: $(pwd)"
      echo ""
      echo "📁 Manual Setup Required:"
      echo "1. Find your Claude Code rules folder"
      echo "2. Copy the .mdc files there"
      echo "3. Ask Claude: 'Create my app tracker'"
      echo ""
  fi

  echo "☕ Happy early morning coding!"
  echo "📺 More tools: https://www.youtube.com/@OfficialKevinBell"
  echo ""
