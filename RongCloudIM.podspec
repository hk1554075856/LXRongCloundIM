{
  "name": "RongCloudIM",
  "version": "2.9.8",
  "summary": "RongCloud IM SDK.(如果看不到最新版本，请使用 pod repo update 命令更新一下本地pod仓库，从 2.9.0 版本开始这里不再包含 CallKit 和 CallLib 类库的管理，音视频服务升级为融云自有音视频，声网用户请根据站内信提示更新)",
  "description": "RongCloud IM SDK for iOS.\n\n\n* Think: Why did you write this? What is the focus? What does it do?\n* CocoaPods will be using this to generate tags, and improve search results.\n* Try to keep it short, snappy and to the point.\n* Finally, don't worry about the indent, CocoaPods strips it!",
  "homepage": "http://rongcloud.cn/",
  "license": {
    "type": "Copyright",
    "text": "Copyright 2014 Rong Cloud"
  },
  "authors": {
    "litao": "litao@rongcloud.cn"
  },
  "social_media_url": "http://www.rongcloud.cn",
  "platforms": {
    "ios": "7.0"
  },
  "source": {
    "http": "http://downloads.rongcloud.cn/Rong_Cloud_iOS_IM_SDK_v2_9_8_Dev.zip"
  },
  "requires_arc": true,
  "subspecs": [
    {
      "name": "IMLib",
      "vendored_frameworks": "RongCloudIM/RongIMLib.framework",
      "libraries": [
        "stdc++",
        "sqlite3",
        "z"
      ],
      "resources": "RongCloudIM/RCConfig.plist",
      "xcconfig": {
        "OTHER_LDFLAGS": "-ObjC"
      },
      "vendored_libraries": "RongCloudIM/libopencore-amrnb.a"
    },
    {
      "name": "IMKit",
      "resources": [
        "RongCloudIM/RongCloud.bundle",
        "RongCloudIM/en.lproj",
        "RongCloudIM/zh-Hans.lproj",
        "RongCloudIM/Emoji.plist",
        "RongCloudIM/RCColor.plist"
      ],
      "vendored_frameworks": "RongCloudIM/RongIMKit.framework",
      "frameworks": [
        "AssetsLibrary",
        "MapKit",
        "ImageIO",
        "CoreLocation",
        "SystemConfiguration",
        "QuartzCore",
        "OpenGLES",
        "CoreVideo",
        "CoreTelephony",
        "CoreMedia",
        "CoreAudio",
        "CFNetwork",
        "AudioToolbox",
        "AVFoundation",
        "UIKit",
        "CoreGraphics",
        "SafariServices"
      ],
      "dependencies": {
        "RongCloudIM/IMLib": [

        ]
      }
    },
    {
      "name": "RedPacket",
      "vendored_frameworks": [
        "RongCloudIM/JrmfIMLib/JrmfPacketKit.framework",
        "RongCloudIM/JrmfIMLib/JYangToolKit.framework",
        "RongCloudIM/AlipaySDK/AlipaySDK.framework",
        "RongCloudIM/JrmfIMLib/JrmfWalletKit.framework"
      ],
      "resources": [
        "RongCloudIM/JrmfIMLib/JResource.bundle",
        "RongCloudIM/JrmfIMLib/en.lproj",
        "RongCloudIM/JrmfIMLib/zh-Hans.lproj",
        "RongCloudIM/JrmfIMLib/jrmf.cer",
        "RongCloudIM/AlipaySDK/AlipaySDK.bundle",
        "RongCloudIM/JrmfIMLib/WalletResource.bundle"
      ],
      "libraries": [
        "z",
        "xml2",
        "stdc++",
        "sqlite3",
        "c++",
        "c++abi"
      ],
      "frameworks": [
        "AssetsLibrary",
        "MapKit",
        "ImageIO",
        "CoreLocation",
        "SystemConfiguration",
        "QuartzCore",
        "OpenGLES",
        "CoreVideo",
        "CoreTelephony",
        "CoreMedia",
        "CoreAudio",
        "CFNetwork",
        "AudioToolbox",
        "AVFoundation",
        "UIKit",
        "CoreGraphics",
        "CoreMotion",
        "CoreText"
      ],
      "dependencies": {
        "RongCloudIM/IMKit": [

        ]
      }
    },
    {
      "name": "RongSticker",
      "vendored_frameworks": "RongCloudIM/RongSticker.framework",
      "resources": [
        "RongCloudIM/RongSticker.bundle",
        "RongCloudIM/zh-Hans.lproj",
        "RongCloudIM/en.lproj"
      ],
      "dependencies": {
        "RongCloudIM/IMKit": [

        ]
      }
    },
    {
      "name": "Sight",
      "vendored_frameworks": "RongCloudIM/RongSight.framework",
      "dependencies": {
        "RongCloudIM/IMLib": [

        ]
      }
    }
  ]
}