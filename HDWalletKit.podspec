Pod::Spec.new do |s|
  s.name             = 'HdWalletKit'
  s.version          = '1.0.0'
  s.summary          = 'Swift HD Wallet implementation.'
  s.description      = <<-DESC
HdWalletKit is a comprehensive Swift implementation of Hierarchical Deterministic (HD) Wallet 
with robust crypto utilities. It supports multiple cryptocurrencies and provides secure key 
generation and management.
  DESC
  s.homepage         = 'https://github.com/tianqi0329/wallet-/HdWalletKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'tianqi0329' => 'tianqi_xinya@163.com' }

  # 仓库源码
  s.source           = { :git => 'git@github.com:tianqi0329/wallet-.git', :tag => s.version.to_s }

  # 平台和 Swift 版本
  s.ios.deployment_target = '13.0'
  s.swift_version = '5.6'

  # CocoaPods 依赖（注意：如果库没有 pod，需要在 Podfile 中用 Git 引用）
  s.dependency 'swift-crypto'
  s.dependency 'secp256k1.swift'
  s.dependency 'HsCryptoKit.Swift'

  # 代码文件
  s.source_files = 'HdWalletKit/Sources/**/*.swift'

  # 排除测试文件
  s.exclude_files = 'HdWalletKit/Tests/**/*'

  # 编译优化（可选）
  s.pod_target_xcconfig = {
    'SWIFT_OPTIMIZATION_LEVEL' => '-O',
    'SWIFT_COMPILATION_MODE' => 'wholemodule'
  }
end
