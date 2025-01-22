#!/bin/bash

./abp/gen/adobe_gen.sh && ./abp/gen/amazon_gen.sh && ./abp/gen/annoyances_gen.sh && ./abp/gen/apple_gen.sh && ./abp/gen/brave_gen.sh && ./abp/gen/click-tracking_gen.sh && ./abp/gen/crap_gen.sh && ./abp/gen/data-brokers_gen.sh && ./abp/gen/doh_gen.sh && ./abp/gen/drm_gen.sh && ./abp/gen/facebook_gen.sh && ./abp/gen/find-my_gen.sh && ./abp/gen/gaming_gen.sh && ./abp/gen/google_gen.sh && ./abp/gen/huawei_gen.sh && ./abp/gen/lg_gen.sh && ./abp/gen/matomo_gen.sh && ./abp/gen/microsoft_gen.sh && ./abp/gen/monitoring_gen.sh && ./abp/gen/mozilla_gen.sh && ./abp/gen/nsa-blocklist-ng_gen.sh && ./abp/gen/nvidia_gen.sh && ./abp/gen/oracle_gen.sh && ./abp/gen/personal_gen.sh && ./abp/gen/plausible_gen.sh && ./abp/gen/radar_gen.sh && ./abp/gen/samsung_gen.sh && ./abp/gen/sentry_gen.sh && ./abp/gen/tiktok_gen.sh && ./abp/gen/twitter_gen.sh && ./abp/gen/unsafe_gen.sh && ./abp/gen/xiaomi_gen.sh && ./abp/gen/yahoo_gen.sh && ./abp/gen/yandex_gen.sh

./abp/abp_gen_lite.sh && ./abp/abp_gen_regular.sh && ./abp/abp_gen_plus.sh

./abp/abp_whitelist_gen_all.sh