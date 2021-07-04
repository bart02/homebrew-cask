cask "qgroundcontrol" do
  version "4.0.11"
  sha256 :no_check

  url "https://qgroundcontrol.s3.amazonaws.com/latest/QGroundControl.dmg",
      verified: "qgroundcontrol.s3.amazonaws.com/latest/"
  name "QGroundControl"
  desc "Ground control station for drones"
  homepage "http://qgroundcontrol.com/"
  
  livecheck do
    url :url
    strategy :extract_plist
  end

  app "qgroundcontrol.app"
  
  uninstall quit: "org.qgroundcontrol.QGroundControl"
  
  zap trash: [
               '~/Library/Saved Application State/org.qgroundcontrol.QGroundControl.savedState',
               '~/Library/Caches/QGCMapCache300',
               '~/Library/Caches/QGroundControl.org',
               '~/Library/Preferences/org.qgroundcontrol.QGroundControl.plist',
               '~/Library/Application Support/CrashReporter/QGroundControl_*.plist',
               '~/Library/Logs/DiagnosticReports/QGroundControl_*.plist',
             ]
end
