#!/bin/bash

set -euo pipefail

# Set-up our environment
source $(dirname $0)/env.sh

# Include utilities
source "${BADBLOCK_UTILS}"

if [[ -z "${BADBLOCK_FROM_BUILD+x}" ]]; then
  echo_red_text 'ERROR: Do not call build-bb.sh directly. Instead, use build.sh.' >&1
  exit 1
fi

# Set verbosity
if [[ "${BADBLOCK_VERBOSE}" == 1 ]]; then
  set -x
else
  set +x
fi

# Set up target parameters
readonly list="$1"
readonly format="$2"
readonly revision="$3"

BADBLOCK_BUILD_3P=0
BADBLOCK_BUILD_ADOBE=0
BADBLOCK_BUILD_ANDROID_WL=0
BADBLOCK_BUILD_AMAZON=0
BADBLOCK_BUILD_ANNOYANCES=0
BADBLOCK_BUILD_APPLE=0
BADBLOCK_BUILD_APPLE_WL=0
BADBLOCK_BUILD_BEACON=0
BADBLOCK_BUILD_BRAVE=0
BADBLOCK_BUILD_BROWSER_WL=0
BADBLOCK_BUILD_CAPTCHA_WL=0
BADBLOCK_BUILD_CAPTIVE_WL=0
BADBLOCK_BUILD_CERTS_WL=0
BADBLOCK_BUILD_CLICK_TRACKING=0
BADBLOCK_BUILD_CLICK2LOAD=0
BADBLOCK_BUILD_CONTENT_BLOCKING_WL=0
BADBLOCK_BUILD_CRAP=0
BADBLOCK_BUILD_DATA_BROKERS=0
BADBLOCK_BUILD_DNT=0
BADBLOCK_BUILD_DOH=0
BADBLOCK_BUILD_DRM=0
BADBLOCK_BUILD_EMERGENCY_WL=0
BADBLOCK_BUILD_ETHICAL_WL=0
BADBLOCK_BUILD_FACEBOOK=0
BADBLOCK_BUILD_FIND_MY=0
BADBLOCK_BUILD_FONTS=0
BADBLOCK_BUILD_GAMING=0
BADBLOCK_BUILD_GOOGLE=0
BADBLOCK_BUILD_GPC=0
BADBLOCK_BUILD_HUAWEI=0
BADBLOCK_BUILD_LAN_WL=0
BADBLOCK_BUILD_LG=0
BADBLOCK_BUILD_LINUX_WL=0
BADBLOCK_BUILD_MATOMO=0
BADBLOCK_BUILD_MICROSOFT=0
BADBLOCK_BUILD_MICROSOFT_WL=0
BADBLOCK_BUILD_MISC_WL=0
BADBLOCK_BUILD_MOBILE_WL=0
BADBLOCK_BUILD_MONITORING=0
BADBLOCK_BUILD_MOZILLA=0
BADBLOCK_BUILD_MOZILLA_WL=0
BADBLOCK_BUILD_NINTENDO_WL=0
BADBLOCK_BUILD_NSA=0
BADBLOCK_BUILD_NVIDIA=0
BADBLOCK_BUILD_ORACLE=0
BADBLOCK_BUILD_PAGE_VIS=0
BADBLOCK_BUILD_PERSONAL=0
BADBLOCK_BUILD_PLAUSIBLE=0
BADBLOCK_BUILD_PUSH_WL=0
BADBLOCK_BUILD_RADAR=0
BADBLOCK_BUILD_SAFE_BROWSING_WL=0
BADBLOCK_BUILD_SAMSUNG=0
BADBLOCK_BUILD_SENTRY=0
BADBLOCK_BUILD_SVG=0
BADBLOCK_BUILD_SVG_UNBREAK=0
BADBLOCK_BUILD_TIKTOK=0
BADBLOCK_BUILD_TIME_WL=0
BADBLOCK_BUILD_TRUSTED=0
BADBLOCK_BUILD_TWITTER=0
BADBLOCK_BUILD_UNITY=0
BADBLOCK_BUILD_UNSAFE=0
BADBLOCK_BUILD_UNSAFE_EVAL=0
BADBLOCK_BUILD_UNSAFE_EVAL_UNBREAK=0
BADBLOCK_BUILD_WEBGL=0
BADBLOCK_BUILD_WEBGL_UNBREAK=0
BADBLOCK_BUILD_WEBGPU=0
BADBLOCK_BUILD_WEBGPU_UNBREAK=0
BADBLOCK_BUILD_WEBRTC=0
BADBLOCK_BUILD_WEBRTC_UNBREAK=0
BADBLOCK_BUILD_XIAOMI=0
BADBLOCK_BUILD_YAHOO=0
BADBLOCK_BUILD_YANDEX=0

BADBLOCK_BUILD_LITE=0
BADBLOCK_BUILD_REGULAR=0
BADBLOCK_BUILD_PLUS=0
BADBLOCK_BUILD_WL_COMBINED=0

if [[ "${list}" == '3p' ]]; then
  # Build BadBlock - 3P Resources (WIP)
  BADBLOCK_BUILD_3P=1
elif [[ "${list}" == 'adobe' ]]; then
  # Build BadBlock - Adobe
  BADBLOCK_BUILD_ADOBE=1
  BADBLOCK_BUILD_LITE=1
elif [[ "${list}" == 'amazon' ]]; then
  # Build BadBlock - Amazon
  BADBLOCK_BUILD_AMAZON=1
  BADBLOCK_BUILD_LITE=1
elif [[ "${list}" == 'android-wl' ]]; then
  # Build BadBlock - Android Whitelist
  BADBLOCK_BUILD_ANDROID_WL=1
  BADBLOCK_BUILD_WL_COMBINED=1
elif [[ "${list}" == 'annoyances' ]]; then
  # Build BadBlock - Annoyances
  BADBLOCK_BUILD_ANNOYANCES=1
  BADBLOCK_BUILD_PLUS=1
elif [[ "${list}" == 'apple' ]]; then
  # Build BadBlock - Apple
  BADBLOCK_BUILD_APPLE=1
  BADBLOCK_BUILD_LITE=1
elif [[ "${list}" == 'apple-wl' ]]; then
  # Build BadBlock - Apple Whitelist
  BADBLOCK_BUILD_APPLE_WL=1
  BADBLOCK_BUILD_WL_COMBINED=1
elif [[ "${list}" == 'beacon' ]]; then
  # Build Block Beacon
  BADBLOCK_BUILD_BEACON=1
elif [[ "${list}" == 'brave' ]]; then
  # Build BadBlock - Brave
  BADBLOCK_BUILD_BRAVE=1
  BADBLOCK_BUILD_LITE=1
elif [[ "${list}" == 'browser-wl' ]]; then
  # Build BadBlock - Browser Whitelist
  BADBLOCK_BUILD_BROWSER_WL=1
  BADBLOCK_BUILD_WL_COMBINED=1
elif [[ "${list}" == 'captcha-wl' ]]; then
  # Build BadBlock - CAPTCHA Whitelist
  BADBLOCK_BUILD_CAPTCHA_WL=1
  BADBLOCK_BUILD_WL_COMBINED=1
elif [[ "${list}" == 'captive-wl' ]]; then
  # Build BadBlock - Captive Whitelist
  BADBLOCK_BUILD_CAPTIVE_WL=1
  BADBLOCK_BUILD_WL_COMBINED=1
elif [[ "${list}" == 'certs-wl' ]]; then
  # Build BadBlock - Certificate Validation Whitelist
  BADBLOCK_BUILD_CERTS_WL=1
  BADBLOCK_BUILD_WL_COMBINED=1
elif [[ "${list}" == 'click-tracking' ]]; then
  # Build BadBlock - Click Tracking
  BADBLOCK_BUILD_CLICK_TRACKING=1
  BADBLOCK_BUILD_WL_COMBINED=1
elif [[ "${list}" == 'content-blocking-wl' ]]; then
  # Build BadBlock - Content Blocking Whitelist
  BADBLOCK_BUILD_CONTENT_BLOCKING_WL=1
  BADBLOCK_BUILD_WL_COMBINED=1
elif [[ "${list}" == 'crap' ]]; then
  # Build BadBlock - Crap
  BADBLOCK_BUILD_CRAP=1
elif [[ "${list}" == 'click2load' ]]; then
  # Build BadBlock - click2load
  BADBLOCK_BUILD_CLICK2LOAD=1
elif [[ "${list}" == 'data-brokers' ]]; then
  # Build BadBlock - Data Brokers
  BADBLOCK_BUILD_DATA_BROKERS=1
  BADBLOCK_BUILD_LITE=1
elif [[ "${list}" == 'doh' ]]; then
  # Build BadBlock - DoH
  BADBLOCK_BUILD_DOH=1
elif [[ "${list}" == 'dnt' ]]; then
  # Build Enable DNT
  BADBLOCK_BUILD_DNT=1
elif [[ "${list}" == 'drm' ]]; then
  # Build BadBlock - DRM
  BADBLOCK_BUILD_DRM=1
elif [[ "${list}" == 'emergency-wl' ]]; then
  # Build BadBlock - Helpline Whitelist
  BADBLOCK_BUILD_EMERGENCY_WL=1
  BADBLOCK_BUILD_WL_COMBINED=1
