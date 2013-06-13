# A failing example for clayallsopp/afmotion#10

## My Versions

```shell
$ motion -v
2.2
$ ruby -v
ruby 1.9.3p392 (2013-02-22 revision 39386) [x86_64-darwin12.3.0]
```

[Gemfile.lock](https://github.com/amiel/afmotion_issue_10/blob/master/Gemfile.lock) and
[vendor/Podfile.lock](https://github.com/amiel/afmotion_issue_10/blob/master/vendor/Podfile.lock)
have other relevant versions.

## Steps

```shell
$ git clone https://github.com/amiel/afmotion_issue_10.git
$ cd afmotion_issue_10
$ bundle
$ rake
```

## Error

Rake output for me:

```
     Build ./build/iPhoneSimulator-6.1-Development
     Build vendor/Pods
Build settings from command line:
    ARCHS = i386
    CONFIGURATION_BUILD_DIR = /Users/amiel/src/tests/afmotion_issue_10/vendor/Pods/.build
    IPHONEOS_DEPLOYMENT_TARGET = 6.1
    SDKROOT = iphonesimulator6.1

=== BUILD NATIVE TARGET Pods OF PROJECT Pods WITH CONFIGURATION Release ===
Check dependencies

```

_snip_ (tons of Pod build messages)

```
** BUILD SUCCEEDED **

   Compile ./app/app_delegate.rb
    Create ./build/iPhoneSimulator-6.1-Development/afnetworkingtest.app
      Link ./build/iPhoneSimulator-6.1-Development/afnetworkingtest.app/afnetworkingtest
    Create ./build/iPhoneSimulator-6.1-Development/afnetworkingtest.app/Info.plist
    Create ./build/iPhoneSimulator-6.1-Development/afnetworkingtest.app/PkgInfo
      Copy ./resources/Default-568h@2x.png
    Create ./build/iPhoneSimulator-6.1-Development/afnetworkingtest.dSYM
  Simulate ./build/iPhoneSimulator-6.1-Development/afnetworkingtest.app
(main)> 2013-06-13 11:11:58.748 afnetworkingtest[41785:c07] http.rb:37:in `parameter_encoding': uninitialized constant AFMotion::HTTP::AFFormURLParameterEncoding (NameError)
        from app_delegate.rb:3:in `application:didFinishLaunchingWithOptions:'
2013-06-13 11:11:58.750 afnetworkingtest[41785:c07] *** Terminating app due to uncaught exception 'NameError', reason: 'http.rb:37:in `parameter_encoding': uninitialized constant AFMotion::HTTP::AFFormURLParameterEncoding (NameError)
        from app_delegate.rb:3:in `application:didFinishLaunchingWithOptions:'
'
*** First throw call stack:
(0x19df012 0x224e7e 0x12cc0d 0x17362 0x17055 0x1)
libc++abi.dylib: terminate called throwing an exception
*** simulator session ended with error: Error Domain=DTiPhoneSimulatorErrorDomain Code=1 "The simulated application quit." UserInfo=0x1001aa750 {NSLocalizedDescription=The simulated application quit., DTiPhoneSimulatorUnderlyingErrorCodeKey=-1}
rake aborted!
Command failed with status (1): [DYLD_FRAMEWORK_PATH="/Applications/Xcode.a...]
/usr/local/rvm/gems/ruby-1.9.3-p392@global/gems/rake-10.0.4/lib/rake/file_utils.rb:53:in `block in create_shell_runner'
/usr/local/rvm/gems/ruby-1.9.3-p392@global/gems/rake-10.0.4/lib/rake/file_utils.rb:45:in `call'
/usr/local/rvm/gems/ruby-1.9.3-p392@global/gems/rake-10.0.4/lib/rake/file_utils.rb:45:in `sh'
/usr/local/rvm/gems/ruby-1.9.3-p392@global/gems/rake-10.0.4/lib/rake/file_utils_ext.rb:37:in `sh'
/Library/RubyMotion/lib/motion/project/template/ios.rb:109:in `block in <top (required)>'
/usr/local/rvm/gems/ruby-1.9.3-p392@global/gems/rake-10.0.4/lib/rake/task.rb:246:in `call'
/usr/local/rvm/gems/ruby-1.9.3-p392@global/gems/rake-10.0.4/lib/rake/task.rb:246:in `block in execute'
/usr/local/rvm/gems/ruby-1.9.3-p392@global/gems/rake-10.0.4/lib/rake/task.rb:241:in `each'
/usr/local/rvm/gems/ruby-1.9.3-p392@global/gems/rake-10.0.4/lib/rake/task.rb:241:in `execute'
/usr/local/rvm/gems/ruby-1.9.3-p392@global/gems/rake-10.0.4/lib/rake/task.rb:184:in `block in invoke_with_call_chain'
/usr/local/rvm/gems/ruby-1.9.3-p392@global/gems/rake-10.0.4/lib/rake/task.rb:177:in `invoke_with_call_chain'
/usr/local/rvm/gems/ruby-1.9.3-p392@global/gems/rake-10.0.4/lib/rake/task.rb:205:in `block in invoke_prerequisites'
/usr/local/rvm/gems/ruby-1.9.3-p392@global/gems/rake-10.0.4/lib/rake/task.rb:203:in `each'
/usr/local/rvm/gems/ruby-1.9.3-p392@global/gems/rake-10.0.4/lib/rake/task.rb:203:in `invoke_prerequisites'
/usr/local/rvm/gems/ruby-1.9.3-p392@global/gems/rake-10.0.4/lib/rake/task.rb:183:in `block in invoke_with_call_chain'
/usr/local/rvm/gems/ruby-1.9.3-p392@global/gems/rake-10.0.4/lib/rake/task.rb:177:in `invoke_with_call_chain'
/usr/local/rvm/gems/ruby-1.9.3-p392@global/gems/rake-10.0.4/lib/rake/task.rb:170:in `invoke'
/usr/local/rvm/gems/ruby-1.9.3-p392@global/gems/rake-10.0.4/lib/rake/application.rb:143:in `invoke_task'
/usr/local/rvm/gems/ruby-1.9.3-p392@global/gems/rake-10.0.4/lib/rake/application.rb:101:in `block (2 levels) in top_level'
/usr/local/rvm/gems/ruby-1.9.3-p392@global/gems/rake-10.0.4/lib/rake/application.rb:101:in `each'
/usr/local/rvm/gems/ruby-1.9.3-p392@global/gems/rake-10.0.4/lib/rake/application.rb:101:in `block in top_level'
/usr/local/rvm/gems/ruby-1.9.3-p392@global/gems/rake-10.0.4/lib/rake/application.rb:110:in `run_with_threads'
/usr/local/rvm/gems/ruby-1.9.3-p392@global/gems/rake-10.0.4/lib/rake/application.rb:95:in `top_level'
/usr/local/rvm/gems/ruby-1.9.3-p392@global/gems/rake-10.0.4/lib/rake/application.rb:73:in `block in run'
/usr/local/rvm/gems/ruby-1.9.3-p392@global/gems/rake-10.0.4/lib/rake/application.rb:160:in `standard_exception_handling'
/usr/local/rvm/gems/ruby-1.9.3-p392@global/gems/rake-10.0.4/lib/rake/application.rb:70:in `run'
/usr/local/rvm/gems/ruby-1.9.3-p392/bin/ruby_noexec_wrapper:14:in `eval'
/usr/local/rvm/gems/ruby-1.9.3-p392/bin/ruby_noexec_wrapper:14:in `<main>'
Tasks: TOP => default => simulator
(See full trace by running task with --trace)
```
