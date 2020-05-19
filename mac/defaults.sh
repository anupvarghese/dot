defaults write com.apple.dashboard mcx-disabled -bool true

defaults write com.apple.finder ShowStatusBar -bool true

defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

for app in "Address Book" "Calendar" "Contacts" "Dock" "Finder" "Mail" "Safari" "SystemUIServer" "iCal"; do
  killall "${app}" &> /dev/null
done

sleep 1

defaults write com.apple.screencapture location -string "$HOME/Desktop/screenshots"
defaults write com.apple.screencapture type -string "jpg"


defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true


# Show the main window when launching Activity Monitor
defaults write com.apple.ActivityMonitor OpenMainWindow -bool true

# Visualize CPU usage in the Activity Monitor Dock icon
defaults write com.apple.ActivityMonitor IconType -int 5

# Show all processes in Activity Monitor
defaults write com.apple.ActivityMonitor ShowCategory -int 0

# Sort Activity Monitor results by CPU usage
defaults write com.apple.ActivityMonitor SortColumn -string "CPUUsage"
defaults write com.apple.ActivityMonitor SortDirection -int 0