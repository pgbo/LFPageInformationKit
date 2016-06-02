Pod::Spec.new do |spec|
    spec.name                  = 'LFPageInformationKit'
    spec.version               = '1.0.0'
    spec.summary               = 'Handily and simply extend display information in a view'

    spec.description           = <<-DESC
                               A kit that handily and simply extend display information in a view.
                               DESC

    spec.homepage              = 'https://github.com/pgbo/LFPageInformationKit.git'
    spec.license               = { :type => 'MIT', :file => 'LICENSE' }
    spec.author                = { 'guangbool' => '460667915@qq.com' }
    spec.social_media_url      = 'https://twitter.com/guangbool'
    spec.platform              = :ios, '7.0'
    spec.source                = { :git => 'https://github.com/pgbo/LFPageInformationKit.git', :tag => spec.version }
    spec.source_files          = 'LFPageInformationKit/**/*.{h,m}'
    spec.requires_arc          = true
    spec.frameworks            = 'UIKit', 'Foundation'

end