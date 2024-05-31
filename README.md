# blocklists

Supplemental blocklists that can be applied to various services. 

---------

Welcome!

These are lists that I personally maintain and have taken from a variety of different sources, including other lists, & time and research of my own. I will always credit others for my findings, and if I missed anyone, please let me know. :)

The main focus of these lists will be to block domains that are used for advertising, tracking, annoyances, & malicious domains where possible (Thought that won't be a major goal of the project). I would recommend using AdGuard Home for these lists, but they should also work on other solutions, such as Pi-hole & Little Snitch.

These lists will generally go more in depth than others, as I'm fine causing breakage if it's justified. For instance, we block Google Assistant, Amazon Alexa, Cortana, & Siri domains, due to the privacy concerns associated with them. We don't wish to break any legitimate or important functionality though, so please report any false positives on any of these lists. We're also not generally going to compromise security for privacy, so we won't touch important domains used for i.e. updates or other important security checks. This isn't entirely the case though, and we will generally look at it on a case-by-case basis if the ends justify the means. For instance, we block [Microsoft's SmartScreen](https://learn.microsoft.com/windows/security/operating-system-security/virus-and-threat-protection/microsoft-defender-smartscreen/) & [Opera's Sitecheck](https://blogs.opera.com/security/2021/01/making-browsing-safe-from-phishing/), as they both involving sending every URL you visit directly to Microsoft & Opera respectively, and we don't feel it's worth it to make this trade-off for the small benefits it might bring. But, on the contrary, we don't block Google Safe Browsing, as it's generally privacy-respecting (as long as it it not enabled on the "Enhanced" mode), and brings real-world benefits with it. I hope this gives some insight into our thought process when choosing what to block and what not to block.

It's also going to be a goal to document any domains we cover. For now, I'm just using comments on the lists, but I might eventually make a separate Wiki page and go from there. We don't want to just randomly block or whitelist domains for no reason, and we want to allow it to be as easy as possible for people to whitelist domains if they desire certain functionality.

We're also not going to block dead domains, but we will probably document them.

Like the description states, these are **supplemental**. Please do **not** rely on any of these lists as your only list.

In addition to any lists you choose here, I would also strongly recommend using the following:

* [HaGeZi Multi Ultimate](https://github.com/hagezi/dns-blocklists?tab=readme-ov-file#closed_book-multi-ultimate---aggressive-protection-) - If this is too strict for you, you can try his lower lists, such as [Multi Pro++](https://github.com/hagezi/dns-blocklists?tab=readme-ov-file#orange_book-multi-pro---maximum-protection-). These are extremely effective lists blocking carefully considered ad, tracking, phishing, scam, and other garbage domains, with few false positives.

* [HaGeZi's Threat Intelligent Feeds](https://github.com/hagezi/dns-blocklists?tab=readme-ov-file#closed_lock_with_key-threat-intelligence-feeds---increases-security-significantly-recommended-) - This is excellent for blocking malware, cryptojacking, scam, spam, and phishing domains.

* [HaGeZi's Threat Intelligence Feeds - IPs](https://github.com/hagezi/dns-blocklists?tab=readme-ov-file#closed_lock_with_key-threat-intelligence-feeds---ips-) - You should use this in combination with the regular Threat Intelligent Feeds list above if possible, as it will add extra protection from malicious IPs directly.

* [HaGeZi/xRuffKez's NRDs (14 days)](https://github.com/hagezi/dns-blocklists?tab=readme-ov-file#new-domains-registered-in-the-last-14-days-) - This blocks newly registered domains for 14 days after their creation. This is great at protecting against malicious sites.

* [HaGeZi's Encrypted DNS Servers](https://github.com/hagezi/dns-blocklists?tab=readme-ov-file#outbox_tray-encrypted-dns-servers-only-) - This is important at helping to prevent bypassing your DNS protection.

* [HaGeZi's Encrypted DNS Servers - IPs](https://github.com/hagezi/dns-blocklists?tab=readme-ov-file#outbox_tray-encrypted-dns-servers-ips-) - Same as above, you should use this in combination with the regular HaGeZi's Encrypted DNS Servers list if possible.

* [HaGeZi's Dynamic DNS blocking](https://github.com/hagezi/dns-blocklists?tab=readme-ov-file#lock_with_ink_pen-dynamic-dns-blocking---protects-against-the-malicious-use-of-dynamic-dns-services-) - Blocks dynamic DNS services, which are extremely commonly used for malicious campaigns.

* [HaGeZi's Badware Hoster blocking](https://github.com/hagezi/dns-blocklists?tab=readme-ov-file#computer-badware-hoster-blocking---protects-against-the-malicious-use-of-free-host-services-) - Blocks hosting websites that are commonly used for malicious purposes.

* [HaGeZi's Most Abused TLDs](https://github.com/hagezi/dns-blocklists?tab=readme-ov-file#crystal_ball-most-abused-tlds---protects-against-known-malicious-top-level-domains-) - Blocks TLDs commonly used for malicious purposes, may cause minimal breakage.

* [Divested Computing Combined List](https://divested.dev/pages/dnsbl#combined) - Very effective list maintained by [Divested Computing Group](https://divested.dev/), known for their privacy & security work with projects like [DivestOS](https://divestos.org/), [the Mull browser](https://f-droid.org/en/packages/us.spotco.fennec_dos/), & [Hypatia](https://f-droid.org/packages/us.spotco.malwarescanner/). Covers lots of sources, and protects against ads, tracking, & malicious domains.

* [1Hosts Pro](https://github.com/badmojr/1Hosts#1hosts-pro) - This is another list that provides strong protection against ads & tracking. Unfortunately, its maintainer is less active than desirable, so there may be some false positives, however I haven't encountered many.

Additionally, you could consider using [Ph00lt0's blocklist](https://github.com/ph00lt0/blocklist). This list is very comprehensive and has lots of coverage other lists don't, but it also does seem to cause breakage.

Please also note that you shouldn't entirely rely on DNS content blocking like this for protecting yourself against ads/tracking/malicious domains/etc. You should always have a layered approach. I would also strongly recommend also using uBlock Origin on your browser with the following lists:

* Enable all built-in filter lists except the ones under "Regions, languages" - Only enable ones under there that you actually need, if any.

* https://raw.githubusercontent.com/DandelionSprout/adfilt/master/LegitimateURLShortener.txt

* https://divested.dev/blocklists/Fingerprinting.ubl

You should also:

* Use an upstream DNS server like [Quad9](https://quad9.net/) - Ran by a Switzerland-based non-profit, extremely effective at blocking new threats as they arise.

* Enable Safe Browsing in your browser if possible and if it's not done in a privacy-invasive way. (You should use i.e. [Google Safe Browsing on "Standard" Mode](https://safebrowsing.google.com/), [Firefox's Safe Browsing](https://support.mozilla.org/kb/how-does-phishing-and-malware-protection-work), [Brave's Safe Browsing](https://brave.com/privacy/browser/#safe-browsing), & [Safari's Fraudulent Website Warning](https://www.apple.com/legal/privacy/data/en/safari/), you should avoid most other options i.e. [Google Safe Browsing on "Enhanced" Mode]((https://safebrowsing.google.com/), [Microsoft SmartScreen](https://learn.microsoft.com/windows/security/operating-system-security/virus-and-threat-protection/microsoft-defender-smartscreen/), & [Opera Sitecheck](https://blogs.opera.com/security/2021/01/making-browsing-safe-from-phishing/))

* Use an anti-virus if possible. On Windows, you can use the built-in [Microsoft Defender Antivirus](https://en.wikipedia.org/wiki/Microsoft_Defender_Antivirus), on macOS, you can stick to the built-in [XProtect](https://support.apple.com/guide/security/protecting-against-malware-sec469d47bd8/web), on Android, you can use [Hypatia](https://f-droid.org/packages/us.spotco.malwarescanner/), and on Linux, you can use [ClamAV](https://www.clamav.net/). NOTE: You should install Hypatia through the [DivestOS Official Repo](https://divestos.org/fdroid/official/?fingerprint=E4BE8D6ABFA4D9D4FEEF03CDDA7FF62A73FD64B75566F6DD4E5E577550BE8467) instead of F-Droid's main repo, as it will allow you to receive quicker updates directly from the developer. It's also recommended to use [F-Droid Basic](https://f-droid.org/en/packages/org.fdroid.basic/) as your F-Droid client of choice.