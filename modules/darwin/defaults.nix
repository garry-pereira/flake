{ pkgs, ... }: {
system.defaults = {
  dock.autohide = true;

  NSGlobalDomain = {
    AppleInterfaceStyle = "Dark";
    AppleShowAllExtensions = true;
    AppleShowAllFiles = true;
    NSAutomaticCapitalizationEnabled = false;
    NSAutomaticDashSubstitutionEnabled = false;
    NSAutomaticInlinePredictionEnabled = false;
    NSAutomaticPeriodSubstitutionEnabled = false;
    NSAutomaticQuoteSubstitutionEnabled = false;
    NSAutomaticSpellingCorrectionEnabled = false;
    NSDocumentSaveNewDocumentsToCloud = false;
    _HIHideMenuBar = true;
  };
  
  finder = {
    FXPreferredViewStyle = "Nlsv";
    NewWindowTarget = "Home";
    ShowPathbar = true;
    ShowStatusBar = true;
    _FXShowPosixPathInTitle = true;
  };

  loginwindow = {
    GuestEnabled = false;
    PowerOffDisabledWhileLoggedIn = true;
    RestartDisabled = true;
    RestartDisabledWhileLoggedIn = true;
    SHOWFULLNAME = true;
    ShutDownDisabled = true;
    ShutDownDisabledWhileLoggedIn = true;
    SleepDisabled = true;
  };

  screensaver = {
    askForPassword = true;
    askForPasswordDelay = 0;
  };
};
}
