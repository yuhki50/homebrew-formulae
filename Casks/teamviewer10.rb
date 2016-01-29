cask 'teamviewer10' do
  version '10.0.52680'
  sha256 :no_check

  url 'http://download.teamviewer.com/download/version_10x/TeamViewer.dmg'
  name 'TeamViewer'
  homepage 'https://www.teamviewer.com/'
  license :freemium

  pkg 'Install TeamViewer.pkg'

  uninstall pkgutil:   'com.teamviewer.*',
            launchctl: 'com.teamviewer.service',
            delete:    [
                         '/Aplications/TeamViewer.app',
                         '/Library/LaunchAgents/com.teamviewer.teamviewer_desktop.plist',
                         '/Library/LaunchAgents/com.teamviewer.teamviewer.plist',
                         '/Library/LaunchDaemons/com.teamviewer.Helper.plist',
                         '/Library/LaunchDaemons/com.teamviewer.teamviewer_service.plist',
                       ]

  zap       delete: [
                      '~/Library/Caches/com.teamviewer.TeamViewer',
                      '~/Library/Logs/TeamViewer',
                    ]
end
