# Keyboard
defaults write -g InitialKeyRepeat -int 10
defaults write -g KeyRepeat -int 2

# Remap Capslock to option on Keychron K2 keyboard
defaults write -g com.apple.keyboard.modifiermapping.1452-591-0 \
  '{ HIDKeyboardModifierMappingDst = 30064771298; HIDKeyboardModifierMappingSrc = 30064771129; }'

# Use darkmode
defaults write -g AppleInterfaceStyle "Dark"

# Show hidden files by default
defaults write com.apple.finder AppleShowAllFiles YES

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Use list view in all Finder windows by default
# Four-letter codes for the other view modes: `icnv`, `clmv`, `glyv`
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Disable window animations and Get Info animations in Finder
defaults write com.apple.finder DisableAllAnimations -bool true

# Don’t animate opening applications from the Dock
defaults write com.apple.dock launchanim -bool false

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# Disable opening and closing window animations
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false

# Show the ~/Library folder
chflags nohidden ~/Library

# System Preferences > Desktop & Screen Saver > Start after: Never
defaults -currentHost write com.apple.screensaver idleTime -int 0

### Dock

# System Preferences > Dock > Size:
defaults write com.apple.dock tilesize -int 50

# System Preferences > Dock > Magnification:
defaults write com.apple.dock magnification -bool false

# System Preferences > Dock > Minimize windows into application icon
defaults write com.apple.dock minimize-to-application -bool true

# System Preferences > Dock > Automatically hide and show the Dock:
defaults write com.apple.dock autohide -bool false

# System Preferences > Dock > Automatically hide and show the Dock (duration)
defaults write com.apple.dock autohide-time-modifier -float 0.5

# System Preferences > Dock > Automatically hide and show the Dock (delay)
defaults write com.apple.dock autohide-delay -float 0

# System Preferences > Dock > Show indicators for open applications
defaults write com.apple.dock show-process-indicators -bool true

# Don’t show recent applications in Dock
defaults write com.apple.dock show-recents -bool false

# Don’t automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false


###  Trackpad

# System Preferences > Trackpad > Tap to click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true

# Silent clicking
defaults write com.apple.AppleMultitouchTrackpad ActuationStrength -int 0

# Haptic feedback
# 0: Light
# 1: Medium
# 2: Firm
defaults write com.apple.AppleMultitouchTrackpad FirstClickThreshold -int 0
defaults write com.apple.AppleMultitouchTrackpad SecondClickThreshold -int 0

### Mail.app

# Disable send and reply animations in Mail.app
defaults write com.apple.mail DisableReplyAnimations -bool true
defaults write com.apple.mail DisableSendAnimations -bool true

# Copy email addresses as `foo@example.com` instead of `Foo Bar <foo@example.com>` in Mail.app
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false

### Spotlight

defaults write com.apple.spotlight orderedItems -array \
	'{"enabled" = 1;"name" = "SYSTEM_PREFS";}' \
	'{"enabled" = 1;"name" = "APPLICATIONS";}' \
	'{"enabled" = 1;"name" = "DIRECTORIES";}' \
	'{"enabled" = 1;"name" = "PDF";}' \
	'{"enabled" = 1;"name" = "FONTS";}' \
	'{"enabled" = 0;"name" = "DOCUMENTS";}' \
	'{"enabled" = 0;"name" = "MESSAGES";}' \
	'{"enabled" = 0;"name" = "CONTACT";}' \
	'{"enabled" = 0;"name" = "EVENT_TODO";}' \
	'{"enabled" = 0;"name" = "IMAGES";}' \
	'{"enabled" = 0;"name" = "BOOKMARKS";}' \
	'{"enabled" = 0;"name" = "MUSIC";}' \
	'{"enabled" = 0;"name" = "MOVIES";}' \
	'{"enabled" = 0;"name" = "PRESENTATIONS";}' \
	'{"enabled" = 0;"name" = "SPREADSHEETS";}' \
	'{"enabled" = 0;"name" = "SOURCE";}' \
	'{"enabled" = 0;"name" = "MENU_DEFINITION";}' \
	'{"enabled" = 0;"name" = "MENU_OTHER";}' \
	'{"enabled" = 0;"name" = "MENU_CONVERSION";}' \
	'{"enabled" = 0;"name" = "MENU_EXPRESSION";}' \
	'{"enabled" = 0;"name" = "MENU_WEBSEARCH";}' \
	'{"enabled" = 0;"name" = "MENU_SPOTLIGHT_SUGGESTIONS";}'