elif [[ "${list}" == 'ethical-wl' ]]; then
  # Build BadBlock - Ethical Whitelist
  BADBLOCK_BUILD_ETHICAL_WL=1
elif [[ "${list}" == 'facebook' ]]; then
  # Build BadBlock - Facebook
  BADBLOCK_BUILD_FACEBOOK=1
  BADBLOCK_BUILD_LITE=1
elif [[ "${list}" == 'find-my' ]]; then
  # Build BadBlock - Find My
  BADBLOCK_BUILD_FIND_MY=1
elif [[ "${list}" == 'fonts' ]]; then
  # Build BadBlock - Fonts
  BADBLOCK_BUILD_FONTS=1
elif [[ "${list}" == 'gaming' ]]; then
  # Build BadBlock - Gaming
  BADBLOCK_BUILD_GAMING=1
  BADBLOCK_BUILD_LITE=1
elif [[ "${list}" == 'google' ]]; then
  # Build BadBlock - Google
  BADBLOCK_BUILD_GOOGLE=1
  BADBLOCK_BUILD_LITE=1
elif [[ "${list}" == 'gpc' ]]; then
  # Build Enable GPC
  BADBLOCK_BUILD_GPC=1
elif [[ "${list}" == 'huawei' ]]; then
  # Build BadBlock - Huawei
  BADBLOCK_BUILD_HUAWEI=1
  BADBLOCK_BUILD_LITE=1
elif [[ "${list}" == 'lan-wl' ]]; then
  # Build BadBlock - LAN Whitelist
  BADBLOCK_BUILD_LAN_WL=1
  BADBLOCK_BUILD_WL_COMBINED=1
elif [[ "${list}" == 'lg' ]]; then
  # Build BadBlock - LG
  BADBLOCK_BUILD_LG=1
  BADBLOCK_BUILD_LITE=1
elif [[ "${list}" == 'linux-wl' ]]; then
  # Build BadBlock - GNU/Linux Whitelist
  BADBLOCK_BUILD_LINUX_WL=1
  BADBLOCK_BUILD_WL_COMBINED=1
elif [[ "${list}" == 'matomo' ]]; then
  # Build BadBlock - Matomo
  BADBLOCK_BUILD_MATOMO=1
  BADBLOCK_BUILD_LITE=1
elif [[ "${list}" == 'microsoft' ]]; then
  # Build BadBlock - Microsoft
  BADBLOCK_BUILD_MICROSOFT=1
  BADBLOCK_BUILD_LITE=1
elif [[ "${list}" == 'microsoft-wl' ]]; then
  # Build BadBlock - Microsoft Whitelist
  BADBLOCK_BUILD_MICROSOFT_WL=1
  BADBLOCK_BUILD_WL_COMBINED=1
elif [[ "${list}" == 'misc-wl' ]]; then
  # Build BadBlock - Misc. Whitelist
  BADBLOCK_BUILD_MISC_WL=1
  BADBLOCK_BUILD_WL_COMBINED=1
elif [[ "${list}" == 'mobile-wl' ]]; then
  # Build BadBlock - Mobile Whitelist
  BADBLOCK_BUILD_MOBILE_WL=1
  BADBLOCK_BUILD_WL_COMBINED=1
elif [[ "${list}" == 'monitoring' ]]; then
  # Build BadBlock - Anti-Monitoring
  BADBLOCK_BUILD_MONITORING=1
  BADBLOCK_BUILD_REGULAR=1
elif [[ "${list}" == 'mozilla' ]]; then
  # Build BadBlock - Mozilla
  BADBLOCK_BUILD_MOZILLA=1
  BADBLOCK_BUILD_LITE=1
elif [[ "${list}" == 'mozilla-wl' ]]; then
  # Build BadBlock - Mozilla Whitelist
  BADBLOCK_BUILD_MOZILLA_WL=1
  BADBLOCK_BUILD_WL_COMBINED=1
elif [[ "${list}" == 'nintendo-wl' ]]; then
  # Build BadBlock - Nintendo Whitelist
  BADBLOCK_BUILD_NINTENDO_WL=1
  BADBLOCK_BUILD_WL_COMBINED=1
elif [[ "${list}" == 'nsa' ]]; then
  # Build NSA Blocklist - Next Generation
  BADBLOCK_BUILD_NSA=1
elif [[ "${list}" == 'nvidia' ]]; then
  # Build BadBlock - NVIDIA
  BADBLOCK_BUILD_NVIDIA=1
  BADBLOCK_BUILD_LITE=1
elif [[ "${list}" == 'oracle' ]]; then
  # Build BadBlock - Oracle
  BADBLOCK_BUILD_ORACLE=1
  BADBLOCK_BUILD_LITE=1
elif [[ "${list}" == 'page-vis' ]]; then
  # Build Block Page Visibility
  BADBLOCK_BUILD_PAGE_VIS=1
elif [[ "${list}" == 'personal' ]]; then
  # Build BadBlock - Personal
  BADBLOCK_BUILD_PERSONAL=1
elif [[ "${list}" == 'plausible' ]]; then
  # Build BadBlock - Plausible
  BADBLOCK_BUILD_PLAUSIBLE=1
  BADBLOCK_BUILD_LITE=1
elif [[ "${list}" == 'push-wl' ]]; then
  # Build BadBlock - Push Notifications Whitelist
  BADBLOCK_BUILD_PUSH_WL=1
  BADBLOCK_BUILD_WL_COMBINED=1
elif [[ "${list}" == 'radar' ]]; then
  # Build BadBlock - Radar
  BADBLOCK_BUILD_RADAR=1
  BADBLOCK_BUILD_LITE=1
elif [[ "${list}" == 'safe-browsing-wl' ]]; then
  # Build BadBlock - Safe Browsing Whitelist
  BADBLOCK_BUILD_SAFE_BROWSING_WL=1
  BADBLOCK_BUILD_WL_COMBINED=1
elif [[ "${list}" == 'samsung' ]]; then
  # Build BadBlock - Samsung
  BADBLOCK_BUILD_SAMSUNG=1
  BADBLOCK_BUILD_LITE=1
elif [[ "${list}" == 'sentry' ]]; then
  # Build BadBlock - Sentry
  BADBLOCK_BUILD_SENTRY=1
  BADBLOCK_BUILD_LITE=1
elif [[ "${list}" == 'svg' ]]; then
  # Build Block SVG
  BADBLOCK_BUILD_SVG=1
elif [[ "${list}" == 'svg-unbreak' ]]; then
  # Build Block SVG - Unbreak
  BADBLOCK_BUILD_SVG_UNBREAK=1
elif [[ "${list}" == 'tiktok' ]]; then
  # Build BadBlock - TikTok
  BADBLOCK_BUILD_TIKTOK=1
  BADBLOCK_BUILD_LITE=1
elif [[ "${list}" == 'time-wl' ]]; then
  # Build BadBlock - Time Servers Whitelist
  BADBLOCK_BUILD_TIME_WL=1
  BADBLOCK_BUILD_WL_COMBINED=1
elif [[ "${list}" == 'trusted' ]]; then
  # Build BadBlock - Trusted filters
  BADBLOCK_BUILD_TRUSTED=1
elif [[ "${list}" == 'twitter' ]]; then
  # Build BadBlock - Twitter
  BADBLOCK_BUILD_TWITTER=1
  BADBLOCK_BUILD_LITE=1
elif [[ "${list}" == 'unity' ]]; then
  # Build BadBlock - Unity
  BADBLOCK_BUILD_UNITY=1
  BADBLOCK_BUILD_LITE=1
elif [[ "${list}" == 'unsafe' ]]; then
  # Build BadBlock - Unsafe
  BADBLOCK_BUILD_UNSAFE=1
  BADBLOCK_BUILD_LITE=1
elif [[ "${list}" == 'unsafe-eval' ]]; then
  # Build Block unsafe eval() (WASM)
  BADBLOCK_BUILD_UNSAFE_EVAL=1
elif [[ "${list}" == 'unsafe-eval-unbreak' ]]; then
  # Build Block unsafe eval() (WASM) - Unbreak
  BADBLOCK_BUILD_UNSAFE_EVAL_UNBREAK=1
elif [[ "${list}" == 'webgl' ]]; then
  # Build Block WebGL
  BADBLOCK_BUILD_WEBGL=1
elif [[ "${list}" == 'webgl-unbreak' ]]; then
  # Build Block WebGL - Unbreak
  BADBLOCK_BUILD_WEBGL_UNBREAK=1
elif [[ "${list}" == 'webgpu' ]]; then
  # Build Block WebGPU
  BADBLOCK_BUILD_WEBGPU=1
elif [[ "${list}" == 'webgpu-unbreak' ]]; then
  # Build Block WebGPU - Unbreak
  BADBLOCK_BUILD_WEBGPU_UNBREAK=1
elif [[ "${list}" == 'webrtc' ]]; then
  # Build Block WebRTC
  BADBLOCK_BUILD_WEBRTC=1
elif [[ "${list}" == 'webrtc-unbreak' ]]; then
  # Build Block WebRTC - Unbreak
  BADBLOCK_BUILD_WEBRTC_UNBREAK=1
