#!/bin/sh
printf "%s\n\n"  "Global settings."

printf "%s\n"  "- Expand save panel."
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

printf "%s\n"  "- Expand print panel."
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

printf "%s\n"  "- Check for software updates daily, not just once per week."
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

printf "%s\n"  "- Use scroll gesture with the Ctrl (^) modifier key to zoom."
defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true
defaults write com.apple.universalaccess HIDScrollZoomModifierMask -int 262144

printf "%s\n"  "- Enable Firewalll."
sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate on

printf "%s\n\n"  "Screensaver."

printf "%s\n"  "- Set immidiate lock."
defaults write com.apple.screensaver askForPasswordDelay -int 0

printf "%s\n"  "- Ask for password."
defaults write com.apple.screensaver askForPassword -int 1

printf "%s\n\n"  "Menu bar settings."

printf "%s\n"  "- Customize the clock look."
defaults write com.apple.menuextra.clock DateFormat -string "EEE d MMM  HH:mm:ss"

printf "%s\n"  "- Change the battery to show the percentage."
defaults write com.apple.menuextra.battery ShowPercent -string "YES"

printf "%s\n\n"  "Keyboard settings."

printf "%s\n"  "- Set Keyboard > Key Repeat to be the fastest possible from System Preferences."
defaults write NSGlobalDomain KeyRepeat -integer 2

printf "%s\n"  "- Set Keyboard > Delay Until Repeat to be the fastest possible from System Preferences."
defaults write NSGlobalDomain InitialKeyRepeat -integer 15

printf "%s\n"  "- Disable keyboard autocorrect."
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false

printf "%s\n"  "- Enable Tab in modal dialogs."
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

printf "%s\n\n"  "Trackpad."

printf "%s\n"  "- Enable three finger drag."
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -integer 1
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerHorizSwipeGesture -integer 0
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerVertSwipeGesture -integer 0
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -integer 1
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerHorizSwipeGesture -integer 0
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerVertSwipeGesture -integer 0
defaults write NSGlobalDomain com.apple.trackpad.threeFingerSwipeGesture -integer 1

printf "%s\n"  "- Enable four finger Exposé."
defaults write com.apple.dock showAppExposeGestureEnabled -integer 1

printf "%s\n\n"  "Dock."

printf "%s\n"  "- Turn on dock autohiding."
defaults write com.apple.Dock autohide -boolean true

printf "%s\n"  "- Resize dock tiles."
defaults write com.apple.Dock tilesize -integer 48

printf "%s\n"  "- Wipe all (default) app icons from the Dock and show only active apps."
defaults write com.apple.dock static-only -boolean true

printf "%s\n"  "- Highlight hidden apps in the Dock."
defaults write com.apple.Dock showhidden -boolean yes;

printf "%s\n"  "- Minimise app to it's icon."
defaults write com.apple.dock minimize-to-application -boolean YES


printf "%s\n\n"  "Finder."

printf "%s\n"  "- Set default path to HOME directory."
defaults write com.apple.finder NewWindowTarget -string "PfLo"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/"

printf "%s\n"  "- When performing a search, search the current folder by default."
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

printf "%s\n"  "- Avoid creating .DS_Store files on network volumes."
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

printf "%s\n"  "- Enable snap-to-grid for icons on the desktop and in other icon views."
/usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
/usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist

printf "%s\n"  "- Use list view in all Finder windows by default."
# Four-letter codes for all views: `icnv`, `Nlsv`, `clmv`, `Flwv`.
defaults write com.apple.finder FXPreferredViewStyle -string "clmv"

printf "%s\n"  "- Expand the following File Info panes: General, Open with, and Sharing & Permissions."
defaults write com.apple.finder FXInfoPanesExpanded -dict \
  General -bool true \
  OpenWith -bool true \
  Privileges -bool true

printf "%s\n"  "- Hide icons for hard drives, servers, and removable media on the desktop."
defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowMountedServersOnDesktop -bool false
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool false

printf "%s\n\n"  "Safari."

printf "%s\n"  "- Set home page to about:blank."
defaults write com.apple.Safari HomePage -string "about:blank"

printf "%s\n"  "- Always show tab bar."
defaults write com.apple.Safari AlwaysShowTabBar -boolean true

printf "%s\n"  "- Enable Safari’s debug menu."
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

printf "%s\n"  "- Make Safari’s search banners default to Contains instead of Starts With."
defaults write com.apple.Safari FindOnPageMatchesWordStartsOnly -bool false

printf "%s\n"  "- Enable the Develop menu and the Web Inspector in Safari."
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true

printf "%s\n"  "- Change search engine to DuckDuckGo."


if [ $1 ] && [ $1 == $FLAG ]; then

  printf "%s\n\n"  "Transmission.app."

  printf "%s\n"  "- Use ~/Downloads to store incomplete downloads, and as default download folder."
  defaults write org.m0k.transmission UseIncompleteDownloadFolder -bool true
  defaults write org.m0k.transmission IncompleteDownloadFolder -string "${HOME}/Downloads"
  defaults write org.m0k.transmission DownloadLocationConstant -integer 1

  printf "%s\n"  "- Don’t prompt for confirmation before downloading."
  defaults write org.m0k.transmission DownloadAsk -bool false

  printf "%s\n"  "- Trash original torrent files."
  defaults write org.m0k.transmission DeleteOriginalTorrent -bool true

  printf "%s\n"  "- Hide the donate message."
  defaults write org.m0k.transmission WarningDonate -bool false

  printf "%s\n"  "- Hide the legal disclaimer."
  defaults write org.m0k.transmission WarningLegal -bool false
  
fi
