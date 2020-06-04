#!/bin/sh
printf "%s\n\n"  "Global settings."

read -p "Computer Name: " computerName

# Set appearance
# Blue     : 1
# Graphite : 6
defaults write NSGlobalDomain AppleAquaColorVariant -int 6

# Highlight color
# Graphite : `0.780400 0.815700 0.858800`
# Silver   : `0.776500 0.776500 0.776500`
# Blue     : `0.709800 0.835300 1.000000`
defaults write NSGlobalDomain AppleHighlightColor -string '0.780400 0.815700 0.858800'


# Automatically hide and show the menu bar
defaults write NSGlobalDomain "_HIHideMenuBar" -bool true

# Allow Handoff between this Mac and your iCloud devices
defaults write ~/Library/Preferences/ByHost/com.apple.coreservices.useractivityd ActivityAdvertisingAllowed -bool true
defaults write ~/Library/Preferences/ByHost/com.apple.coreservices.useractivityd ActivityReceivingAllowed -bool true

# Disable Crash Reporter dialog
defaults write com.apple.CrashReporter DialogType none

# Display crash reports in Notification Center (instead of dialog)
defaults write com.apple.CrashReporter UseUNC 1

# Save to iCloud by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool true

# Shake mouse cursor to locate
defaults write CGDisableCursorLocationMagnification -bool false

# Download newly available updates in the background
sudo defaults write /Library/Preferences/com.apple.SoftwareUpdate AutomaticDownload -bool true

# Install app updates
sudo defaults write /Library/Preferences/com.apple.commerce AutoUpdate -bool true

# Install macOS updates
sudo defaults write /Library/Preferences/com.apple.commerce AutoUpdateRestartRequired -bool true



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

# Use smart quotes
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Set Double and Single quotes
defaults write NSGlobalDomain NSUserQuotesArray -array '"\""' '"\""' '"'\''"' '"'\''"'

# Use smart dashes
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Correct spelling automatically
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Set Metric Units
defaults write NSGlobalDomain AppleMetricUnits -bool true

# Mission Control animation duration
defaults write com.apple.dock expose-animation-duration -float 0.1

# Automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false

# When switching to an application, switch to a Space with open windows for the application
defaults write NSGlobalDomain AppleSpacesSwitchOnActivate -bool true

# Group windows by application in Mission Control
# (i.e. use the old Exposé behavior instead)
defaults write com.apple.dock expose-group-by-app -bool false

# Displays have seperate Spaces
defaults write com.apple.spaces spans-displays -bool false

# Show Time Connected in VPN menubar item
defaults write com.apple.networkConnect VPNShowTime -bool false

# Show Status When Connecting in VPN menubar item
defaults write com.apple.networkConnect VPNShowStatus -bool false

# Notification banner on screen time
# Default 5 seconds
defaults write com.apple.notificationcenterui bannerTime 2

# Automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Allow applications downloaded from anywhere
sudo spctl --master-disable

# Firewall logging
sudo defaults write /Library/Preferences/com.apple.alf loggingenabled -bool false

# Stealth mode
sudo defaults write /Library/Preferences/com.apple.alf stealthenabled -bool true

sudo scutil --set ComputerName "$computerName"
sudo scutil --set HostName "$computerName"

# Disable the sound effects on boot
sudo nvram SystemAudioVolume=" "

# Allow guests to login to this computer
sudo defaults write /Library/Preferences/com.apple.loginwindow GuestEnabled -bool false

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

# Remove all (default) app icons from the Dock
# defaults write com.apple.dock persistent-apps -array

# printf "%s\n"  "- Wipe all (default) app icons from the Dock and show only active apps."
# defaults write com.apple.dock static-only -boolean true

# Prefer tabs when opening documents: 'always', 'fullscreen', 'manual'
defaults write NSGlobalDomain AppleWindowTabbingMode -string 'always'

# Lock the Dock size
defaults write com.apple.dock size-immutable -bool true

# Dock magnification
defaults write com.apple.dock magnification -bool false

# Double-click a window's title bar to:
# None
# Mimimize
# Maximize (zoom)
defaults write NSGlobalDomain AppleActionOnDoubleClick -string "Maximize"

# Auto-hide delay
defaults write com.apple.dock autohide-delay -float 0

# Spring loaded Dock items
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true

# Show indicator lights for open applications
defaults write com.apple.dock show-process-indicators -bool true

# Apple may use this preference to automatically add Launchpad to the Dock
defaults write com.apple.dock 'checked-for-launchpad' -bool true

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

  printf "%s\n"  "- Set up IP block list."
  defaults write org.m0k.transmission BlocklistNew -bool true
  defaults write org.m0k.transmission BlocklistURL -string "http://john.bitsurge.net/public/biglist.p2p.gz"
  defaults write org.m0k.transmission BlocklistAutoUpdate -bool true

  printf "%s\n\n"  "iTrerm2.app."

  printf "%s\n"  "- Use the preferences in the iCloud folder."
  defaults write com.googlecode.iterm2 PrefsCustomFolder -string "/Users/andrei/Documents/configs/iterm"
fi
