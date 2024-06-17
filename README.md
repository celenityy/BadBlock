# **Welcome to BadBlock!**

**NOTE:** This project can be found on both [Codeberg](https://codeberg.org/Magnesium1062/BadBlock), which will act as the main & preferred way to contribute, and [GitHub](https://github.com/Retold3202/BadBlock).

These are DNS blocklists that I personally maintain covering a variety of different services, applications, & platforms. We will generally block the following types of domains:

* Advertising - ✅

* Promotions - ✅

* Sponsorships - ✅

* Tracking - ✅

* Analytics - ✅

* Telemetry - ✅

* Annoyances - ✅

* Undesired MDM/Remote Management Tools - ✅

We offer individual lists, as well as combined lists for your choosing, depending on your taste & preference.

The goal is **not** to completely break legitimate functionality in any of our lists, rather, only to block anti-features or functionality that serves as harmful to the user.

You might be wondering what makes BadBlock stand out above the thousands of other blocklist projects out there. Well, for one, **we simply offer the most comprehensive coverage of domains** .

Unlike most other lists and projects like this, we are *okay* with breakage, - but only **if the ends justify the means**. For instance, we have no problem breaking Google Assistant, Cortana, Siri, Alexa, Gemini, etc. due to the severe privacy concerns associated with them. Most lists don't want to touch this though, since they worry about complaints for users. We believe that if users wish to use this questionable functionality, they should whitelist the relevant domains themselves, rather than forcing it on everyone. **As such, it's also a goal for us to provide easy & strong documentation on our domains, as to what we block and why**. This allows users to easily whitelist domains if they desire to restore functionality like this that we disagree with, and also helps us to avoid adding false positives. 

That's something else that makes BadBlock stand out, **we carefully research every single entry we add**. We don't just blindly or randomly add domains for no reason unless there's a clear reason or benefit from doing so.

With that said though, it should be noted that we also don't want to cause breakage for legitimate functionality. Legitimate functionality can be defined as things that provide an actual benefit to the user, that the user is actively choosing to take advantage of, and that is not harming their privacy to an unacceptable extent. For instance, we're not going to block google.com - Even though it's horrible from a privacy standpoint and we don't recommend using it, it also serves as a legitimate search engine that provides value to end-users. **If you run into any false positives or undesired breakage as a result from our lists, please file an issue and report it to us.**

We are also going to make it a point **not** to break important features for security. For instance, software updates will never be intentionally broken or blocked by our lists. The same goes for CRL & OCSP checks, time servers, etc. The keyword here is **important** though, because this doesn't always apply. For instance, in our Microsoft list, we block Smartscreen. The reason is simple: It's extremely invasive from a privacy perspective, as it directly sends every URL you visit & other sensitive information to Microsoft, without any obfuscation or attempt at anonymizing the data. Not to mention this is not made clear or transparent to the user at all. Therefore, we have no problem blocking it due to the extreme privacy risk it poses. However, we don't block Google's Safe Browsing, as it is generally not a concern for privacy unless you enable the "Enhanced" mode, and the benefits it brings outweigh the negatives.

It should also be noted that we report our findings upstreams to other blocklists where relevant, particularly [HaGeZi's](https://github.com/hagezi/dns-blocklists).

We additionally offer an extensive [Whitelist](https://codeberg.org/Magnesium1062/blocklists/_edit/main/whitelist.txt), which we would also recommend using. The goal of the list is to ensure that domains required for important functionality or legitimate security features are never blocked, as well as unblocking other harmless domains.

# The Lists

### ⚡️ **BadBlock Lite**

The essentials! It includes our `Apple`, `Brave`, `Data Brokers`, `Google`, `Mozilla`, `NSA Blocklist - Next Generation`, & `Roblox` lists.

* ABP Syntax *(Recommended)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/abp/badblock_lite.txt`

* ABP Syntax *(Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/abp/badblock_lite.txt`

* Wildcard Domains *(With `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-%2A/badblock_lite.txt`

* Wildcard Domains *(With `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-*/badblock_lite.txt`

* Wildcard Domains *(Without `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-no-%2A/badblock_lite.txt`

* Wildcard Domains *(Without `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-no-*/badblock_lite.txt`

### 🔇 **BadBlock** (*Recommended for most people*)

Our premier block list. It includes all of the lists in `Lite`, as well as our `Stalkerware` list. You can't go wrong.

* ABP Syntax *(Recommended)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/abp/badblock.txt`

* ABP Syntax *(Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/abp/badblock.txt`

* Wildcard Domains *(With `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-%2A/badblock.txt`

* Wildcard Domains *(With `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-*/badblock.txt`

* Wildcard Domains *(Without `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-no-%2A/badblock.txt`

* Wildcard Domains *(Without `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-no-*/badblock.txt`

### 🔥 **BadBlock+** 

Complete coverage. This includes all of our lists in `BadBlock` above, as well as our `Crap` list. Another great option. 

* ABP Syntax *(Recommended)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/abp/badblock_plus.txt`

* ABP Syntax *(Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/abp/badblock_plus.txt`

* Wildcard Domains *(With `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-%2A/badblock_plus.txt`

* Wildcard Domains *(With `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-*/badblock_plus.txt`

* Wildcard Domains *(Without `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-no-%2A/badblock_plus.txt`

* Wildcard Domains *(Without `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-no-*/badblock_plus.txt`

###  **Apple** 

Block Apple advertising, telemetry, promotions, & more!

* ABP Syntax *(Recommended)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/abp/apple.txt`

* ABP Syntax *(Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/abp/apple.txt`

* Wildcard Domains *(With `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-%2A/apple.txt`

* Wildcard Domains *(With `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-*/apple.txt`

* Wildcard Domains *(Without `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-no-%2A/apple.txt`

* Wildcard Domains *(Without `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-no-*/apple.txt`

### 🦁 **Brave**

Block Brave telemetry, analytics, advertising, sponsored content, & more!

* ABP Syntax *(Recommended)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/abp/brave.txt`

* ABP Syntax *(Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/abp/brave.txt`

* Wildcard Domains *(With `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-%2A/brave.txt`

* Wildcard Domains *(With `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-*/brave.txt`

* Wildcard Domains *(Without `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-no-%2A/brave.txt`

* Wildcard Domains *(Without `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-no-*/brave.txt`

### 🗑️ **Crap**

Block toxic domains!

* ABP Syntax *(Recommended)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/abp/crap.txt`

* ABP Syntax *(Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/abp/crap.txt`

* Wildcard Domains *(With `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-%2A/crap.txt`

* Wildcard Domains *(With `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-*/crap.txt`

* Wildcard Domains *(Without `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-no-%2A/crap.txt`

* Wildcard Domains *(Without `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-no-*/crap.txt`

### 💰 **Data Brokers**

Stop the People Search!

* ABP Syntax *(Recommended)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/abp/data-brokers.txt`

* ABP Syntax *(Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/abp/data-brokers.txt`

* Wildcard Domains *(With `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-%2A/data-brokers.txt`

* Wildcard Domains *(With `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-*/data-brokers.txt`

* Wildcard Domains *(Without `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-no-%2A/data-brokers.txt`

* Wildcard Domains *(Without `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-no-*/data-brokers.txt`

### 🔒 **DRM**

Stop Digital Restrictions Management!

* ABP Syntax *(Recommended)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/abp/drm.txt`

* ABP Syntax *(Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/abp/drm.txt`

* Wildcard Domains *(With `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-%2A/drm.txt`

* Wildcard Domains *(With `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-*/drm.txt`

* Wildcard Domains *(Without `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-no-%2A/drm.txt`

* Wildcard Domains *(Without `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-no-*/drm.txt`

### 🔤 **Google**

Block Google advertising, tracking, promotions, & more!

* ABP Syntax *(Recommended)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/abp/google.txt`

* ABP Syntax *(Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/abp/google.txt`

* Wildcard Domains *(With `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-%2A/google.txt`

* Wildcard Domains *(With `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-*/google.txt`

* Wildcard Domains *(Without `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-no-%2A/google.txt`

* Wildcard Domains *(Without `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-no-*/google.txt`

### 🪟 **Microsoft**

Close the Windows! Block M$ advertising, tracking, promotions, & more!

* ABP Syntax *(Recommended)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/abp/microsoft.txt`

* ABP Syntax *(Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/abp/microsoft.txt`

* Wildcard Domains *(With `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-%2A/microsoft.txt`

* Wildcard Domains *(With `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-*/microsoft.txt`

* Wildcard Domains *(Without `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-no-%2A/microsoft.txt`

* Wildcard Domains *(Without `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-no-*/microsoft.txt`

### 🦖 **Mozilla**

Block Mozilla telemetry, analytics, advertising, sponsored content, & more!

* ABP Syntax *(Recommended)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/abp/mozilla.txt`

* ABP Syntax *(Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/abp/mozilla.txt`

* Wildcard Domains *(With `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-%2A/mozilla.txt`

* Wildcard Domains *(With `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-*/mozilla.txt`

* Wildcard Domains *(Without `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-no-%2A/mozilla.txt`

* Wildcard Domains *(Without `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-no-*/mozilla.txt`

### 🕵️ **NSA Blocklist - Next Generation**

Block Big Brother!

* ABP Syntax *(Recommended)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/abp/nsa-blocklist-ng.txt`

* ABP Syntax *(Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/abp/nsa-blocklist-ng.txt`

* Wildcard Domains *(With `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-%2A/nsa-blocklist-ng.txt`

* Wildcard Domains *(With `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-*/nsa-blocklist-ng.txt`

* Wildcard Domains *(Without `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-no-%2A/nsa-blocklist-ng.txt`

* Wildcard Domains *(Without `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-no-*/nsa-blocklist-ng.txt`

### 🎮 **Roblox**

Block Roblox telemetry, analytics, advertising, tracking, & more!

* ABP Syntax *(Recommended)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/abp/roblox.txt`

* ABP Syntax *(Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/abp/roblox.txt`

* Wildcard Domains *(With `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-%2A/roblox.txt`

* Wildcard Domains *(With `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-*/roblox.txt`

* Wildcard Domains *(Without `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-no-%2A/roblox.txt`

* Wildcard Domains *(Without `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-no-*/roblox.txt`

### 🔎 **Stalkerware**

Stop the spy!

* ABP Syntax *(Recommended)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/abp/stalkerware.txt`

* ABP Syntax *(Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/abp/stalkerware.txt`

* Wildcard Domains *(With `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-%2A/stalkerware.txt`

* Wildcard Domains *(With `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-*/stalkerware.txt`

* Wildcard Domains *(Without `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-no-%2A/stalkerware.txt`

* Wildcard Domains *(Without `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-no-*/stalkerware.txt`

### ✋ **BadBlock Whitelist**

Allow the legitimate domains!

* `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/whitelist.txt`

* Backup - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/whitelist.txt`


# How to use? / Formats available

We currently offer the following formats for use of our lists:

* ABP - This is the format we would recommend using if possible, as the ABP syntax is simply the most effective at blocking, & the most advanced out there. It also has very strong compatibility.

* Wildcard Domains (With and without `*`) - If you are unable to use the ABP lists, we also provide our lists in the wildcard domains format, one variant with the `*` before domains, and one without. This is also extremely effective at blocking, and can be a great option depending on your blocker of choice.

⚠️ We are **NOT** planning to create "HOSTS" files at this time. We would recommend reading the reasons OISD lists [here](https://oisd.nl/faq#legacysyntaxes), as we strongly agree with them. HOSTS files are very time consuming to maintain, unnecessarily large, and above all else: just not effective at blocking.

⭐️ We would generally recommend using [AdGuard Home](https://adguard.com/adguard-home/overview.html) as your DNS content blocker of choice if possible, as it is free and open source, and offers the strongest amount of customization & features. You can see our recommended set-up for AdGuard Home [here](https://codeberg.org/Magnesium1062/adguard-home-settings). These lists are also compatible with various other content blockers & firewalls, such as uBlock Origin, AdGuard, Brave Shields, Little Snitch, Pi-hole, & more. Our lists are currently not available on any cloud DNS blocking solutions (ex. NextDNS, ControlD, AdGuard DNS), but we hope that will change, as we feel like our lists could prove to be valuable and needed additions to those services.

# Should I use any other lists, and if so, what?

Yes, you should **not** solely rely on any BadBlock lists. I'm of the firm belief that it's always a good idea to use a combination of high quality lists for your blocking purposes. I would generally also recommend using the following, depending on what's best available to you:

* ⭐️ [HaGeZi's Multi Pro++](https://github.com/hagezi/dns-blocklists?tab=readme-ov-file#orange_book-multi-pro---maximum-protection-) - Without a doubt, hands down, HaGeZi maintains the best DNS blocklists out there. There's a reason we mainly contribute upstream domains to him. His lists are comprehensive, very high quality with carefully considered domains, no nonsense, with little to no breakage or false positives. If you're fine with a little breakage, we would recommend using [HaGeZi's Ultimate list](https://github.com/hagezi/dns-blocklists?tab=readme-ov-file#closed_book-multi-ultimate---aggressive-protection-) instead of Multi Pro++, but Multi Pro++ is still an excellent option.

* ⭐️ [HaGeZi's Threat Intelligence Feeds](https://github.com/hagezi/dns-blocklists?tab=readme-ov-file#closed_lock_with_key-threat-intelligence-feeds---increases-security-significantly-recommended-) - Another fantastic list maintained by HaGeZi, focused on blocking malicious domains, with a wide variety of high quality sources. There is also a [complementary list focused on blocking malicious IP addresses](https://github.com/hagezi/dns-blocklists?tab=readme-ov-file#closed_lock_with_key-threat-intelligence-feeds---ips-), which you should also use if possible.

* ⭐️ [HaGeZi's Encrypted DNS Servers](https://github.com/hagezi/dns-blocklists?tab=readme-ov-file#outbox_tray-encrypted-dns-servers-only-) - This is another important & effective list from HaGeZi, as it helps to prevent apps & services from using their own DNS servers to bypass your DNS content blocking.

* ⭐️ [HaGeZi's Badware Hoster Blocking](https://github.com/hagezi/dns-blocklists?tab=readme-ov-file#computer-badware-hoster-blocking---protects-against-the-malicious-use-of-free-host-services-) - Another great list from HaGeZi, helps to further reduces the risk of getting malware.

* ⭐️ [HaGeZi's Most Abused TLDs](https://github.com/hagezi/dns-blocklists?tab=readme-ov-file#crystal_ball-most-abused-tlds---protects-against-known-malicious-top-level-domains-) - Blocks TLDs that are commonly abused for malicious purposes, with little to no breakage. I have seen this work first-hand, so I also highly recommend making use of it.

* ⭐️ [xRuffKez's Newly Registerd Domains (NRDs)](https://github.com/hagezi/dns-blocklists?tab=readme-ov-file#new-newly-registered-domains-nrds-) - If you are unable to block NRDs on your DNS content blocking solution (like NextDNS), this is another vital risk to add, as it heavily improves security by blocking newly registered domains, which are extremely commonly used for malicious purposes. We would recommend using the `14 days` variant.

* ⭐️ [HaGeZi's Dynamic DNS Blocking](https://github.com/hagezi/dns-blocklists?tab=readme-ov-file#lock_with_ink_pen-dynamic-dns-blocking---protects-against-the-malicious-use-of-dynamic-dns-services-) - Similar to above, if you are unable to block Dynamic DNS servers with your DNS content blocking solution (like NextDNS), this is another very important list to take advantage of, as it heavily improves security by blocking Dynamic DNS servers, which are very commonly abused.

* ⭐️ [Divested Combined List](https://divested.dev/pages/dnsbl#combined) - Excellent high quality blocklist covering advertising, tracking, spam, & malicious domains from lots of different sources. Maintained by [Divested Computing Group](https://divested.dev), known for their [award winning](https://www.fsf.org/news/free-software-awards-winners-announced-eli-zaretskii-tad-skewedzeppelin-gnu-jami) privacy & security work through various projects such as [DivestOS](https://divestos.org/), [the Mull browser](https://f-droid.org/packages/us.spotco.fennec_dos/), & [Hypatia](https://f-droid.org/en/packages/us.spotco.malwarescanner/).

* ⭐️ [Developer Dan's Ads & Tracking](https://github.com/lightswitch05/hosts) - While this list is unfortunately not actively maintained anymore, it is still a very high quality & comprehensive blocklist with little to no false positives. I still regularly see domains being blocked from it that other lists miss. 

* ⭐️ [EasyList](https://v.firebog.net/hosts/Easylist.txt) - Classic must-have list focused on blocking online advertising, parsed specifically for DNS content blocking.

* ⭐️ [EasyPrivacy](https://v.firebog.net/hosts/Easyprivacy.txt) - Also maintained by EasyList, another must-have list, this time focused on blocking unwanted tracking & data collection.

# Additional General Recommendations

* Please do **not** rely on DNS blocking as your only defense against advertising, tracking, and other nastiness. You should also use a strong and reputable browser content blocker, such as [uBlock Origin](https://github.com/gorhill/uBlock) *(See recommended settings [here](https://codeberg.org/Magnesium1062/ublock-origin-settings))*, as well as making use of your browser's Safe Browsing technology if it is not done in a privacy-invasive way, and using a (reputable) Anti-virus. On most platforms, you should simply stick to the built-in protection, but on Linux, we would recommend [ClamAV](https://www.clamav.net/), and on Android, we would recommend [Hypatia](https://f-droid.org/packages/us.spotco.malwarescanner/).  **NOTE:** You should install Hypatia through the [DivestOS Official Repo](https://divestos.org/fdroid/official/?fingerprint=E4BE8D6ABFA4D9D4FEEF03CDDA7FF62A73FD64B75566F6DD4E5E577550BE8467) instead of F-Droid's main repo, as it will allow you to receive quicker updates directly from the developer. It's also recommended to use [F-Droid Basic](https://f-droid.org/en/packages/org.fdroid.basic/) as your F-Droid client of choice.

* You should use a privacy-respecting browser that respects you as a user. [Firefox](https://www.mozilla.org/firefox/) with a user.js like [Arkenfox](https://github.com/arkenfox/user.js) is a great choice.

* It can also be advisable to use a reputable VPN, as VPNs can provide many benefits, such as preventing tracking via the IP address, hiding your general location and ISP, bypassing censorship & geo-blocking, preventing your traffic from being sold and logged by your ISP, preventing exposing your LAN to the internet, among a lot of other factors. We would generally recommend either [Mullvad](https://mullvad.net/) or [ProtonVPN](https://protonvpn.com/).
