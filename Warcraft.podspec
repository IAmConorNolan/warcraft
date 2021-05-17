Pod::Spec.new do |spec|
  spec.name = "Warcraft"
  spec.version = "0.0.1"
  spec.summary = "Warcraft SDK #{spec.version.to_s}"
  spec.homepage = "https://github.com/IAmConorNolan/warcraft"
  spec.license      = { :type => 'MIT' }
  spec.authors      = { 'Conor Nolan' => 'IAmConorNolan@gmail.com' }
  spec.requires_arc = true
  spec.swift_version = '5.3'
  spec.source       = { :git => "https://github.com/IAmConorNolan/warcraft.git", :tag => spec.version }
  spec.vendored_frameworks = 'Warcraft.xcframework'
  spec.preserve_paths = 'Warcraft.xcframework', 'Warcraft.dSYMs/*.dSYM', 'Warcraft.BCSymbolMaps/*.bc'
end
