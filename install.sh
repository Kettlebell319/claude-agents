 #!/bin/bash

  # Kevin Bell's Claude Code Agents Installer
  # Built by a cop who codes before dawn ☕

  echo "🤖 Installing Kevin Bell's Claude Code Agents..."
  echo ""

  # Create directory if it doesn't exist
  mkdir -p claude-code-agents
  cd claude-code-agents

  # Download App Progress Tracker
  echo "📱 Downloading App Progress Tracker..."
  if curl -s -o app-progress-tracker.mdc
  https://raw.githubusercontent.com/Kettlebell319/claude-agents/main/app-progress-tracker.mdc; then
      echo "   ✅ App Progress Tracker downloaded"
  else
      echo "   ❌ Failed to download App Progress Tracker"
  fi

  # Download GitHub Profile Generator
  echo "🎯 Downloading GitHub Profile Generator..."
  if curl -s -o github-profile-generator.mdc
  https://raw.githubusercontent.com/Kettlebell319/claude-agents/main/github-profile-generator.mdc; then
      echo "   ✅ GitHub Profile Generator downloaded"
  else
      echo "   ❌ Failed to download GitHub Profile Generator"
  fi

  echo ""
  echo "🎉 Installation Complete!"
  echo ""
  echo "📂 Agents saved to: $(pwd)"
  echo ""
  echo "🔧 Next Steps:"
  echo "1. Copy the .mdc files to your Claude Code rules folder"
  echo "2. Ask Claude: 'create app tracker' or 'build GitHub profile'"
  echo ""
  echo "☕ Happy early morning coding!"
  echo ""
  echo "📺 More tools at: https://www.youtube.com/@OfficialKevinBell"
