Pod::Spec.new do |spec|
  spec.name         = "XConstraintKit"
  spec.version      = "0.0.1"
  spec.summary      = "A UIKit NSLayoutConstraint helper Library."
  spec.license      = { :type => 'BSD' }
  
  spec.description  = <<-DESC
  A UIKit NSLayoutConstraint helper Library.
  // using `XLayoutAxisConstraintable`
self.view.addSubview(backgroundView)
        
let constraints: [XLayoutAxisConstraintable] = [XHorizontalConstraint.left(),
                                            XHorizontalConstraint.right(),
                                            XVerticalConstraint.top(),
                                            XVerticalConstraint.bottom()]
 constraints.activateConstraints(for: self.view, with: backgroundView)
DESC

  spec.homepage       = 'https://github.com/Ajaya1000/XConstraintKit'
  spec.author             = { "Ajaya Mati" => "ajaymati1000@gmail.com" }
  
  spec.source       = { :git => "https://github.com/Ajaya1000/XConstraintKit.git", :tag => "#{spec.version}" }
  spec.ios.deployment_target  = '16.2'

  spec.source_files  = "Source/**/*.{swift}"

  # ――― Resources ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  A list of resources included with the Pod. These are copied into the
  #  target bundle with a build phase script. Anything else will be cleaned.
  #  You can preserve files from being cleaned, please don't preserve
  #  non-essential files like tests, examples and documentation.
  #

  # spec.resource  = "icon.png"
  # spec.resources = "Resources/*.png"

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"


  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  Link your library with frameworks, or libraries. Libraries do not include
  #  the lib prefix of their name.
  #

  # spec.framework  = "SomeFramework"
  # spec.frameworks = "SomeFramework", "AnotherFramework"

  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"


  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  #
  #  If your library depends on compiler flags you can set them in the xcconfig hash
  #  where they will only apply to your library. If you depend on other Podspecs
  #  you can include multiple dependencies to ensure it works.

  # spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # spec.dependency "JSONKit", "~> 1.4"

end
