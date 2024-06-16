# **Welcome to BadBlock!**

NOTE: This project can be found on both [Codeberg](https://codeberg.org/Magnesium1062/BadBlock), which will act as the main & preferred way to contribute, and [GitHub](https://github.com/Retold3202/BadBlock).

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

We additionally offer an extensive [Whitelist](https://codeberg.org/Magnesium1062/blocklists/_edit/main/whitelist.txt), which we would also recommend using. The goal of the list is to ensure that domains required for important functionality or legitimate security features are never blocked, as well as unblocking other harmless domains.

# How to use? / Formats available

We currently offer the following formats for use of our lists:

* ABP - This is the format we would recommend using if possible, as the ABP syntax is simply the most effective at blocking, & the most advanced out there. It also has very strong compatibility.

* Wildcard Domains (With and without `*`) - If you are unable to use the ABP lists, we also provide our lists in the wildcard domains format, one variant with the `*` before domains, and one without. This is also extremely effective at blocking, and can be a great option depending on your blocker of choice.

⚠️ We are **NOT** planning to create "HOSTS" files at this time. We would recommend reading the reasons OISD lists [here](https://oisd.nl/faq#legacysyntaxes), as we strongly agree with them. HOSTS files are simply very time consuming to maintain, unnecessarily large, and plain and simple just not effective at blocking.

⭐️ We would generally recommend using [AdGuard Home](https://adguard.com/adguard-home/overview.html) as your DNS content blocker of choice if possible, as it is free and open source, and offers the strongest amount of customization & features. You can see our recommended set-up for AdGuard Home [here](https://codeberg.org/Magnesium1062/adguard-home-settings). These lists are also compatible with various other content blockers & firewalls, such as uBlock Origin, AdGuard, Brave Shields, Little Snitch, Pi-hole, & more. Our lists are currently not available on any cloud DNS blocking solutions (ex. NextDNS, ControlD, AdGuard DNS), but we hope that will change, as we feel like our lists could prove to be valuable and needed additions to those services.

# Additional General Recommendations

* Please do **not** rely on DNS blocking as your only defense against advertising, tracking, and other nastiness. You should also use a strong and reputable browser content blocker, such as [uBlock Origin](https://github.com/gorhill/uBlock), as well as making use of your browser's Safe Browsing technology if it is not done in a privacy-invasive way, and using a (reputable) Anti-virus. On most platforms, you should simply stick to the built-in protection, but on Linux, we would recommend [ClamAV](https://www.clamav.net/), and on Android, we would recommend [Hypatia](https://f-droid.org/packages/us.spotco.malwarescanner/).

* You should use a privacy-respecting browser that respects you as a user. [Firefox](https://www.mozilla.org/firefox/) with a user.js like [Arkenfox](https://github.com/arkenfox/user.js) is a great choice.

* It can also be advisable to use a reputable VPN, as VPNs can provide many benefits, such as preventing tracking via the IP address, hiding your general location and ISP, bypassing censorship & geo-blocking, preventing your traffic from being sold and logged by your ISP, preventing exposing your LAN to the internet, among a lot of other factors. We would generally recommend either [Mullvad](https://mullvad.net/) or [ProtonVPN](https://protonvpn.com/).