elif [[ "${list}" == 'xiaomi' ]]; then
  # Build BadBlock - Xiaomi
  BADBLOCK_BUILD_XIAOMI=1
  BADBLOCK_BUILD_LITE=1
elif [[ "${list}" == 'yahoo' ]]; then
  # Build BadBlock - Yahoo
  BADBLOCK_BUILD_YAHOO=1
  BADBLOCK_BUILD_LITE=1
elif [[ "${list}" == 'yandex' ]]; then
  # Build BadBlock - Yandex
  BADBLOCK_BUILD_YANDEX=1
  BADBLOCK_BUILD_LITE=1
elif [[ "${list}" == 'all' ]]; then
  # If no argument is specified (or argument is set to "all"), just build everything
  BADBLOCK_BUILD_3P=1
  BADBLOCK_BUILD_ADOBE=1
  BADBLOCK_BUILD_AMAZON=1
  BADBLOCK_BUILD_ANDROID_WL=1
  BADBLOCK_BUILD_ANNOYANCES=1
  BADBLOCK_BUILD_APPLE=1
  BADBLOCK_BUILD_APPLE_WL=1
  BADBLOCK_BUILD_BEACON=1
  BADBLOCK_BUILD_BRAVE=1
  BADBLOCK_BUILD_BROWSER_WL=1
  BADBLOCK_BUILD_CAPTCHA_WL=1
  BADBLOCK_BUILD_CAPTIVE_WL=1
  BADBLOCK_BUILD_CERTS_WL=1
  BADBLOCK_BUILD_CLICK_TRACKING=1
  BADBLOCK_BUILD_CLICK2LOAD=1
  BADBLOCK_BUILD_CONTENT_BLOCKING_WL=1
  BADBLOCK_BUILD_CRAP=1
  BADBLOCK_BUILD_DATA_BROKERS=1
  BADBLOCK_BUILD_DNT=1
  BADBLOCK_BUILD_DOH=1
  BADBLOCK_BUILD_DRM=1
  BADBLOCK_BUILD_EMERGENCY_WL=1
  BADBLOCK_BUILD_ETHICAL_WL=1
  BADBLOCK_BUILD_FACEBOOK=1
  BADBLOCK_BUILD_FIND_MY=1
  BADBLOCK_BUILD_FONTS=1
  BADBLOCK_BUILD_GAMING=1
  BADBLOCK_BUILD_GOOGLE=1
  BADBLOCK_BUILD_GPC=1
  BADBLOCK_BUILD_HUAWEI=1
  BADBLOCK_BUILD_LAN_WL=1
  BADBLOCK_BUILD_LG=1
  BADBLOCK_BUILD_LINUX_WL=1
  BADBLOCK_BUILD_MATOMO=1
  BADBLOCK_BUILD_MICROSOFT=1
  BADBLOCK_BUILD_MICROSOFT_WL=1
  BADBLOCK_BUILD_MISC_WL=1
  BADBLOCK_BUILD_MOBILE_WL=1
  BADBLOCK_BUILD_MONITORING=1
  BADBLOCK_BUILD_MOZILLA=1
  BADBLOCK_BUILD_MOZILLA_WL=1
  BADBLOCK_BUILD_NINTENDO_WL=1
  BADBLOCK_BUILD_NSA=1
  BADBLOCK_BUILD_NVIDIA=1
  BADBLOCK_BUILD_ORACLE=1
  BADBLOCK_BUILD_PAGE_VIS=1
  BADBLOCK_BUILD_PERSONAL=1
  BADBLOCK_BUILD_PLAUSIBLE=1
  BADBLOCK_BUILD_PUSH_WL=1
  BADBLOCK_BUILD_RADAR=1
  BADBLOCK_BUILD_SAFE_BROWSING_WL=1
  BADBLOCK_BUILD_SAMSUNG=1
  BADBLOCK_BUILD_SENTRY=1
  BADBLOCK_BUILD_SVG=1
  BADBLOCK_BUILD_SVG_UNBREAK=1
  BADBLOCK_BUILD_TIKTOK=1
  BADBLOCK_BUILD_TIME_WL=1
  BADBLOCK_BUILD_TRUSTED=1
  BADBLOCK_BUILD_TWITTER=1
  BADBLOCK_BUILD_UNITY=1
  BADBLOCK_BUILD_UNSAFE=1
  BADBLOCK_BUILD_UNSAFE_EVAL=1
  BADBLOCK_BUILD_UNSAFE_EVAL_UNBREAK=1
  BADBLOCK_BUILD_WEBGL=1
  BADBLOCK_BUILD_WEBGL_UNBREAK=1
  BADBLOCK_BUILD_WEBGPU=1
  BADBLOCK_BUILD_WEBGPU_UNBREAK=1
  BADBLOCK_BUILD_WEBRTC=1
  BADBLOCK_BUILD_WEBRTC_UNBREAK=1
  BADBLOCK_BUILD_XIAOMI=1
  BADBLOCK_BUILD_YAHOO=1
  BADBLOCK_BUILD_YANDEX=1
  BADBLOCK_BUILD_LITE=1
  BADBLOCK_BUILD_WL_COMBINED=1
else
  echo_red_text "ERROR: Invalid list: ${list}\n You must enter one of the following:"
  echo 'All:                                  all (Default)'
  echo '3P Resources:                         3p'
  echo 'Adobe:                                adobe'
  echo 'Amazon:                               amazon'
  echo 'Android (Whitelist):                  android-wl'
  echo 'Annoyances:                           annoyances'
  echo 'Anti-Monitoring:                      monitoring'
  echo 'Apple:                                apple'
  echo 'Apple (Whitelist):                    apple-wl'
  echo 'Block Beacon:                         beacon'
  echo 'Block Page Visibility:                page-vis'
  echo 'Block unsafe eval() (WASM):           unsafe-eval'
  echo 'Block unsafe eval() (WASM) - Unbreak: unsafe-eval-unbreak'
  echo 'Block SVG:                            svg'
  echo 'Block SVG - Unbreak:                  svg-unbreak'
  echo 'Block WebGL:                          webgl'
  echo 'Block WebGL - Unbreak:                webgl-unbreak'
  echo 'Block WebGPU:                         webgpu'
  echo 'Block WebGPU - Unbreak:               webgpu-unbreak'
  echo 'Block WebRTC:                         webrtc'
  echo 'Block WebRTC - Unbreak:               webrtc-unbreak'
  echo 'Brave:                                brave'
  echo 'Browser (Whitelist):                  browser-wl'
  echo 'CAPTCHA (Whitelist):                  captcha-wl'
  echo 'Captive (Whitelist):                  captive-wl'
  echo 'Certificate Validation (Whitelist):   certs-wl'
  echo 'Click Tracking:                       click-tracking'
  echo 'click2load:                           click2load'
  echo 'Content Blocking (Whitelist):         content-blocking-wl'
  echo 'Crap:                                 crap'
  echo 'Data Brokers:                         data-brokers'
  echo 'DoH:                                  doh'
  echo 'DRM:                                  drm'
  echo 'Enable DNT:                           dnt'
  echo 'Enable GPC:                           gpc'
  echo 'Ethical (Whitelist):                  ethical-wl'
  echo 'Helpline (Whitelist):                 emergency-wl'
  echo 'Facebook:                             facebook'
  echo 'Find My:                              find-my'
  echo 'Fonts:                                fonts'
  echo 'Gaming:                               gaming'
  echo 'GNU/Linux (Whitelist):                linux-wl'
  echo 'Google:                               google'
  echo 'Huawei:                               huawei'
  echo 'LAN (Whitelist):                      lan-wl'
  echo 'LG:                                   lg'
  echo 'Matomo:                               matomo'
  echo 'Microsoft:                            microsoft'
  echo 'Microsoft (Whitelist):                microsoft-wl'
  echo 'Misc. (Whitelist):                    misc-wl'
  echo 'Mobile (Whitelist):                   mobile-wl'
  echo 'Mozilla:                              mozilla'
  echo 'Mozilla (Whitelist):                  mozilla-wl'
  echo 'Nintendo (Whitelist):                 nintendo-wl'
  echo 'NSA Blocklist - Next Generation:      nsa'
  echo 'NVIDIA:                               nvidia'
  echo 'Oracle:                               oracle'
  echo 'Personal:                             personal'
  echo 'Plausible:                            plausible'
  echo 'Push Notifications (Whitelist):       push-wl'
  echo 'Radar:                                radar'
  echo 'Safe Browsing (Whitelist):            safe-browsing-wl'
  echo 'Samsung:                              samsung'
  echo 'Sentry:                               sentry'
  echo 'TikTok:                               tiktok'
  echo 'Time Servers (Whitelist):             time-wl'
  echo 'Trusted filters:                      trusted'
  echo 'Twitter:                              twitter'
  echo 'Unity:                                unity'
  echo 'Unsafe:                               unsafe'
  echo 'Xiaomi:                               xiaomi'
  echo 'Yahoo:                                yahoo'
  echo 'Yandex:                               yandex'
  exit 1
