# **Welcome to BadBlock!**

**NOTE:** This project can be found on both [Codeberg](https://codeberg.org/Magnesium1062/BadBlock), which will act as the main & preferred way to contribute, and [GitHub](https://github.com/Retold3202/BadBlock).

# Table of Contents

### 1. [What is BadBlock?](#what-is-badblock)

### 2. [Why BadBlock?](#why-badblock)

### 3. [What does BadBlock block?](#so-what-does-badblock-block)

### 4. [How to use BadBlock/Formats Available](#how-to-use--formats-available)

### 5. [The Lists](#the-lists)

#### 6. [BadBlock Combined Lists](#badblock-combined-lists)

#### 7. [BadBlock Individual Lists](#individual-lists)

### 8. [The Whitelist](#whitelist)

### 9. [Should I use any other lists, and if so, what?](#should-i-use-any-other-lists-and-if-so-what)

### 10. [General Recommendations](#general-recommendations)

### 11. [Credit](#credits)

---

# What is BadBlock?

BadBlock is a collection of comprehensive domain blocklists that I personally maintain covering a variety of different services, applications, & platforms, with the goal of blocking... well, as the name suggests, stuff that is bad™ (More details [below](#so-what-does-badblock-block).

BadBlock started as simply a collection of my blocklists that I hosted on Codeberg for my person use. However, I noticed that people started taking notice of the project, and it's gradually grown & evolved over time to become what you see here today.

BadBlock is **NOT** a compilation of other blocklists from various sources. These are all domains derived from my own research & analysis. You should **NOT** rely on BadBlock as your only blocklist, recommendations will be provided [below](#should-i-use-any-other-lists-and-if-so-what).

BadBlock also maintains a comprehensive [Whitelist](#whitelist), with the goal of unblocking important domains & false positives that are blocked by other lists.

Something interesting & unique about BadBlock is that the lists here are very granular in nature. BadBlock offers [3 primary combined blocklists](#badblock-combined-lists) (`BadBlock Lite`, `BadBlock`, & `BadBlock+`), which are built from various [individual lists](#individual-lists) in the project. The combined lists are simply the presets and what I recommend people use for convenience, but by all means, feel free to mix, match, and use any of these lists however you please. :)

# Why BadBlock?

Out of all the thousands of blocklists out there, why should you specifically use lists from BadBlock? What does BadBlock bring to the table? In my opinion, there are a few things that make BadBlock stand out:

* Domains added are very carefully considered through through my personal research & analysis, and also very well-documented, so that it is easy to determine what domains we block and why, and for users to whitelist domains if they wish to do so.

* BadBlock is not scared to go above and beyond and cause breakage - but only **if the ends justify the means**. BadBlock has no issue blocking privacy invasive features such as Microsoft SmartScreen *(explained [below](#so-what-does-badblock-block)* & voice assistants like Google Assistant & Amazon Alexa. These features pose extreme privacy concerns, are generally enabled by default or through dark patterns, & the risks aren't made clear to the end-user. Therefore, BadBlock blocks them. Most other lists won't block these types of domains, out of fear of breakage & complaints from users. BadBlock is different, **I believe that every user should always be in control of their digital experience.** If the user still wishes to use a feature like this that I block, they may do so and create a whitelist entry, **but now they are at least actively thinking & making a conscious decision to use it**. However, BadBlock will not block domains that provide legitimate functionality & fall under the categories explained below. **If you run into any false positives or undesired breakage as a result from these lists, please file an issue and report it.**

* BadBlock's ABP lists *(which I recommend using if possible, more details [below](#how-to-use--formats-available))* also take advantage of wildcards to ensure that the lists have the most effective & efficient content blocking possible.

It should be noted that BadBlock also wishes to improve content blocking as a whole for everyone. *(No fun in keeping all the domains for myself! :p)* As such, I make an effort to report domains to other lists where relevant & applicable, such as [HaGeZi's](https://github.com/hagezi/dns-blocklists), and I work with other list maintainers where possible.

# So, what does BadBlock block?

BadBlock will generally focus on blocking the following types of domains where relevant & applicable on all of the `BadBlock` lists:

* ⭐️ Advertising/Promotions/Sponsored Content - ✅ *(On all lists)*

* ⭐️ Analytics/Telemetry - ✅ *(On all lists)*

* ⭐️ Anti-Adblock - ✅ *(On all lists where relevant)*

* ⭐️ Data Brokers/People Search - ✅ *(On all lists where relevant, but especially `Data Brokers`)*

* ⭐️ Tracking/Fingerprinting - ✅ *(On all lists)*

* ⭐️ Voice Assistants *(ex. Google Assistant, Google Gemini, Amazon Alexa, Siri, Cortana, etc.)* - ✅ *(On all lists where relevant)*

<br>

Additionally, depending on the list you choose, BadBlock will also cover:

* ⭐️ Annoyances - ✅ *(On all lists where relevant, but especially 'Annoyances')*

* ⭐️ DRM - ✅ *(On `DRM`)*

* ⭐️ Undesirable/toxic domains - ✅ *(On `Crap` & `BadBlock+`)*

* ⭐️ Undesired MDM/Remote Management Tools - ✅ *(On `Anti-Monitoring`, `BadBlock`, & `BadBlock+`)*

* ⭐️ Undesired Monitoring Tools - ✅ *(On `Anti-Monitoring`, `BadBlock`, & `BadBlock+`)*

<br>

BadBlock will **NOT** block:

* ‼️ Anything not covered below that causes serious/notable breakage

* ‼️ CDNs

* ‼️ Certificate Validation Checks (Ex. OCSP, CRL)

* ‼️ Important security features*1

* ‼️ Legitimate functionality*2

* ‼️ Referral links/URL shorteners*3

* ‼️ Software Updates

* ‼️ Time Servers

<br>

*1 The keyword here is **important**, because this doesn't necessarily apply to every feature that claims to be "security" related. For instance, in the combined `BadBlock` lists & `Microsoft` Lists, Smartscreen is blocked. The reason is simple: It's extremely invasive from a privacy perspective, [as it directly sends every URL you visit, names & data about the apps you use on your device, & other sensitive information to Microsoft, without any obfuscation or attempt at anonymizing the data](https://www.bleepingcomputer.com/news/microsoft/windows-10-smartscreen-sends-urls-and-app-names-to-microsoft/). Not to mention this is not made clear or transparent to the user at all, & always enabled by default. Therefore, I have no problem blocking it due to the extreme privacy risk it poses. However, on the contrary, BadBlock doesn't block Google's [Safe Browsing](https://safebrowsing.google.com/), as it is generally not a concern for privacy unless you enable the "Enhanced" mode on certain browsers, and provides real-world benefits.

*2 Legitimate functionality can be defined as things that provide an actual benefit to the end user, that the user is actively choosing to take advantage of, and that is not harming their privacy or security to an unacceptable extent. For instance, BadBlock will not block `google.com` in any of the lists - Even though it's highly questionable from a privacy standpoint and I don't recommend using it, it also serves as a legitimate search engine that provides value to end-users.

*3 These domains are generally harmless from a privacy perspective, as they only act when directly clicked. It only causes unnecessary breakage & headache, without any clear real-world benefits. There will be exceptions to this however when a domain used for referrals is also used for actual advertising/tracking & called on its own (ex. `Adjust` domains & Google `AdService` Domains).

<br>

 **I will repeat: If you run into any false positives or undesired breakage as a result from these lists, please file an issue and report it.**
 
 # How to use? / Formats available

BadBlock currently offers lists in the following formats:

* ABP - This is the format I would **strongly** recommend using if possible, as the ABP syntax is simply the most effective at blocking, & the most advanced out there. It also has very strong compatibility with most content blockers, and BadBlock takes advantage of a lot of its advanced features & blocking through wildcards.

* Wildcard Domains (With and without `*`) - If you are unable to use the ABP lists, these lists are also provided in the wildcard domains format; one variant with the `*` before domains, and one without. This is also very effective at blocking, and can be a great option depending on your blocker of choice if you're unable to use the ABP lists.

<br>

⚠️ I am **NOT** planning to create ["HOSTS"](https://wikipedia.org/wiki/Hosts_(file)) files at this time. I would recommend reading the reasons OISD lists [here](https://oisd.nl/faq#legacysyntaxes), as I strongly agree with them. HOSTS files are very time consuming to maintain, unnecessarily large, and above all else: just not effective at blocking.

⭐️ I would generally recommend using [AdGuard Home](https://adguard.com/adguard-home/overview.html) as your DNS content blocker of choice if possible, as it is free and open source, and offers the strongest amount of customization & features. You can see my recommended set-up for AdGuard Home [here](https://codeberg.org/Magnesium1062/adguard-home-settings). These lists are also compatible with various other content blockers & firewalls, such as [uBlock Origin](https://github.com/gorhill/uBlock), [AdGuard](https://adguard.com/adguard-browser-extension/overview.html), [Brave Shields](https://brave.com/shields/), [Cromite](https://github.com/uazo/cromite), [Little Snitch](https://www.obdev.at/products/littlesnitch/index.html), [Pi-hole](https://pi-hole.net/), & more. BadBlock lists are currently not available on any cloud DNS blocking solutions (ex. [NextDNS](https://nextdns.io/], [ControlD](https://controld.com/), & [AdGuard DNS](https://adguard-dns.io/welcome.html)), but I hope that will eventually change as the project gains traction, as I feel that BadBlock lists could prove to be a valuable and necessary addition to those services. In the event any of those services are interested, I will gladly provide any assistance necessary :).


# The Lists

## BadBlock Combined Lists

### ⚡️ **BadBlock Lite**

The essentials! It includes the `Apple`, `Brave`, `Data Brokers`, `Google`, `Mozilla`, `Amazon`, & `Roblox` lists.

* ABP Syntax *(Recommended)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/abp/badblock_lite.txt`

* ABP Syntax *(Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/abp/badblock_lite.txt`

* Wildcard Domains *(With `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-%2A/badblock_lite.txt`

* Wildcard Domains *(With `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-*/badblock_lite.txt`

* Wildcard Domains *(Without `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-no-%2A/badblock_lite.txt`

* Wildcard Domains *(Without `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-no-*/badblock_lite.txt`

### 🔇 **BadBlock** (*Recommended for most people*)

The premier block list. It includes all of the lists in `Lite`, as well as the `Stalkerware` list. Hard to go wrong.

* ABP Syntax *(Recommended)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/abp/badblock.txt`

* ABP Syntax *(Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/abp/badblock.txt`

* Wildcard Domains *(With `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-%2A/badblock.txt`

* Wildcard Domains *(With `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-*/badblock.txt`

* Wildcard Domains *(Without `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-no-%2A/badblock.txt`

* Wildcard Domains *(Without `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-no-*/badblock.txt`

### 🔥 **BadBlock+** 

Complete coverage. This includes all of the lists in `BadBlock` above, as well as the `Crap` & `Annoyances` lists.

* ABP Syntax *(Recommended)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/abp/badblock_plus.txt`

* ABP Syntax *(Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/abp/badblock_plus.txt`

* Wildcard Domains *(With `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-%2A/badblock_plus.txt`

* Wildcard Domains *(With `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-*/badblock_plus.txt`

* Wildcard Domains *(Without `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-no-%2A/badblock_plus.txt`

* Wildcard Domains *(Without `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-no-*/badblock_plus.txt`

## Individual Lists

### 📦 **Amazon**

Block Amazon advertising, tracking, telemetry, promotions, & more!

#### *Included in `BadBlock Lite`, `BadBlock`, & `BadBlock+`*

* ABP Syntax *(Recommended)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/abp/amazon.txt`

* ABP Syntax *(Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/abp/amazon.txt`

* Wildcard Domains *(With `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-%2A/amazon.txt`

* Wildcard Domains *(With `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-*/amazon.txt`

* Wildcard Domains *(Without `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-no-%2A/amazon.txt`

* Wildcard Domains *(Without `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-no-*/amazon.txt`

### 🍪 **Annoyances**

Block Cookie banners, Live Chat widgets, & more!

#### *Included in `BadBlock+`*

* ABP Syntax *(Recommended)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/abp/annoyances.txt`

* ABP Syntax *(Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/abp/annoyances.txt`

* Wildcard Domains *(With `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-%2A/annoyances.txt`

* Wildcard Domains *(With `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-*/annoyances.txt`

* Wildcard Domains *(Without `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-no-%2A/annoyances.txt`

* Wildcard Domains *(Without `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-no-*/annoyances.txt`

### 🔎 **Anti-Monitoring**

Stop the spying!

#### *Included in `BadBlock Lite`, `BadBlock`, & `BadBlock+`*

* ABP Syntax *(Recommended)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/abp/monitoring.txt`

* ABP Syntax *(Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/abp/monitoring.txt`

* Wildcard Domains *(With `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-%2A/monitoring.txt`

* Wildcard Domains *(With `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-*/monitoring.txt`

* Wildcard Domains *(Without `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-no-%2A/monitoring.txt`

* Wildcard Domains *(Without `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-no-*/monitoring.txt`

###  **Apple** 

Block Apple advertising, telemetry, promotions, & more!

#### *Included in `BadBlock Lite`, `BadBlock`, & `BadBlock+`*

* ABP Syntax *(Recommended)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/abp/apple.txt`

* ABP Syntax *(Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/abp/apple.txt`

* Wildcard Domains *(With `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-%2A/apple.txt`

* Wildcard Domains *(With `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-*/apple.txt`

* Wildcard Domains *(Without `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-no-%2A/apple.txt`

* Wildcard Domains *(Without `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-no-*/apple.txt`

### 🦁 **Brave**

Block Brave telemetry, analytics, advertising, sponsored content, & more!

#### *Included in `BadBlock Lite`, `BadBlock`, & `BadBlock+`*

* ABP Syntax *(Recommended)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/abp/brave.txt`

* ABP Syntax *(Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/abp/brave.txt`

* Wildcard Domains *(With `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-%2A/brave.txt`

* Wildcard Domains *(With `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-*/brave.txt`

* Wildcard Domains *(Without `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-no-%2A/brave.txt`

* Wildcard Domains *(Without `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-no-*/brave.txt`

### 🗑️ **Crap**

Block toxic domains!

#### *Included in `BadBlock+`*

* ABP Syntax *(Recommended)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/abp/crap.txt`

* ABP Syntax *(Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/abp/crap.txt`

* Wildcard Domains *(With `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-%2A/crap.txt`

* Wildcard Domains *(With `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-*/crap.txt`

* Wildcard Domains *(Without `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-no-%2A/crap.txt`

* Wildcard Domains *(Without `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-no-*/crap.txt`

### 💰 **Data Brokers**

Stop the People Search! Blocks data brokers, people search sites, & more!

#### *Included in `BadBlock Lite`, `BadBlock`, & `BadBlock+`*

* ABP Syntax *(Recommended)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/abp/data-brokers.txt`

* ABP Syntax *(Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/abp/data-brokers.txt`

* Wildcard Domains *(With `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-%2A/data-brokers.txt`

* Wildcard Domains *(With `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-*/data-brokers.txt`

* Wildcard Domains *(Without `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-no-%2A/data-brokers.txt`

* Wildcard Domains *(Without `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-no-*/data-brokers.txt`

### 🔒 **DRM**

Stop Digital Restrictions Management! - https://www.eff.org/deeplinks/2017/10/drms-dead-canary-how-we-just-lost-web-what-we-learned-it-and-what-we-need-do-next

#### *Not included in any combined lists*

* ABP Syntax *(Recommended)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/abp/drm.txt`

* ABP Syntax *(Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/abp/drm.txt`

* Wildcard Domains *(With `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-%2A/drm.txt`

* Wildcard Domains *(With `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-*/drm.txt`

* Wildcard Domains *(Without `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-no-%2A/drm.txt`

* Wildcard Domains *(Without `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-no-*/drm.txt`

### 🔤 **Google**

Block Google advertising, tracking, promotions, & more!

#### *Included in `BadBlock Lite`, `BadBlock`, & `BadBlock+`*

* ABP Syntax *(Recommended)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/abp/google.txt`

* ABP Syntax *(Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/abp/google.txt`

* Wildcard Domains *(With `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-%2A/google.txt`

* Wildcard Domains *(With `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-*/google.txt`

* Wildcard Domains *(Without `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-no-%2A/google.txt`

* Wildcard Domains *(Without `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-no-*/google.txt`

### 🪟 **Microsoft**

Close the Windows! Block M$ advertising, tracking, promotions, & more!

#### *Included in `BadBlock Lite`, `BadBlock`, & `BadBlock+`*

* ABP Syntax *(Recommended)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/abp/microsoft.txt`

* ABP Syntax *(Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/abp/microsoft.txt`

* Wildcard Domains *(With `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-%2A/microsoft.txt`

* Wildcard Domains *(With `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-*/microsoft.txt`

* Wildcard Domains *(Without `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-no-%2A/microsoft.txt`

* Wildcard Domains *(Without `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-no-*/microsoft.txt`

### 🦖 **Mozilla**

Block Mozilla telemetry, analytics, advertising, sponsored content, & more!

#### *Included in `BadBlock Lite`, `BadBlock`, & `BadBlock+`*

* ABP Syntax *(Recommended)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/abp/mozilla.txt`

* ABP Syntax *(Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/abp/mozilla.txt`

* Wildcard Domains *(With `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-%2A/mozilla.txt`

* Wildcard Domains *(With `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-*/mozilla.txt`

* Wildcard Domains *(Without `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-no-%2A/mozilla.txt`

* Wildcard Domains *(Without `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-no-*/mozilla.txt`

### 🕵️ **NSA Blocklist - Next Generation**

Block Big Brother!

#### *Currently not included in any combined lists, I need to further test & investigate the domains included*

* ABP Syntax *(Recommended)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/abp/nsa-blocklist-ng.txt`

* ABP Syntax *(Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/abp/nsa-blocklist-ng.txt`

* Wildcard Domains *(With `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-%2A/nsa-blocklist-ng.txt`

* Wildcard Domains *(With `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-*/nsa-blocklist-ng.txt`

* Wildcard Domains *(Without `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-no-%2A/nsa-blocklist-ng.txt`

* Wildcard Domains *(Without `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-no-*/nsa-blocklist-ng.txt`

### 📡 **Radar**

Block advertising, analytics, unwanted data collection, tracking, & more as they arise!

* ABP Syntax *(Recommended)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/abp/radar.txt`

* ABP Syntax *(Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/abp/radar.txt`

* Wildcard Domains *(With `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-%2A/radar.txt`

* Wildcard Domains *(With `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-*/radar.txt`

* Wildcard Domains *(Without `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-no-%2A/radar.txt`

* Wildcard Domains *(Without `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-no-*/radar.txt`

### 🎮 **Roblox**

Block Roblox telemetry, analytics, advertising, tracking, & more!

#### *Included in `BadBlock Lite`, `BadBlock`, & `BadBlock+`*

* ABP Syntax *(Recommended)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/abp/roblox.txt`

* ABP Syntax *(Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/abp/roblox.txt`

* Wildcard Domains *(With `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-%2A/roblox.txt`

* Wildcard Domains *(With `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-*/roblox.txt`

* Wildcard Domains *(Without `*`)* - `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/wildcards-no-%2A/roblox.txt`

* Wildcard Domains *(Without `*`, Backup)* - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/wildcards-no-*/roblox.txt`

# Whitelist

BadBlock additionally offer an extensive whitelist, which I would also recommend using if possible. The goal of the list is to ensure that domains required for important functionality or legitimate features are never blocked, as well as unblocking other harmless domains & false positives that other lists may block.

### ✋ **BadBlock Whitelist**

Allow the legitimate domains!

* `https://codeberg.org/Magnesium1062/BadBlock/raw/branch/main/whitelist.txt`

* Backup - `https://raw.githubusercontent.com/Retold3202/BadBlock/main/whitelist.txt`

# Should I use any other lists, and if so, what?

Yes, you should **not** solely rely on any BadBlock lists. I believe that it's a good idea to use a combination of high quality lists for your blocking purposes, to get the widest & most comprehensive protection possible.

I would generally recommend using the following lists in addition to any BadBlock lists, depending on what's best available to you:

## HaGeZi's Lists

[HaGeZi](https://github.com/hagezi) maintains a number of comprehensive & high quality blocklists [here](https://github.com/hagezi/dns-blocklists). I'm of the belief that his lists are currently some of the, if not **the**, best out there. The domains blocked are carefully considered, curated from a variety of high quality sources, & have minimal false positives. HaGeZi is also very active at responding to any issues that arise. 

I would highly recommend using the following lists from HaGeZi:

* ⭐️ [Multi PRO++](https://github.com/hagezi/dns-blocklists?tab=readme-ov-file#orange_book-multi-pro---maximum-protection-) - HaGeZi maintains a variety of `Multi` lists, covering advertising, tracking, & more. I typically recommend `Multi Pro++`, as in my experience it has little to no breakage, while still being very effective at blocking undesired content. 

* ❓ [Multi ULTIMATE](https://github.com/hagezi/dns-blocklists?tab=readme-ov-file#closed_book-multi-ultimate---aggressive-protection-) - If you're fine with a little breakage and rare whitelisting, you should use this list **instead** of `Multi PRO++` as detailed above. This list goes above and beyond HaGeZi's other `Multi` lists, and in my experience, I've encountered very few false positives. It aligns nicely with the goals of BadBlock, and it makes a great addition to your content blocking solution of choice.

* ⭐️ [Threat Intelligence Feeds](https://github.com/hagezi/dns-blocklists?tab=readme-ov-file#closed_lock_with_key-threat-intelligence-feeds---increases-security-significantly-recommended-) - This list is focused on blocking malicious domains of all kinds, and it's been proven to serve this purpose very well. This is especially important in the case of BadBlock, since this is an area I don't generally cover. HaGeZi also maintains a [complementary list focused on blocking malicious IP addresses](https://github.com/hagezi/dns-blocklists?tab=readme-ov-file#closed_lock_with_key-threat-intelligence-feeds---ips-), which you should also use if possible. **NOTE:** You should not solely rely on this for protection from malware & malicious domains, see `Additional General Recommendations`.

* ⭐️ [Badware Hoster Blocking](https://github.com/hagezi/dns-blocklists?tab=readme-ov-file#computer-badware-hoster-blocking---protects-against-the-malicious-use-of-free-host-services-) - Another list from HaGeZi that helps prevent malware through blocking hosts commonly used for malicious purposes.

* ⭐️ [Most Abused TLDs](https://github.com/hagezi/dns-blocklists?tab=readme-ov-file#crystal_ball-most-abused-tlds---protects-against-known-malicious-top-level-domains-) - Blocks TLDs (If you don't know what a TLD is, it's the the string at the end of a domain, ex. `.com`, `.net`, `.xyz`, etc.) that are commonly abused for malicious purposes, and causes minimal breakage due to HaGeZi unblocking legitimate sites. I have personally seen this work & prevent phishing domains, so I also highly recommend making use of it.

* ⭐️ [Dynamic DNS Blocking](https://github.com/hagezi/dns-blocklists?tab=readme-ov-file#lock_with_ink_pen-dynamic-dns-blocking---protects-against-the-malicious-use-of-dynamic-dns-services-) - Another list to help prevent against malware & malicious activity through Dynamic DNS servers, which are very commonly abused. Some cloud DNS providers (such as NextDNS) have built-in support for this feature, but if yours does not, you should use this list as well.

* ⭐️ [Encrypted DNS Servers](https://github.com/hagezi/dns-blocklists?tab=readme-ov-file#outbox_tray-encrypted-dns-servers-only-) - This list is dedicated to blocking encrypted DNS servers. This can be very useful at preventing apps & services from bypassing your content blocking.

## Additional Lists To Consider

* ❓ [1Hosts Pro](https://github.com/badmojr/1Hosts?tab=readme-ov-file#1hosts-pro) - 1Hosts Pro is a nice comprehensive list, blocking ad, tracking, & malicious domains. It does however cause breakage in some instances, but it is well worth using if you're comfortable occasionally whitelisting domains.

* ⭐️ [Developer Dan's Ads & Tracking](https://github.com/lightswitch05/hosts) - While this list is unfortunately no longer actively maintained, it is still a high quality & comprehensive blocklist with minimal false positives. I still regularly see domains being blocked from it that other lists miss. 

* ⭐️ [Divested Combined List](https://divested.dev/pages/dnsbl#combined) - High quality blocklist covering advertising, tracking, spam, & malicious domains from lots of different sources, curated with a sane whitelist. Maintained by [Divested Computing Group](https://divested.dev), known for their [award winning](https://www.fsf.org/news/free-software-awards-winners-announced-eli-zaretskii-tad-skewedzeppelin-gnu-jami) privacy & security work through various projects such as [DivestOS](https://divestos.org/), [Mull](https://f-droid.org/packages/us.spotco.fennec_dos/), & [Hypatia](https://f-droid.org/en/packages/us.spotco.malwarescanner/).

* ⭐️ [EasyList](https://v.firebog.net/hosts/Easylist.txt) - Classic must-have list focused on blocking online advertising, parsed specifically for DNS content blocking.

* ⭐️ [EasyPrivacy](https://v.firebog.net/hosts/Easyprivacy.txt) - Also maintained by EasyList, another must-have list, this time focused on blocking unwanted tracking & data collection.

* ⭐️ [Steven Black's Unified hosts (Adware + Malware)](https://github.com/StevenBlack/hosts/tree/master?tab=readme-ov-file#list-of-all-hosts-file-variants) - High quality & well-respected list, featuring careful curation & effective content blocking. Similar to Developer Dan's, I regularly see domains being blocked by it that other lists miss. This list also has very few false positives, and is even the default list in some DNS content blockers, such as [Pi-hole](https://pi-hole.net/).

* ⭐️ [xRuffKez's Newly Registered Domains (NRDs)](https://github.com/hagezi/dns-blocklists?tab=readme-ov-file#new-newly-registered-domains-nrds-) - This list heavily improves security by blocking newly registered domains, which are commonly abused for malicious purposes. It may cause rare breakage in some cases, but I have not found many such instances. I would recommend using the `14 days` variant. Some cloud DNS providers (such as [NextDNS](https://nextdns.io/)) have built-in support for this feature, but if your DNS content blocking solution does not, you should be sure to use this list.

# General Recommendations

* Please do **NOT** rely on DNS blocking as your only defense against advertising, tracking, and other nastiness. The fact of the matter is that DNS blocking is fundamentally limited and is not a magic bullet. For instance, it is unable to protect against tracking & advertising from first-party domains, and lacks cosmetic filtering. You should also use a strong & reputable browser content blocker, such as [uBlock Origin](https://github.com/gorhill/uBlock) *(See recommended settings [here](https://codeberg.org/Magnesium1062/ublock-origin-settings))*, as well as be sure to make use of your browser's Safe Browsing technology if it is not done in a privacy-invasive way, and use a (reputable) Anti-virus. On most platforms, you should simply stick to the built-in protection, but on Linux, I would recommend [ClamAV](https://www.clamav.net/), and on Android, I would recommend [Hypatia](https://f-droid.org/packages/us.spotco.malwarescanner/).*1  


*1 Note for Hypatia: You should install Hypatia through the [DivestOS Official Repo](https://divestos.org/fdroid/official/?fingerprint=E4BE8D6ABFA4D9D4FEEF03CDDA7FF62A73FD64B75566F6DD4E5E577550BE8467) instead of F-Droid's main repo, as it will allow you to receive quicker updates directly from the developer. It's also recommended to use [F-Droid Basic](https://f-droid.org/en/packages/org.fdroid.basic/) as your F-Droid client of choice.

* You should use a privacy-respecting browser that respects you as a user. [Firefox](https://www.mozilla.org/firefox/) with a user.js like [Arkenfox](https://github.com/arkenfox/user.js) is an excellent choice.

* It's also advisable to use a reputable VPN, as VPNs can provide many benefits, such as preventing tracking via the IP address, hiding your general location and ISP, bypassing censorship & geo-blocking, preventing your traffic from being sold and logged by your ISP, preventing exposing your LAN to the internet, among a lot of other factors. I would generally recommend either [Mullvad](https://mullvad.net/) or [ProtonVPN](https://protonvpn.com/).

# Credits

Thanks to [Divested Computing Group](https://divested.dev/) for creating & maintaining [Simple Hosts Merger](https://divested.dev/pages/software#simple_hosts_merger), which is used for creating the combined BadBlock lists in the wildcard domain formats. - [Donate](https://divested.dev/pages/donate)

Thanks to [HaGeZi](https://github.com/hagezi) for inspiration to create a table of contents & better organize, & also just being cool in general... 

