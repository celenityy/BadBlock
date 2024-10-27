#!/bin/bash

./wildcards-no-star/gen/amazon_gen.sh && ./wildcards-no-star/gen/annoyances_gen.sh && ./wildcards-no-star/gen/apple_gen.sh && ./wildcards-no-star/gen/brave_gen.sh && ./wildcards-no-star/gen/crap_gen.sh && ./wildcards-no-star/gen/data-brokers_gen.sh && ./wildcards-no-star/gen/doh_gen.sh && ./wildcards-no-star/gen/drm_gen.sh && ./wildcards-no-star/gen/google_gen.sh && ./wildcards-no-star/gen/microsoft_gen.sh && ./wildcards-no-star/gen/monitoring_gen.sh && ./wildcards-no-star/gen/mozilla_gen.sh && ./wildcards-no-star/gen/nsa-blocklist-ng_gen.sh && ./wildcards-no-star/gen/personal_gen.sh && ./wildcards-no-star/gen/radar_gen.sh && ./wildcards-no-star/gen/gaming_gen.sh && ./wildcards-no-star/gen/unsafe_gen.sh

./wildcards-no-star/no_star_gen_lite.sh && ./wildcards-no-star/no_star_gen_regular.sh && ./wildcards-no-star/no_star_gen_plus.sh

./wildcards-no-star/no-star_whitelist_gen_all.sh