fi
readonly BADBLOCK_BUILD_3P
readonly BADBLOCK_BUILD_ADOBE
readonly BADBLOCK_BUILD_AMAZON
readonly BADBLOCK_BUILD_ANDROID_WL
readonly BADBLOCK_BUILD_ANNOYANCES
readonly BADBLOCK_BUILD_APPLE
readonly BADBLOCK_BUILD_APPLE_WL
readonly BADBLOCK_BUILD_BEACON
readonly BADBLOCK_BUILD_BRAVE
readonly BADBLOCK_BUILD_BROWSER_WL
readonly BADBLOCK_BUILD_CAPTCHA_WL
readonly BADBLOCK_BUILD_CAPTIVE_WL
readonly BADBLOCK_BUILD_CERTS_WL
readonly BADBLOCK_BUILD_CLICK_TRACKING
readonly BADBLOCK_BUILD_CLICK2LOAD
readonly BADBLOCK_BUILD_CONTENT_BLOCKING_WL
readonly BADBLOCK_BUILD_CRAP
readonly BADBLOCK_BUILD_DATA_BROKERS
readonly BADBLOCK_BUILD_DNT
readonly BADBLOCK_BUILD_DOH
readonly BADBLOCK_BUILD_DRM
readonly BADBLOCK_BUILD_EMERGENCY_WL
readonly BADBLOCK_BUILD_ETHICAL_WL
readonly BADBLOCK_BUILD_FACEBOOK
readonly BADBLOCK_BUILD_FIND_MY
readonly BADBLOCK_BUILD_FONTS
readonly BADBLOCK_BUILD_GAMING
readonly BADBLOCK_BUILD_GOOGLE
readonly BADBLOCK_BUILD_GPC
readonly BADBLOCK_BUILD_HUAWEI
readonly BADBLOCK_BUILD_LAN_WL
readonly BADBLOCK_BUILD_LG
readonly BADBLOCK_BUILD_LINUX_WL
readonly BADBLOCK_BUILD_MATOMO
readonly BADBLOCK_BUILD_MICROSOFT
readonly BADBLOCK_BUILD_MICROSOFT_WL
readonly BADBLOCK_BUILD_MISC_WL
readonly BADBLOCK_BUILD_MOBILE_WL
readonly BADBLOCK_BUILD_MONITORING
readonly BADBLOCK_BUILD_MOZILLA
readonly BADBLOCK_BUILD_MOZILLA_WL
readonly BADBLOCK_BUILD_NINTENDO_WL
readonly BADBLOCK_BUILD_NSA
readonly BADBLOCK_BUILD_NVIDIA
readonly BADBLOCK_BUILD_ORACLE
readonly BADBLOCK_BUILD_PAGE_VIS
readonly BADBLOCK_BUILD_PERSONAL
readonly BADBLOCK_BUILD_PLAUSIBLE
readonly BADBLOCK_BUILD_PUSH_WL
readonly BADBLOCK_BUILD_RADAR
readonly BADBLOCK_BUILD_SAFE_BROWSING_WL
readonly BADBLOCK_BUILD_SAMSUNG
readonly BADBLOCK_BUILD_SENTRY
readonly BADBLOCK_BUILD_SVG
readonly BADBLOCK_BUILD_SVG_UNBREAK
readonly BADBLOCK_BUILD_TIKTOK
readonly BADBLOCK_BUILD_TIME_WL
readonly BADBLOCK_BUILD_TRUSTED
readonly BADBLOCK_BUILD_TWITTER
readonly BADBLOCK_BUILD_UNITY
readonly BADBLOCK_BUILD_UNSAFE
readonly BADBLOCK_BUILD_UNSAFE_EVAL
readonly BADBLOCK_BUILD_UNSAFE_EVAL_UNBREAK
readonly BADBLOCK_BUILD_WEBGL
readonly BADBLOCK_BUILD_WEBGL_UNBREAK
readonly BADBLOCK_BUILD_WEBGPU
readonly BADBLOCK_BUILD_WEBGPU_UNBREAK
readonly BADBLOCK_BUILD_WEBRTC
readonly BADBLOCK_BUILD_WEBRTC_UNBREAK
readonly BADBLOCK_BUILD_XIAOMI
readonly BADBLOCK_BUILD_YAHOO
readonly BADBLOCK_BUILD_YANDEX

if [[ "${BADBLOCK_BUILD_LITE}" == 1 ]]; then
  # Building BadBlock Lite implies that we're also building BadBlock and BadBlock+
  BADBLOCK_BUILD_REGULAR=1
  BADBLOCK_BUILD_PLUS=1
elif [[ "${BADBLOCK_BUILD_REGULAR}" == 1 ]]; then
  # Similarly, building BadBlock implies we're also building BadBlock+
  BADBLOCK_BUILD_PLUS=1
fi
readonly BADBLOCK_BUILD_LITE
readonly BADBLOCK_BUILD_REGULAR
readonly BADBLOCK_BUILD_PLUS
readonly BADBLOCK_BUILD_WL_COMBINED

BADBLOCK_BUILD_ABP=0
BADBLOCK_BUILD_WC=0
BADBLOCK_BUILD_WC_NS=0

if [[ "${format}" == 'abp' ]]; then
  # Build list(s) in ABP syntax
  BADBLOCK_BUILD_ABP=1
elif [[ "${format}" == 'wc' ]]; then
  # Build list(s) in wildcards syntax
  BADBLOCK_BUILD_WC=1
elif [[ "${format}" == 'wc-ns' ]]; then
  # Build list(s) in wildcards no * syntax
  BADBLOCK_BUILD_WC_NS=1
elif [[ "${format}" == 'all' ]]; then
  # If no argument is specified (or argument is set to "all"), just build in all formats
  BADBLOCK_BUILD_ABP=1
  BADBLOCK_BUILD_WC=1
  BADBLOCK_BUILD_WC_NS=1
else
  echo_red_text "ERROR: Invalid format: ${format}\n You must enter one of the following:"
  echo 'All:              all (Default)'
  echo 'ABP:              abp'
  echo 'Wildcards:        wc'
  echo 'Wildcards (no *): wc-ns'
  exit 1
fi
readonly BADBLOCK_BUILD_ABP
readonly BADBLOCK_BUILD_WC
readonly BADBLOCK_BUILD_WC_NS

