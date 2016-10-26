cask 'p4v' do
  version '2015.2-1312139'
  sha256 '7466f80e1eeb3cb31940de614505b9353ca15b5ea80e1016e5eb037096687f59'

  url "http://filehost.perforce.com/perforce/r#{version.sub(%r{\A20(\d\d\.\d+).*}, '\1')}/bin.macosx107x86_64/P4V.dmg"
  name 'Perforce Visual Client'
  name 'P4V'
  homepage 'https://www.perforce.com/product/components/perforce-visual-client'

  app 'p4v.app'
  binary 'p4vc'

  zap delete: [
                '~/Library/Preferences/com.perforce.p4v',
                '~/Library/Preferences/com.perforce.p4v.plist',
                '~/Library/Saved Application State/com.perforce.p4v.savedState',
              ]
end