# Load new settings before rebuilding the index
killall mds > /dev/null 2>&1
# Make sure indexing is enabled for the main volume
sudo mdutil -i on / > /dev/null
# Rebuild the index from scratch
sudo mdutil -E / > /dev/null

### Messages 

# Disable continuous spell checking
defaults write com.apple.messageshelper.MessageController SOInputLineSettings -dict-add "continuousSpellCheckingEnabled" -bool false

### Iterm2

# Don’t display the annoying prompt when quitting iTerm
defaults write com.googlecode.iterm2 PromptOnQuit -bool false

### Text shortcuts

defaults write -g NSUserDictionaryReplacementItems -array-add \
  '{ on = 1; replace = eyess; with = "\\Ud83d\\Udc40"; }'
defaults write -g NSUserDictionaryReplacementItems -array-add \
  '{ on = 1; replace = rolll; with = "\\Ud83d\\Ude44"; }'
defaults write -g NSUserDictionaryReplacementItems -array-add \
  '{ on = 1; replace = shragg; with = "\\U00af\\\\_(\\U30c4)_/\\U00af "; }'
defaults write -g NSUserDictionaryReplacementItems -array-add \
  '{ on = 1; replace = hugg; with = "\\Ud83e\\Udd17"; }'
defaults write -g NSUserDictionaryReplacementItems -array-add \
  '{ on = 1; replace = tonguee; with = "\\Ud83d\\Ude1c"; }'
defaults write -g NSUserDictionaryReplacementItems -array-add \
  '{ on = 1; replace = fancyy; with = "\\Ud83d\\Udc81\\Ud83c\\Udffb\\U200d\\U2642\\Ufe0f"; }'
defaults write -g NSUserDictionaryReplacementItems -array-add \
  '{ on = 1; replace = handss; with = "\\Ud83d\\Ude4c\\Ud83c\\Udffc"; }'
defaults write -g NSUserDictionaryReplacementItems -array-add \
  '{ on = 1; replace = heartss; with = "\\Ud83d\\Ude0d"; }'
defaults write -g NSUserDictionaryReplacementItems -array-add \
  '{ on = 1; replace = facee; with = "\\Ud83e\\Udd26\\Ud83c\\Udffb\\U200d\\U2642\\Ufe0f"; }'
defaults write -g NSUserDictionaryReplacementItems -array-add \
  '{ on = 1; replace = smirkk; with = "\\Ud83d\\Ude0f"; }'
defaults write -g NSUserDictionaryReplacementItems -array-add \
  '{ on = 1; replace = winkk; with = "\\Ud83d\\Ude09"; }'
defaults write -g NSUserDictionaryReplacementItems -array-add \
  '{ on = 1; replace = shyy; with = "\\Ud83d\\Ude05"; }'
defaults write -g NSUserDictionaryReplacementItems -array-add \
  '{ on = 1; replace = thinkk; with = "\\Ud83e\\Udd14"; }'
defaults write -g NSUserDictionaryReplacementItems -array-add \
  '{ on = 1; replace = cryy; with = "\\Ud83d\\Ude2d"; }'
defaults write -g NSUserDictionaryReplacementItems -array-add \
  '{ on = 1; replace = starr; with = "\\Ud83e\\Udd29"; }'
defaults write -g NSUserDictionaryReplacementItems -array-add \
  '{ on = 1; replace = smilee; with = "\\Ud83d\\Ude04"; }'
defaults write -g NSUserDictionaryReplacementItems -array-add \
  '{ on = 1; replace = monkeyy; with = "\\Ud83d\\Ude48"; }'
defaults write -g NSUserDictionaryReplacementItems -array-add \
  '{ on = 1; replace = shrugg; with = "\\Ud83e\\Udd37\\Ud83c\\Udffb\\U200d\\U2642\\Ufe0f"; }'
defaults write -g NSUserDictionaryReplacementItems -array-add \
  '{ on = 1; replace = kisss; with = "\\Ud83d\\Ude18"; }'
defaults write -g NSUserDictionaryReplacementItems -array-add \
  '{ on = 1; replace = joyy; with = "\\Ud83d\\Ude02"; }'
defaults write -g NSUserDictionaryReplacementItems -array-add \
  '{ on = 1; replace = sweatt; with = "\\Ud83d\\Ude05"; }'