function list_build() {
  local readonly target_list_name_upper="$1"
  local readonly target_list_name_slug="$2"
  local readonly target_list_emoji="$3"
  local readonly target_list_desc="$4"
  local readonly target_list_syntax="$5"
  local readonly target_list_type="$6"
  local readonly target_list_hardened="$7"

  if [[ "${target_list_hardened}" == 1 ]]; then
    local readonly target_list_dir='hardened'
    local readonly target_list_header='none'
  elif [[ "${target_list_syntax}" == 'abp' ]]; then
    local readonly target_list_dir='abp'
    local readonly target_list_header='ABP'
  elif [[ "${target_list_syntax}" == 'no-star' ]]; then
    local readonly target_list_dir='wildcards-no-star'
    local readonly target_list_header='Wildcards no *'
  else
    local readonly target_list_dir='wildcards-star'
    local readonly target_list_header='Wildcards *'
  fi

  if [[ "${target_list_header}" == 'none' ]]; then
    local readonly target_list_title="${target_list_name_upper}"
  else
    local readonly target_list_title="${target_list_name_upper} (${target_list_header})"
  fi

  if [[ "${target_list_syntax}" == 'abp' ]]; then
    local readonly target_list_marker='!'
  else
    local readonly target_list_marker='#'
  fi

  if [[ "${target_list_name_slug}" == 'block-beacon' ]] ||
   [[ "${target_list_name_slug}" == 'block-page-visibility' ]] || [[ "${target_list_name_slug}" == 'block-svg' ]] ||
   [[ "${target_list_name_slug}" == 'block-unsafe-eval' ]] || [[ "${target_list_name_slug}" == 'block-webgl' ]] ||
   [[ "${target_list_name_slug}" == 'block-webgpu' ]] || [[ "${target_list_name_slug}" == 'block-webrtc' ]] ||
   [[ "${target_list_name_slug}" == 'enable-gpc' ]] || [[ "${target_list_name_slug}" == 'enable-dnt' ]]; then
    local readonly target_list_expiration='12 hours'
  else
    local readonly target_list_expiration='1 hour'
  fi

  # The Click Tracking Whitelist is an edge case - it uses the same base file/list as the
  ## Click Tracking blocklist
  if [[ "${target_list_name_slug}" == 'click-tracking_whitelist' ]] ||
   [[ -f "${BADBLOCK_ROOT}/base/${target_list_name_slug}.txt" ]]; then
    if [[ "${target_list_name_slug}" == 'click-tracking_whitelist' ]]; then
      "${BADBLOCK_CAT}" "${BADBLOCK_ROOT}/base/click-tracking.txt" | "${BADBLOCK_GREP}" -v '^#' | "${BADBLOCK_GREP}" -v '^\s*$' | "${BADBLOCK_SORT}" | "${BADBLOCK_UNIQ}" > "${BADBLOCK_BUILD}/${target_list_name_slug}_temp.txt"
    else
      "${BADBLOCK_CAT}" "${BADBLOCK_ROOT}/base/${target_list_name_slug}.txt" | "${BADBLOCK_GREP}" -v '^#' | "${BADBLOCK_GREP}" -v '^\s*$' | "${BADBLOCK_SORT}" | "${BADBLOCK_UNIQ}" > "${BADBLOCK_BUILD}/${target_list_name_slug}_temp.txt"
    fi

    if [[ "${target_list_syntax}" == 'abp' ]]; then
      if [[ "${target_list_type}" == 'wl' ]]; then
        "${BADBLOCK_CAT}" "${BADBLOCK_BUILD}/${target_list_name_slug}_temp.txt" | "${BADBLOCK_SED}" 's/^/@@|/' | "${BADBLOCK_SED}" 's/$/^/' > "${BADBLOCK_ROOT}/${target_list_dir}/${target_list_name_slug}.txt"
      elif [[ "${target_list_name_slug}" == 'crap' ]]; then
        # Crap needs to block domains as $document
        "${BADBLOCK_CAT}" "${BADBLOCK_BUILD}/${target_list_name_slug}_temp.txt" | "${BADBLOCK_SED}" 's/^/||/' | "${BADBLOCK_SED}" 's/$/^$document/' > "${BADBLOCK_ROOT}/${target_list_dir}/${target_list_name_slug}.txt"
      elif [[ "${target_list_name_slug}" == 'click-tracking' ]]; then
        # Click Tracking needs to block domains as $document and $third-party
        "${BADBLOCK_CAT}" "${BADBLOCK_BUILD}/${target_list_name_slug}_temp.txt" | "${BADBLOCK_SED}" 's/^/||/' | "${BADBLOCK_SED}" 's/$/^$document,third-party/' > "${BADBLOCK_ROOT}/${target_list_dir}/${target_list_name_slug}.txt"
      else
        "${BADBLOCK_CAT}" "${BADBLOCK_BUILD}/${target_list_name_slug}_temp.txt" | "${BADBLOCK_SED}" 's/^/||/' | "${BADBLOCK_SED}" 's/$/^/' > "${BADBLOCK_ROOT}/${target_list_dir}/${target_list_name_slug}.txt"
      fi
    elif [[ "${target_list_syntax}" == 'star' ]]; then
      "${BADBLOCK_CAT}" "${BADBLOCK_BUILD}/${target_list_name_slug}_temp.txt" | "${BADBLOCK_SED}" 's/^/*./' > "${BADBLOCK_ROOT}/${target_list_dir}/${target_list_name_slug}.txt"
    else
      "${BADBLOCK_CP}" -f "${BADBLOCK_BUILD}/${target_list_name_slug}_temp.txt" "${BADBLOCK_ROOT}/${target_list_dir}/${target_list_name_slug}.txt"
    fi
    "${BADBLOCK_RM}" -f "${BADBLOCK_BUILD}/${target_list_name_slug}_temp.txt"
  else
    if [[ -f "${BADBLOCK_ROOT}/${target_list_dir}/${target_list_name_slug}.txt" ]]; then
      "${BADBLOCK_RM}" -f "${BADBLOCK_ROOT}/${target_list_dir}/${target_list_name_slug}.txt"
    fi
    "${BADBLOCK_TOUCH}" "${BADBLOCK_ROOT}/${target_list_dir}/${target_list_name_slug}.txt"
  fi

  # Apply overrides if necessary
  if [[ -f "${BADBLOCK_ROOT}/base/overrides/${target_list_dir}/${target_list_name_slug}_overrides.txt" ]]; then
    "${BADBLOCK_CP}" "${BADBLOCK_ROOT}/${target_list_dir}/${target_list_name_slug}.txt" "${BADBLOCK_BUILD}/${target_list_name_slug}_temp_2.txt"
    "${BADBLOCK_CAT}" "${BADBLOCK_ROOT}/base/overrides/${target_list_dir}/${target_list_name_slug}_overrides.txt" "${BADBLOCK_BUILD}/${target_list_name_slug}_temp_2.txt" | "${BADBLOCK_GREP}" -v '^! ' | "${BADBLOCK_GREP}" -v '^!!' | "${BADBLOCK_GREP}" -v "^$" > "${BADBLOCK_ROOT}/${target_list_dir}/${target_list_name_slug}.txt"
    "${BADBLOCK_RM}" -f "${BADBLOCK_BUILD}/${target_list_name_slug}_temp_2.txt"
  fi

  (echo "${target_list_marker} Title: ${target_list_emoji} ${target_list_title}" && \
    echo "${target_list_marker} Version: $(${BADBLOCK_DATE} +%d%B%Yv${revision})" && \
    echo "${target_list_marker} Expires: ${target_list_expiration}" && \
    echo "${target_list_marker} Description: ${target_list_desc}" && \
    echo "${target_list_marker} Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    "${BADBLOCK_CAT}" "${BADBLOCK_ROOT}/${target_list_dir}/${target_list_name_slug}.txt") > temp_file && "${BADBLOCK_MV}" -v temp_file "${BADBLOCK_ROOT}/${target_list_dir}/${target_list_name_slug}.txt"
}

function list_build_combined() {
  local readonly combined_target_list_name_upper="$1"
  local readonly combined_target_list_name_slug="$2"
  local readonly combined_target_list_emoji="$3"
  local readonly combined_target_list_desc="$4"
  local readonly combined_target_list_syntax="$5"
  local readonly combined_target_list_type="$6"

  if [[ "${combined_target_list_syntax}" == 'abp' ]]; then
    local readonly combined_target_list_dir='abp'
    local readonly combined_target_list_header='ABP'
  elif [[ "${combined_target_list_syntax}" == 'no-star' ]]; then
    local readonly combined_target_list_dir='wildcards-no-star'
    local readonly combined_target_list_header='Wildcards no *'
  else
    local readonly combined_target_list_dir='wildcards-star'
    local readonly combined_target_list_header='Wildcards *'
  fi

  if [[ "${combined_target_list_header}" == 'none' ]]; then
    local readonly combined_target_list_title="${combined_target_list_name_upper}"
  else
    local readonly combined_target_list_title="${combined_target_list_name_upper} (${combined_target_list_header})"
  fi

  if [[ "${combined_target_list_syntax}" == 'abp' ]]; then
    local readonly combined_target_list_marker='!'
  else
    local readonly combined_target_list_marker='#'
  fi

  if [[ "${combined_target_list_name_slug}" == 'whitelist' ]]; then
    # These are lists included in BadBlock - Whitelist
    "${BADBLOCK_CAT}" \
      "${BADBLOCK_ROOT}/${combined_target_list_dir}/android_whitelist.txt" \
      "${BADBLOCK_ROOT}/${combined_target_list_dir}/apple_whitelist.txt" \
      "${BADBLOCK_ROOT}/${combined_target_list_dir}/browser_whitelist.txt" \
      "${BADBLOCK_ROOT}/${combined_target_list_dir}/captcha_whitelist.txt" \
      "${BADBLOCK_ROOT}/${combined_target_list_dir}/captive_whitelist.txt" \
      "${BADBLOCK_ROOT}/${combined_target_list_dir}/certs_whitelist.txt" \
      "${BADBLOCK_ROOT}/${combined_target_list_dir}/click-tracking_whitelist.txt" \
      "${BADBLOCK_ROOT}/${combined_target_list_dir}/content-blocking_whitelist.txt" \
      "${BADBLOCK_ROOT}/${combined_target_list_dir}/emergency_whitelist.txt" \
      "${BADBLOCK_ROOT}/${combined_target_list_dir}/lan_whitelist.txt" \
      "${BADBLOCK_ROOT}/${combined_target_list_dir}/linux_whitelist.txt" \
      "${BADBLOCK_ROOT}/${combined_target_list_dir}/microsoft_whitelist.txt" \
      "${BADBLOCK_ROOT}/${combined_target_list_dir}/misc_whitelist.txt" \
      "${BADBLOCK_ROOT}/${combined_target_list_dir}/mobile_whitelist.txt" \
      "${BADBLOCK_ROOT}/${combined_target_list_dir}/mozilla_whitelist.txt" \
      "${BADBLOCK_ROOT}/${combined_target_list_dir}/nintendo_whitelist.txt" \
      "${BADBLOCK_ROOT}/${combined_target_list_dir}/push_whitelist.txt" \
      "${BADBLOCK_ROOT}/${combined_target_list_dir}/safe-browsing_whitelist.txt" \
      "${BADBLOCK_ROOT}/${combined_target_list_dir}/time_whitelist.txt" \
    | "${BADBLOCK_GREP}" -v '^# ' | "${BADBLOCK_GREP}" -v '^! ' | "${BADBLOCK_GREP}" -v '^!!' | "${BADBLOCK_GREP}" -v '^!|' | "${BADBLOCK_GREP}" -v '^\s*$' | "${BADBLOCK_UNIQ}" > "${BADBLOCK_BUILD}/${combined_target_list_name_slug}_temp.txt"
  else
    # These are lists included in BadBlock Lite and higher tiers
    "${BADBLOCK_CAT}" \
      "${BADBLOCK_ROOT}/${combined_target_list_dir}/adobe.txt" \
      "${BADBLOCK_ROOT}/${combined_target_list_dir}/amazon.txt" \
      "${BADBLOCK_ROOT}/${combined_target_list_dir}/apple.txt" \
      "${BADBLOCK_ROOT}/${combined_target_list_dir}/brave.txt" \
      "${BADBLOCK_ROOT}/${combined_target_list_dir}/data-brokers.txt" \
      "${BADBLOCK_ROOT}/${combined_target_list_dir}/facebook.txt" \
      "${BADBLOCK_ROOT}/${combined_target_list_dir}/gaming.txt" \
      "${BADBLOCK_ROOT}/${combined_target_list_dir}/google.txt" \
      "${BADBLOCK_ROOT}/${combined_target_list_dir}/huawei.txt" \
      "${BADBLOCK_ROOT}/${combined_target_list_dir}/lg.txt" \
      "${BADBLOCK_ROOT}/${combined_target_list_dir}/matomo.txt" \
      "${BADBLOCK_ROOT}/${combined_target_list_dir}/microsoft.txt" \
      "${BADBLOCK_ROOT}/${combined_target_list_dir}/mozilla.txt" \
      "${BADBLOCK_ROOT}/${combined_target_list_dir}/nvidia.txt" \
      "${BADBLOCK_ROOT}/${combined_target_list_dir}/oracle.txt" \
      "${BADBLOCK_ROOT}/${combined_target_list_dir}/plausible.txt" \
      "${BADBLOCK_ROOT}/${combined_target_list_dir}/radar.txt" \
      "${BADBLOCK_ROOT}/${combined_target_list_dir}/samsung.txt" \
      "${BADBLOCK_ROOT}/${combined_target_list_dir}/sentry.txt" \
      "${BADBLOCK_ROOT}/${combined_target_list_dir}/tiktok.txt" \
      "${BADBLOCK_ROOT}/${combined_target_list_dir}/twitter.txt" \
      "${BADBLOCK_ROOT}/${combined_target_list_dir}/unity.txt" \
      "${BADBLOCK_ROOT}/${combined_target_list_dir}/unsafe.txt" \
      "${BADBLOCK_ROOT}/${combined_target_list_dir}/xiaomi.txt" \
      "${BADBLOCK_ROOT}/${combined_target_list_dir}/yahoo.txt" \
      "${BADBLOCK_ROOT}/${combined_target_list_dir}/yandex.txt" \
    | "${BADBLOCK_GREP}" -v '^# ' | "${BADBLOCK_GREP}" -v '^! ' | "${BADBLOCK_GREP}" -v '^!!' | "${BADBLOCK_GREP}" -v '^!|' | "${BADBLOCK_GREP}" -v '^\s*$' | "${BADBLOCK_UNIQ}" > "${BADBLOCK_BUILD}/${combined_target_list_name_slug}_temp.txt"
  fi

  if [[ "${combined_target_list_type}" == 'bl' ]] && [[ "${combined_target_list_name_slug}" != 'badblock_lite' ]]; then
    # These are lists ONLY included in BadBlock and higher tiers
    "${BADBLOCK_CAT}" "${BADBLOCK_ROOT}/${combined_target_list_dir}/monitoring.txt" "${BADBLOCK_BUILD}/${combined_target_list_name_slug}_temp.txt" | "${BADBLOCK_GREP}" -v '^# ' | "${BADBLOCK_GREP}" -v '^! ' | "${BADBLOCK_GREP}" -v '^!!' | "${BADBLOCK_GREP}" -v '^!|' | "${BADBLOCK_GREP}" -v '^\s*$' | "${BADBLOCK_UNIQ}" > "${BADBLOCK_BUILD}/${combined_target_list_name_slug}_temp_2.txt"
    if [[ "${combined_target_list_name_slug}" == 'badblock_plus' ]]; then
      # These are lists ONLY included in BadBlock+ and higher tiers
      "${BADBLOCK_CAT}" "${BADBLOCK_ROOT}/${combined_target_list_dir}/annoyances.txt" "${BADBLOCK_BUILD}/${combined_target_list_name_slug}_temp_2.txt" | "${BADBLOCK_GREP}" -v '^# ' | "${BADBLOCK_GREP}" -v '^! ' | "${BADBLOCK_GREP}" -v '^!!' | "${BADBLOCK_GREP}" -v '^!|' | "${BADBLOCK_GREP}" -v '^\s*$' | "${BADBLOCK_UNIQ}" > "${BADBLOCK_BUILD}/${combined_target_list_name_slug}_temp_3.txt"
      "${BADBLOCK_CP}" -f "${BADBLOCK_BUILD}/${combined_target_list_name_slug}_temp_3.txt" "${BADBLOCK_BUILD}/${combined_target_list_name_slug}_temp.txt"
      "${BADBLOCK_RM}" -f "${BADBLOCK_BUILD}/${combined_target_list_name_slug}_temp_3.txt"
    else
      "${BADBLOCK_CP}" -f "${BADBLOCK_BUILD}/${combined_target_list_name_slug}_temp_2.txt" "${BADBLOCK_BUILD}/${combined_target_list_name_slug}_temp.txt"
      "${BADBLOCK_RM}" -f "${BADBLOCK_BUILD}/${combined_target_list_name_slug}_temp_2.txt"
    fi
  fi
  "${BADBLOCK_CP}" -f "${BADBLOCK_BUILD}/${combined_target_list_name_slug}_temp.txt" "${BADBLOCK_ROOT}/${combined_target_list_dir}/${combined_target_list_name_slug}.txt"
  "${BADBLOCK_RM}" -f "${BADBLOCK_BUILD}/${combined_target_list_name_slug}_temp.txt"

  (echo "${combined_target_list_marker} Title: ${combined_target_list_emoji} ${combined_target_list_title}" && \
    echo "${combined_target_list_marker} Version: $(${BADBLOCK_DATE} +%d%B%Yv${revision})" && \
    echo "${combined_target_list_marker} Expires: 1 hour" && \
    echo "${combined_target_list_marker} Description: ${combined_target_list_desc}" && \
    echo "${combined_target_list_marker} Homepage: https://badblock.celenity.dev" && \
    echo "" && \
    "${BADBLOCK_CAT}" "${BADBLOCK_ROOT}/${combined_target_list_dir}/${combined_target_list_name_slug}.txt") > temp_file && "${BADBLOCK_MV}" -v temp_file "${BADBLOCK_ROOT}/${combined_target_list_dir}/${combined_target_list_name_slug}.txt"
}

function build_list_combined() {
  local readonly combined_list_name="$1"
  local readonly combined_list_emoji="$2"
  local readonly combined_list_desc="$3"
  local readonly combined_list_type="$4"

  if [[ -z "${5+x}" ]]; then
    local readonly combined_list_name_slug=$(echo "${1}" | "${BADBLOCK_AWK}" '{print tolower($0)}')
  else
    local readonly combined_list_name_slug=$(echo "${5}" | "${BADBLOCK_AWK}" '{print tolower($0)}')
  fi

  if [[ "${BADBLOCK_BUILD_ABP}" == 1 ]]; then
    list_build_combined "${combined_list_name}" "${combined_list_name_slug}" "${combined_list_emoji}" "${combined_list_desc}" 'abp' "${combined_list_type}"
  fi

  # BadBlock+ currently only supports ABP
  if [[ "${combined_list_name_slug}" != 'badblock_plus' ]]; then
    if [[ "${BADBLOCK_BUILD_WC}" == 1 ]]; then
      list_build_combined "${combined_list_name}" "${combined_list_name_slug}" "${combined_list_emoji}" "${combined_list_desc}" 'star' "${combined_list_type}"
    fi

    if [[ "${BADBLOCK_BUILD_WC_NS}" == 1 ]]; then
      list_build_combined "${combined_list_name}" "${combined_list_name_slug}" "${combined_list_emoji}" "${combined_list_desc}" 'no-star' "${combined_list_type}"
    fi
  fi
}

function build_list() {
  local readonly list_name_inp="$1"
  local readonly list_emoji="$2"
  local readonly list_desc="$3"
  local readonly list_type="$4"

  if [[ -z "${5+x}" ]]; then
    local readonly list_name_slug=$(echo "${1}" | "${BADBLOCK_AWK}" '{print tolower($0)}')
  else
    local readonly list_name_slug=$(echo "${5}" | "${BADBLOCK_AWK}" '{print tolower($0)}')
  fi

  if [[ -z "${6+x}" ]]; then
    local readonly list_hardened=0
  else
    local readonly list_hardened="$6"
  fi

  if [[ "${list_hardened}" == 1 ]] || [[ "${list_name_slug}" == 'nsa-blocklist-ng' ]] ||
   [[ "${list_name_slug}" == 'personal' ]]; then
    local readonly list_name="${list_name_inp}"
  else
    local readonly list_name="BadBlock - ${list_name_inp}"
  fi

  if [[ "${BADBLOCK_BUILD_ABP}" == 1 ]]; then
    list_build "${list_name}" "${list_name_slug}" "${list_emoji}" "${list_desc}" 'abp' "${list_type}" "${list_hardened}"
  fi

  # Certain lists only support ABP
  if [[ "${list_name_slug}" != '3p' ]] && [[ "${list_name_slug}" != 'annoyances' ]] && [[ "${list_name_slug}" != 'click2load' ]] &&
   [[ "${list_name_slug}" != 'trusted' ]] && [[ "${list_hardened}" != 1 ]]; then
    if [[ "${BADBLOCK_BUILD_WC}" == 1 ]]; then
      list_build "${list_name}" "${list_name_slug}" "${list_emoji}" "${list_desc}" 'star' "${list_type}" "${list_hardened}"
    fi

    if [[ "${BADBLOCK_BUILD_WC_NS}" == 1 ]]; then
      list_build "${list_name}" "${list_name_slug}" "${list_emoji}" "${list_desc}" 'no-star' "${list_type}" "${list_hardened}"
    fi
  fi
}

if [[ "${BADBLOCK_BUILD_3P}" == 1 ]]; then
  build_list '3P Resources (WIP)' '👀' 'Block unnecessary 3rd party resources on websites to speed up your browser & protect your privacy!' 'bl' '3p'
fi

if [[ "${BADBLOCK_BUILD_ADOBE}" == 1 ]]; then
  build_list 'Adobe' '🎨' 'Block Adobe advertising, tracking, telemetry, promotions, & more!' 'bl'
fi

if [[ "${BADBLOCK_BUILD_AMAZON}" == 1 ]]; then
  build_list 'Amazon' '📦' 'Block Amazon advertising, tracking, telemetry, promotions, & more!' 'bl'
fi

if [[ "${BADBLOCK_BUILD_ANDROID_WL}" == 1 ]]; then
  build_list 'Android Whitelist' '🤖' 'Unblock the Good! (Android Edition)' 'wl' 'android_whitelist'
fi

if [[ "${BADBLOCK_BUILD_ANNOYANCES}" == 1 ]]; then
  build_list 'Annoyances' '🍪' 'Block annoyances!' 'bl'
fi

if [[ "${BADBLOCK_BUILD_APPLE}" == 1 ]]; then
  build_list 'Apple' '' 'Block Apple advertising, telemetry, promotions, & more!' 'bl'
fi

if [[ "${BADBLOCK_BUILD_APPLE_WL}" == 1 ]]; then
  build_list 'Apple Whitelist' '🍎' 'Unblock the Good! (Apple Edition)' 'wl' 'apple_whitelist'
fi

if [[ "${BADBLOCK_BUILD_BEACON}" == 1 ]]; then
  build_list 'Block Beacon' '🛡️' 'Block the Beacon API to harden the privacy & security of your web browser.' 'bl' 'block-beacon' 1
fi

if [[ "${BADBLOCK_BUILD_BRAVE}" == 1 ]]; then
  build_list 'Brave' '🦁' 'Block Brave telemetry, analytics, advertising, sponsored content, & more!' 'bl'
fi

if [[ "${BADBLOCK_BUILD_BROWSER_WL}" == 1 ]]; then
  build_list 'Browser Whitelist' '🌐' 'Unblock the Good! (Browser Edition)' 'wl' 'browser_whitelist'
fi

if [[ "${BADBLOCK_BUILD_CAPTCHA_WL}" == 1 ]]; then
  build_list 'CAPTCHA Whitelist' '🦾' 'Unblock the Good! (CAPTCHA Edition)' 'wl' 'captcha_whitelist'
fi

if [[ "${BADBLOCK_BUILD_CAPTIVE_WL}" == 1 ]]; then
  build_list 'Captive Whitelist' '🛜' 'Unblock domains required for Captive Portals & Connectivity Checks!' 'wl' 'captive_whitelist'
fi

if [[ "${BADBLOCK_BUILD_CERTS_WL}" == 1 ]]; then
  build_list 'Certificate Validation Whitelist' '🖆' 'Unblock the Good! (Certificate Validation Edition)' 'wl' 'certs_whitelist'
fi

if [[ "${BADBLOCK_BUILD_CLICK_TRACKING}" == 1 ]]; then
  build_list 'Click Tracking/Referral Domains' '🖱️' 'Block click tracking!' 'bl' 'click-tracking'
  build_list 'Click Tracking/Referral Domains Whitelist' '💌' 'Unblock click tracking!' 'wl' 'click-tracking_whitelist'
fi

if [[ "${BADBLOCK_BUILD_CONTENT_BLOCKING_WL}" == 1 ]]; then
  build_list 'Content Blocking Whitelist' '🛡️' 'Unblock the Good! (Content Blocking Edition)' 'wl' 'content-blocking_whitelist'
fi

if [[ "${BADBLOCK_BUILD_CRAP}" == 1 ]]; then
  build_list 'Crap' '🗑️' 'Block toxic domains!' 'bl'
fi

if [[ "${BADBLOCK_BUILD_CLICK2LOAD}" == 1 ]]; then
  build_list 'click2load' '✋' 'Protect against unwanted third-party resources!' 'bl'
fi

if [[ "${BADBLOCK_BUILD_DATA_BROKERS}" == 1 ]]; then
  build_list 'Data Brokers' '💰' 'Stop the People Search!' 'bl' 'data-brokers'
fi

if [[ "${BADBLOCK_BUILD_DNT}" == 1 ]]; then
  build_list 'Enable DNT' '🛡️' '(Partially) enable DNT to opt out of tracking.' 'bl' 'enable-dnt' 1
fi

if [[ "${BADBLOCK_BUILD_DOH}" == 1 ]]; then
  build_list "D'oh!" '🍩' 'Stop DNS servers from bypassing your firewall!' 'bl' 'doh'
fi

if [[ "${BADBLOCK_BUILD_DRM}" == 1 ]]; then
  build_list 'DRM' '🔒' 'Stop Digital Restrictions Management!' 'bl'
fi

if [[ "${BADBLOCK_BUILD_EMERGENCY_WL}" == 1 ]]; then
  build_list 'Helpline Whitelist' '📞' 'Unblock the Good! (Helpline Edition)' 'wl' 'emergency_whitelist'
fi

if [[ "${BADBLOCK_BUILD_ETHICAL_WL}" == 1 ]]; then
  build_list 'Ethical Whitelist' '😇' 'Unblock Ethical Data Collection!' 'wl' 'ethical_whitelist'
fi

if [[ "${BADBLOCK_BUILD_FACEBOOK}" == 1 ]]; then
  build_list 'Facebook' '📕' 'Block Facebook (Meta) advertising, tracking, promotions, & more!' 'bl'
fi

if [[ "${BADBLOCK_BUILD_FIND_MY}" == 1 ]]; then
  build_list 'Find My' '📍' 'Block services that try 'finding' your device!' 'bl' 'find-my'
fi

if [[ "${BADBLOCK_BUILD_FONTS}" == 1 ]]; then
  build_list 'Fonts' '✍️' 'Block web fonts to improve privacy, security, and performance.' 'bl'
fi

if [[ "${BADBLOCK_BUILD_GAMING}" == 1 ]]; then
  build_list 'Gaming' '🎮' 'Block gaming telemetry, analytics, advertising, tracking, & more!' 'bl'
fi

if [[ "${BADBLOCK_BUILD_GOOGLE}" == 1 ]]; then
  build_list 'Google' '🔤' 'Block Google advertising, tracking, promotions, & more!' 'bl'
fi

if [[ "${BADBLOCK_BUILD_GPC}" == 1 ]]; then
  build_list 'Enable GPC' '🛡️' '(Partially) enable GPC to opt out of tracking.' 'bl' 'enable-gpc' 1
fi

if [[ "${BADBLOCK_BUILD_HUAWEI}" == 1 ]]; then
  build_list 'Huawei' '🪁' 'Block Huawei advertising, tracking, telemetry, & more!' 'bl'
fi

if [[ "${BADBLOCK_BUILD_LAN_WL}" == 1 ]]; then
  build_list 'LAN Whitelist' '🛜' 'Unblock the Good! (LAN Edition)' 'wl' 'lan_whitelist'
fi

if [[ "${BADBLOCK_BUILD_LG}" == 1 ]]; then
  build_list 'LG' '📺' 'Block LG advertising, tracking, telemetry, & more!' 'bl'
fi

if [[ "${BADBLOCK_BUILD_LINUX_WL}" == 1 ]]; then
  build_list 'GNU/Linux Whitelist' '🐧' 'Unblock the Good! (GNU/Linux Edition)' 'wl' 'linux_whitelist'
fi

if [[ "${BADBLOCK_BUILD_MATOMO}" == 1 ]]; then
  build_list 'Matomo' '📊' 'Block Matomo Analytics!' 'bl'
fi

if [[ "${BADBLOCK_BUILD_MICROSOFT}" == 1 ]]; then
  build_list 'Microsoft' '🪟' 'Close the Windows! Block M$ advertising, tracking, telemetry, promotions, & more!' 'bl'
fi

if [[ "${BADBLOCK_BUILD_MICROSOFT_WL}" == 1 ]]; then
  build_list 'Microsoft Whitelist' '🪟' 'Unblock the Good! (Microsoft Edition)' 'wl' 'microsoft_whitelist'
fi

if [[ "${BADBLOCK_BUILD_MISC_WL}" == 1 ]]; then
  build_list 'Misc. Whitelist' '🏠' 'Unblock the Good! (Misc. Edition)' 'wl' 'misc_whitelist'
fi

if [[ "${BADBLOCK_BUILD_MOBILE_WL}" == 1 ]]; then
  build_list 'Mobile Whitelist' '📶' 'Unblock the Good! (Mobile Edition)' 'wl' 'mobile_whitelist'
fi

if [[ "${BADBLOCK_BUILD_MONITORING}" == 1 ]]; then
  build_list 'Anti-Monitoring' '🔎' 'Stop the spying!' 'bl' 'monitoring'
fi

if [[ "${BADBLOCK_BUILD_MOZILLA}" == 1 ]]; then
  build_list 'Mozilla' '🦖' 'Block Mozilla telemetry, analytics, advertising, sponsored content, & more!' 'bl'
fi

if [[ "${BADBLOCK_BUILD_MOZILLA_WL}" == 1 ]]; then
  build_list 'Mozilla Whitelist' '🦖' 'Unblock the Good! (Mozilla Edition)' 'wl' 'mozilla_whitelist'
fi

if [[ "${BADBLOCK_BUILD_NINTENDO_WL}" == 1 ]]; then
  build_list 'Nintendo Whitelist' '⭐' 'Unblock the Good! (Nintendo Edition)' 'wl' 'nintendo_whitelist'
fi

if [[ "${BADBLOCK_BUILD_NSA}" == 1 ]]; then
  build_list 'NSA Blocklist - Next Generation' '🕵️' 'Block Big Brother!' 'bl' 'nsa-blocklist-ng'
fi

if [[ "${BADBLOCK_BUILD_NVIDIA}" == 1 ]]; then
  build_list 'NVIDIA' '👾' 'Block NVIDIA telemetry, analytics, & more!' 'bl'
fi

if [[ "${BADBLOCK_BUILD_ORACLE}" == 1 ]]; then
  build_list 'Oracle' '🍇' 'Block Oracle advertising, tracking, telemetry, & more!' 'bl'
fi

if [[ "${BADBLOCK_BUILD_PAGE_VIS}" == 1 ]]; then
  build_list 'Block Page Visibility' '👻' 'Block the Page Visibility API to allow background audio/video playback (and limit tracking).' 'bl' 'block-page-visibility' 1
fi

if [[ "${BADBLOCK_BUILD_PERSONAL}" == 1 ]]; then
  build_list 'Personal Blocklist' '🚀' 'My Personal Blocklist!' 'bl' 'personal'
fi

if [[ "${BADBLOCK_BUILD_PLAUSIBLE}" == 1 ]]; then
  build_list 'Plausible' '🤔' 'Block Plausible Analytics!' 'bl'
fi

if [[ "${BADBLOCK_BUILD_PUSH_WL}" == 1 ]]; then
  build_list 'Push Notifications Whitelist' '🔔' 'Never miss a message!' 'wl' 'push_whitelist'
fi

if [[ "${BADBLOCK_BUILD_RADAR}" == 1 ]]; then
  build_list 'Radar' '📡' 'Block advertising, analytics, unwanted data collection, tracking, & more as they arise!' 'bl'
fi

if [[ "${BADBLOCK_BUILD_SAFE_BROWSING_WL}" == 1 ]]; then
  build_list 'Safe Browsing Whitelist' '🔒' 'Unblock the Good! (Safe Browsing Edition)' 'wl' 'safe-browsing_whitelist'
fi

if [[ "${BADBLOCK_BUILD_SAMSUNG}" == 1 ]]; then
  build_list 'Samsung' '🦕' 'Block Samsung advertising, tracking, telemetry, & more!' 'bl'
fi

if [[ "${BADBLOCK_BUILD_SENTRY}" == 1 ]]; then
  build_list 'Sentry' '🪖' 'Block Sentry Analytics!' 'bl'
fi

if [[ "${BADBLOCK_BUILD_SVG}" == 1 ]]; then
  build_list 'Block SVG' '🛡️' 'Block SVG to harden the security of your web browser.' 'bl' 'block-svg' 1
fi

if [[ "${BADBLOCK_BUILD_SVG_UNBREAK}" == 1 ]]; then
  build_list 'Block SVG - Unbreak' '🛡️' 'Unbreak websites when SVG is blocked.' 'wl' 'unbreak-svg' 1
fi

if [[ "${BADBLOCK_BUILD_TIKTOK}" == 1 ]]; then
  build_list 'TikTok' '🎵' 'Block TikTok (Bytedance) advertising, tracking, telemetry, & more!' 'bl'
fi

if [[ "${BADBLOCK_BUILD_TIME_WL}" == 1 ]]; then
  build_list 'Time Servers Whitelist' '⏰' 'Unblock the Good! (Time Edition)' 'wl' 'time_whitelist'
fi

if [[ "${BADBLOCK_BUILD_TRUSTED}" == 1 ]]; then
  build_list 'Trusted filters' '⭐' 'BadBlock trusted filters' 'bl' 'trusted'
fi

if [[ "${BADBLOCK_BUILD_TWITTER}" == 1 ]]; then
  build_list 'Twitter' '🐦' 'Block Twitter (X) advertising, tracking, telemetry, & more!' 'bl'
fi

if [[ "${BADBLOCK_BUILD_UNITY}" == 1 ]]; then
  build_list 'Unity' '🧰' 'Block Unity advertising, tracking, telemetry, & more!' 'bl'
fi

if [[ "${BADBLOCK_BUILD_UNSAFE}" == 1 ]]; then
  build_list 'Unsafe' '⚠️' 'Block dangerous & malicious domains!' 'bl'
fi

if [[ "${BADBLOCK_BUILD_UNSAFE_EVAL}" == 1 ]]; then
  build_list 'Block unsafe eval() (WASM)' '🛡️' 'Block unsafe eval() to harden the security of your web browser.' 'bl' 'block-unsafe-eval' 1
fi

if [[ "${BADBLOCK_BUILD_UNSAFE_EVAL_UNBREAK}" == 1 ]]; then
  build_list 'Block unsafe eval() (WASM) - Unbreak' '🛡️' 'Unbreak websites when unsafe eval() is blocked.' 'wl' 'unbreak-unsafe-eval' 1
fi

if [[ "${BADBLOCK_BUILD_WEBGL}" == 1 ]]; then
  build_list 'Block WebGL' '🛡️' 'Block WebGL to harden the privacy & security of your web browser.' 'bl' 'block-webgl' 1
fi

if [[ "${BADBLOCK_BUILD_WEBGL_UNBREAK}" == 1 ]]; then
  build_list 'Block WebGL - Unbreak' '🛡️' 'Unbreak websites when WebGL is blocked.' 'wl' 'unbreak-webgl' 1
fi

if [[ "${BADBLOCK_BUILD_WEBGPU}" == 1 ]]; then
  build_list 'Block WebGPU' '🛡️' 'Block WebGPU to harden the privacy & security of your web browser.' 'bl' 'block-webgpu' 1
fi

if [[ "${BADBLOCK_BUILD_WEBGPU_UNBREAK}" == 1 ]]; then
  build_list 'Block WebGPU - Unbreak' '🛡️' 'Unbreak websites when WebGPU is blocked.' 'wl' 'unbreak-webgpu' 1
fi

if [[ "${BADBLOCK_BUILD_WEBRTC}" == 1 ]]; then
  build_list 'Block WebRTC' '🛡️' 'Block WebRTC to harden the privacy & security of your web browser.' 'bl' 'block-webrtc' 1
fi

if [[ "${BADBLOCK_BUILD_WEBRTC_UNBREAK}" == 1 ]]; then
  build_list 'Block WebRTC - Unbreak' '🛡️' 'Unbreak websites when WebRTC is blocked.' 'wl' 'unbreak-webrtc' 1
fi

if [[ "${BADBLOCK_BUILD_XIAOMI}" == 1 ]]; then
  build_list 'Xiaomi' 'Ⓜ️' 'Block Xiaomi (Mi) advertising, tracking, telemetry, & more!' 'bl'
fi

if [[ "${BADBLOCK_BUILD_YAHOO}" == 1 ]]; then
  build_list 'Yahoo!' '🖀' 'Block Yahoo! advertising, tracking, telemetry, & more!' 'bl' 'yahoo'
fi

if [[ "${BADBLOCK_BUILD_YANDEX}" == 1 ]]; then
  build_list 'Yandex' '🗞️' 'Block Yandex advertising, tracking, telemetry, & more!' 'bl'
fi

if [[ "${BADBLOCK_BUILD_LITE}" == 1 ]]; then
  build_list_combined 'BadBlock Lite' '⚡️' 'BadBlock, but slimmer!' 'bl' 'badblock_lite'
fi

if [[ "${BADBLOCK_BUILD_REGULAR}" == 1 ]]; then
  build_list_combined 'BadBlock' '🔇' 'BadBlock, blocking the bad!' 'bl'
fi

if [[ "${BADBLOCK_BUILD_PLUS}" == 1 ]]; then
  build_list_combined 'BadBlock+' '🔥' 'BadBlock+, the best of the best!' 'bl' 'badblock_plus'
fi

if [[ "${BADBLOCK_BUILD_WL_COMBINED}" == 1 ]]; then
  build_list_combined 'BadBlock - Whitelist' '✋' 'Unblock the good!' 'wl' 'whitelist'
fi
