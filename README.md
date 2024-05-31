# blocklists

Supplemental blocklists that can be applied to various services. 

---------

Welcome!

These are lists that I personally maintain and have taken from a variety of different sources, including other lists, & time and research of my own. I will always credit others for my findings, and if I missed anyone, please let me know. :)

I'm generally going to block domains that are used for advertising, tracking, & annoyances. These lists are targetted for AdGuard Home, but they should also work on Pi-hole, and other content blocking services where possible.

Like the description states, these are **supplemental**. Please do not rely on any of these lists as your only list. 

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

* [Divested Computing Combined List](https://divested.dev/pages/dnsbl#combined) - Very effective list maintained by Divested Computing Group, known for their privacy & security work with projects like DivestOS, the Mull browser, & Hypatia. Covers lots of sources, and protects against ads, tracking, & malicious domains.

* [1Hosts Pro](https://github.com/badmojr/1Hosts#1hosts-pro) - This is another list that provides strong protection against ads & tracking. Unfortunately, its maintainer is less active than desirable, so there may be some false positives, however I haven't encountered many.

Additionally, you could consider using [Ph00lt0's blocklist](https://github.com/ph00lt0/blocklist). This list is very comprehensive and has lots of coverage other lists don't, but it also does seem to cause breakage.