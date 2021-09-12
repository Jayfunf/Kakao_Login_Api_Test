//
//  Test_Kakao_Login_APIApp.swift
//  Test_Kakao_Login_API
//
//  Created by Minhyun Cho on 2021/09/12.
//

import SwiftUI
import KakaoSDKCommon
import KakaoSDKAuth

@main
struct Test_Kakao_Login_APIApp: App {
    init() {
            // Kakao SDK 초기화
            KakaoSDKCommon.initSDK(appKey: "NATIVE_APP_KEY")
        }
        var body: some Scene {
            WindowGroup {
                // onOpenURL()을 사용해 커스텀 스킴 처리
                ContentView().onOpenURL(perform: { url in
                    if (AuthApi.isKakaoTalkLoginUrl(url)) {
                        AuthController.handleOpenUrl(url: url)
                }
            })
        }
    }
}
