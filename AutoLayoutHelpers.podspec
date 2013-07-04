Pod::Spec.new do |s|
  s.name         = "AutoLayoutHelpers"
  s.version      = "1.0.0"
  s.summary      = "Helpers for auto layout."
  s.description  = <<-DESC
##Before
```
NSLayoutConstraint *left = [NSLayoutConstraint constraintWithItem:self.titleBar
                                                       attribute:NSLayoutAttributeLeft
                                                       relatedBy:NSLayoutRelationEqual
                                                          toItem:self.view
                                                       attribute:NSLayoutAttributeLeft
                                                      multiplier:1.0 constant:10.0];

```
##After
```
NSLayoutConstraint *left = constraintLeft(self.titleBar, self.view, 10);
```

As easy as that.
                   DESC
  s.homepage     = "https://github.com/mobitar/AutolayoutHelpers"
  s.license      = 'MIT'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Mo Bitar" => "me@mbbitar.com" }
  s.source       = { :git => "https://github.com/cabbiepete/AutolayoutHelpers.git", :tag => "1.0.0" }
  s.platform     = :ios

  s.source_files = '*.{h,m}'

  s.requires_arc = true
end
