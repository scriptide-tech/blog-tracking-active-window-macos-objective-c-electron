{
  "targets": [
    {
      "target_name": "nativeWindows",
      "cflags!": ["-fno-exceptions"],
      "cflags_cc!": ["-fno-exceptions"],
      "include_dirs": ["<!@(node -p \"require('node-addon-api').include\")"],
      "defines": ["NAPI_DISABLE_CPP_EXCEPTIONS"],
      "conditions": [
        [
          "OS==\"mac\"",
          {
            "sources": [
              "<!@(node -p \"require('fs').readdirSync('./macos').map(f=>'macos/'+f).join(' ')\")"
            ],
            "libraries": ["-framework Cocoa"]
          }
        ]
      ]
    }
  ]
}