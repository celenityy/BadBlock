# **Welcome to BadBlock!**

**NOTE:** This project can be found on both [Codeberg](https://codeberg.org/celenity/BadBlock), which will act as the main & preferred way to contribute, and [GitHub](https://github.com/celenityy/BadBlock).

# Table of Contents

### 1. [What is BadBlock?](#what-is-badblock)

### 2. [Why BadBlock?](#why-badblock)

### 3. [What does BadBlock block?](#so-what-does-badblock-block)

### 4. [How to use BadBlock/Formats Available](#how-to-use--formats-available)

### 5. [The Lists](#the-lists)

#### 6. [BadBlock Combined Lists](#badblock-combined-lists)

#### 7. [BadBlock Individual Lists](#individual-lists)

### 8. [The Whitelists](#the-whitelists)

#### 9. [Combined Whitelist](#combined-whitelist)

#### 10. [Individual Whitelists](#individual-whitelists)

### 11. [Should I use any other lists, and if so, what?](#should-i-use-any-other-lists-and-if-so-what)

### 12. [General Recommendations](#general-recommendations)

### 13. [Credit](#credits)

---

# What is BadBlock?

BadBlock is a collection of comprehensive domain blocklists that I personally maintain covering a variety of different services, applications, & platforms with the goal of blocking... well, as the name suggests, stuff that is bad™ (More details [below](#so-what-does-badblock-block)).

BadBlock started as simply a collection of my blocklists that I hosted on Codeberg for my person use. However, I noticed that people started taking notice of the project, and it's gradually grown & evolved over time to become what you see here today.

BadBlock is **NOT** a compilation of other blocklists from various sources. These are all domains derived from my own research & analysis. You should **NOT** rely on BadBlock as your only blocklist, recommendations will be provided [below](#should-i-use-any-other-lists-and-if-so-what).

BadBlock also maintains comprehensive [Whitelists](#combined-whitelist), with the goal of ensuring that important domains are **never** blocked, & unblocking false positives from other lists.

Something interesting & unique about BadBlock is that the lists here are very granular in nature. BadBlock offers [3 primary combined blocklists](#badblock-combined-lists) (`BadBlock Lite`, `BadBlock`, & `BadBlock+`), which are built from various [individual lists](#individual-lists) in the project. The combined lists are simply the presets and what I recommend people use for convenience, but by all means, feel free to mix, match, and use any of these lists however you please. :)

# Why BadBlock?

Out of all the thousands of blocklists out there, why should you specifically use lists from BadBlock? What does BadBlock bring to the table? In my opinion, there are a few things that make BadBlock stand out:

* Domains added are very carefully considered through through my personal research & analysis, and also very well-documented, so that it is easy to determine what domains are blocked and why, and for users to whitelist domains if they wish to do so.

* BadBlock is not scared to go above and beyond and cause breakage - but only **if the ends justify the means**. BadBlock has no issue blocking privacy invasive features such as Microsoft SmartScreen *(explained [below](#so-what-does-badblock-block))* & voice assistants like Google Assistant & Amazon Alexa. These features pose extreme privacy concerns, are generally enabled by default or through dark patterns, & the risks aren't made clear to the end-user. Therefore, BadBlock blocks them. Most other lists won't block these types of domains, out of fear of breakage & complaints from users. BadBlock is different, **I believe that every user should always be in control of their digital experience.** If the user still wishes to use a feature like this that I block, they may do so and create a whitelist entry, **but now they are at least actively thinking & making a conscious decision to use it**. However, BadBlock will not block domains that provide legitimate functionality & fall under the categories explained [below](#so-what-does-badblock-block). **If you run into any false positives or undesired breakage as a result from these lists, please file an issue and report it.**

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

##### *1 The keyword here is **important**, because this doesn't necessarily apply to every feature that claims to be "security" related. For instance, in the combined `BadBlock` lists & `Microsoft` lists, Smartscreen is blocked. The reason is simple: It's extremely invasive from a privacy perspective, [as it directly sends every URL you visit, names & data about the apps you use on your device, & other sensitive information to Microsoft, without any obfuscation or attempt at anonymizing the data](https://www.bleepingcomputer.com/news/microsoft/windows-10-smartscreen-sends-urls-and-app-names-to-microsoft/). Not to mention this is not made clear or transparent to the user at all, & always enabled by default. Therefore, I have no problem blocking it due to the extreme privacy risk it poses. However, on the contrary, BadBlock doesn't block Google's [Safe Browsing](https://safebrowsing.google.com/), as it is generally not a concern for privacy unless you enable the "Enhanced" mode on certain browsers, and provides real-world benefits.

##### *2 Legitimate functionality can be defined as things that provide an actual benefit to the end user, that the user is actively choosing to take advantage of, and that is not harming their privacy or security to an unacceptable extent. For instance, BadBlock will not block `google.com` in any of the lists - Even though it's highly questionable from a privacy standpoint and I don't recommend using it, it also serves as a legitimate search engine that provides value to end-users.

##### *3 These domains are generally harmless from a privacy perspective, as they only act when directly clicked. It only causes unnecessary breakage & headache, without any clear real-world benefits. There will be exceptions to this however when a domain used for referrals is also used for actual advertising/tracking & called on its own (ex. `Adjust` domains & Google `AdService` Domains).

<br>

**I will repeat: If you run into any false positives or undesired breakage as a result from these lists, please file an issue and report it.**

# How to use? / Formats available

BadBlock currently offers lists in the following formats:

* **⭐️ ABP** - This is the format I would **strongly** recommend using if possible, as the ABP syntax is simply the most effective at blocking, & the most advanced out there. It also has very strong compatibility with most content blockers, and BadBlock takes advantage of a lot of its advanced features & blocking through wildcards.

* **Wildcard Domains** *(With and without `*`)* - If you are unable to use the ABP lists, these lists are also provided in the wildcard domains format; one variant with the `*` before domains, and one without. This is also very effective at blocking, and can be a great option depending on your blocker of choice if you're unable to use the ABP lists.

<br>

⚠️ I am **NOT** planning to create ["HOSTS"](https://wikipedia.org/wiki/Hosts_(file)) files at this time. I would recommend reading the reasons OISD lists [here](https://oisd.nl/faq#legacysyntaxes), as I strongly agree with them. HOSTS files are very time consuming to maintain, unnecessarily large, and above all else: just not effective at blocking.

⭐️ I would generally recommend using [AdGuard Home](https://adguard.com/adguard-home/overview.html) as your DNS content blocker of choice if possible, as it is free and open source, and offers the strongest amount of customization & features. You can see my recommended set-up for AdGuard Home [here](https://codeberg.org/celenity/adguard-home-settings). These lists are also compatible with various other content blockers & firewalls, such as [uBlock Origin](https://github.com/gorhill/uBlock), [AdGuard](https://adguard.com/adguard-browser-extension/overview.html), [Brave Shields](https://brave.com/shields/), [Cromite](https://github.com/uazo/cromite), [Little Snitch](https://www.obdev.at/products/littlesnitch/index.html), [Pi-hole](https://pi-hole.net/), & more. BadBlock lists are currently not available on any cloud DNS blocking solutions (ex. [NextDNS](https://nextdns.io/), [ControlD](https://controld.com/), & [AdGuard DNS](https://adguard-dns.io/welcome.html)), but I hope that will eventually change as the project gains traction, as I feel that BadBlock lists could prove to be a valuable and necessary addition to those services. In the event any of those services are interested, I will gladly provide any assistance necessary :).


# The Lists

⚠️ See [here](https://codeberg.org/celenity/BadBlock/wiki/Notable-Domains) for a list of notable domains that BadBlock blocks, which you might wish to unblock depending on your use case. The most notable of these include [Apple's Find My](https://codeberg.org/celenity/BadBlock/wiki/Notable-Domains#apple-find-my) & [Google's Find My Device](https://codeberg.org/celenity/BadBlock/wiki/Notable-Domains#google-find-my-device).

## BadBlock Combined Lists

### ⚡️ **BadBlock Lite**

#### The essentials! It includes the following lists:

* [x] **📦 Amazon**
* [x] ** Apple** 
* [x] **🦁 Brave**
* [x] **💰 Data Brokers**
* [x] **🎮 Gaming**
* [x] **🔤 Google**
* [x] **🦖 Mozilla**
* [x] **📡 Radar** 
* [x] **⚠️ Unsafe**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/badblock_lite.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/abp/badblock_lite.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/abp/badblock_lite.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/badblock_lite.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-star/badblock_lite.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-star/badblock_lite.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/badblock_lite.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-no-star/badblock_lite.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-no-star/badblock_lite.txt`

___

### 🔇 **BadBlock** (*Recommended for most people*)

#### The premier block list. It includes the following lists:

* [x] All lists in **⚡️ BadBlock Lite**
* [x] **🔎 Anti-Monitoring**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/badblock.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/abp/badblock.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/abp/badblock.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/badblock.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-star/badblock.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-star/badblock.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/badblock.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-no-star/badblock.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-no-star/badblock.txt`

___

### 🔥 **BadBlock+** 

#### Complete coverage. It includes the following lists: 

* [x] All lists in **🔇 BadBlock**
* [x] **🍪 Annoyances**
* [x] **🗑️ Crap**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/badblock_plus.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/abp/badblock_plus.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/abp/badblock_plus.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/badblock_plus.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-star/badblock_plus.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-star/badblock_plus.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/badblock_plus.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-no-star/badblock_plus.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-no-star/badblock_plus.txt`

___

## Individual Lists

### 📦 **Amazon**

Block Amazon advertising, tracking, telemetry, promotions, & more!

#### Included in:

* [x] **⚡️ BadBlock Lite**
* [x] **🔇 BadBlock**
* [x] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/amazon.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/abp/amazon.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/abp/amazon.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/amazon.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-star/amazon.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-star/amazon.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/amazon.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-no-star/amazon.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-no-star/amazon.txt`

___

### 🍪 **Annoyances**

Block Cookie banners, Live Chat widgets, & more!

#### Included in:

* [ ] **⚡️ BadBlock Lite**
* [ ] **🔇 BadBlock**
* [x] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/annoyances.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/abp/annoyances.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/abp/annoyances.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/amazon.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-star/annoyances.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-star/annoyances.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/amazon.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-no-star/annoyances.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-no-star/annoyances.txt`

___

### 🔎 **Anti-Monitoring**

Stop the spying!

#### Included in:

* [ ] **⚡️ BadBlock Lite**
* [x] **🔇 BadBlock**
* [x] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/monitoring.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/abp/monitoring.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/abp/monitoring.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/monitoring.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-star/monitoring.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-star/monitoring.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/monitoring.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-no-star/monitoring.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-no-star/monitoring.txt`

___

###  **Apple** 

Block Apple advertising, telemetry, promotions, & more!

#### Included in:

* [x] **⚡️ BadBlock Lite**
* [x] **🔇 BadBlock**
* [x] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/apple.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/abp/apple.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/abp/apple.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/apple.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-star/apple.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-star/apple.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/apple.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-no-star/apple.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-no-star/apple.txt`

___

### 🦁 **Brave**

Block Brave telemetry, analytics, advertising, sponsored content, & more!

#### Included in:

* [x] **⚡️ BadBlock Lite**
* [x] **🔇 BadBlock**
* [x] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/brave.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/abp/brave.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/abp/brave.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/brave.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-star/brave.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-star/brave.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/brave.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-no-star/brave.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-no-star/brave.txt`

___

### 🗑️ **Crap**

Block toxic domains!

#### Included in:

* [ ] **⚡️ BadBlock Lite**
* [ ] **🔇 BadBlock**
* [x] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/crap.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/abp/crap.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/abp/crap.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/crap.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-star/crap.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-star/crap.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/crap.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-no-star/crap.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-no-star/crap.txt`

___

### 💰 **Data Brokers**

Stop the People Search! Blocks data brokers, people search sites, & more!

#### Included in:

* [x] **⚡️ BadBlock Lite**
* [x] **🔇 BadBlock**
* [x] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/data-brokers.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/abp/data-brokers.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/abp/data-brokers.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/data-brokers.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-star/data-brokers.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-star/data-brokers.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/data-brokers.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-no-star/data-brokers.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-no-star/data-brokers.txt`

___

### 🔒 **DRM**

[Stop Digital Restrictions Management!](https://www.eff.org/deeplinks/2017/10/drms-dead-canary-how-we-just-lost-web-what-we-learned-it-and-what-we-need-do-next)

#### Included in:

* [ ] **⚡️ BadBlock Lite**
* [ ] **🔇 BadBlock**
* [ ] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/drm.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/abp/drm.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/abp/drm.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/drm.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-star/drm.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-star/drm.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/drm.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-no-star/drm.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-no-star/drm.txt`

___

### 🎮 **Gaming**

Block gaming telemetry, analytics, advertising, tracking, & more!

#### Included in:

* [x] **⚡️ BadBlock Lite**
* [x] **🔇 BadBlock**
* [x] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/gaming.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/abp/gaming.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/abp/gaming.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/gaming.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-star/gaming.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-star/gaming.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/gaming.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-no-star/gaming.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-no-star/gaming.txt`

___

### 🔤 **Google**

Block Google advertising, tracking, promotions, & more!

#### Included in:

* [x] **⚡️ BadBlock Lite**
* [x] **🔇 BadBlock**
* [x] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/google.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/abp/google.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/abp/google.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/google.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-star/google.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-star/google.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/google.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-no-star/google.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-no-star/google.txt`

___

### 🪟 **Microsoft**

Close the Windows! Block M$ advertising, tracking, promotions, & more!

#### Included in:

* [x] **⚡️ BadBlock Lite**
* [x] **🔇 BadBlock**
* [x] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/microsoft.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/abp/microsoft.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/abp/microsoft.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/microsoft.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-star/microsoft.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-star/microsoft.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/microsoft.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-no-star/microsoft.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-no-star/microsoft.txt`

___

### 🦖 **Mozilla**

Block Mozilla telemetry, analytics, advertising, sponsored content, & more!

#### Included in:

* [x] **⚡️ BadBlock Lite**
* [x] **🔇 BadBlock**
* [x] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/mozilla.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/abp/mozilla.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/abp/mozilla.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/mozilla.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-star/mozilla.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-star/mozilla.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/mozilla.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-no-star/mozilla.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-no-star/mozilla.txt`

___

### 🕵️ **NSA Blocklist - Next Generation**

Block Big Brother!

#### Included in:

* [ ] **⚡️ BadBlock Lite**
* [ ] **🔇 BadBlock**
* [ ] **🔥 BadBlock+**

### **⚠️ Needs further testing, beware**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/nsa-blocklist-ng.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/abp/nsa-blocklist-ng.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/abp/nsa-blocklist-ng.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/nsa-blocklist-ng.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-star/nsa-blocklist-ng.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-star/nsa-blocklist-ng.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/nsa-blocklist-ng.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-no-star/nsa-blocklist-ng.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-no-star/nsa-blocklist-ng.txt`

___

### 📡 **Radar**

Block advertising, analytics, unwanted data collection, tracking, & more as they arise!

#### Included in:

* [x] **⚡️ BadBlock Lite**
* [x] **🔇 BadBlock**
* [x] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/radar.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/abp/radar.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/abp/radar.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/radar.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-star/radar.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-star/radar.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/radar.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-no-star/radar.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-no-star/radar.txt`

___

### ⚠️ **Unsafe**

Block nasty domains!

#### Included in:

* [x] **⚡️ BadBlock Lite**
* [x] **🔇 BadBlock**
* [x] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/unsafe.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/abp/unsafe.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/abp/unsafe.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/unsafe.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-star/unsafe.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-star/unsafe.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/unsafe.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-no-star/unsafe.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-no-star/unsafe.txt`

___

# The Whitelists

In addition to the blocklists detailed above, BadBlock also offers a selection of extensive whitelists, **which I would also highly recommend using if possible**. The goal of the lists is to ensure that domains required for important functionality or legitimate features are never blocked, as well as unblocking other harmless domains & false positives that other lists may block.

> [!NOTE]
> You should **NOT** use any Whitelists if you are using a browser-based content blocker, such as uBlock Origin. These are **ONLY** intended for users blocking on a **DNS** level.

## Combined Whitelist

### ✋ **BadBlock - Whitelist**

Unblock the good!

*Includes all individual whitelists below!*

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/whitelist.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/abp/whitelist.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/abp/whitelist.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/whitelist.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-star/whitelist.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-star/whitelist.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/whitelist.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-no-star/whitelist.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-no-star/whitelist.txt`

___

## Individual Whitelists

For those with special use-cases, you can also take advantage of our individual Whitelists.

### 🤖 **BadBlock - Android Whitelist**

Unblock the Good! *(Android Edition)*

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/android_whitelist.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/abp/android_whitelist.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/abp/android_whitelist.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/android_whitelist.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-star/android_whitelist.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-star/android_whitelist.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/android_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-no-star/android_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-no-star/android_whitelist.txt`

___

### 🍎 **BadBlock - Apple Whitelist**

Unblock the Good! *(Apple Edition)*

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/apple_whitelist.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/abp/apple_whitelist.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/abp/apple_whitelist.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/apple_whitelist.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-star/apple_whitelist.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-star/apple_whitelist.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/apple_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-no-star/apple_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-no-star/apple_whitelist.txt`

___

### 🌐 **BadBlock - Browser Whitelist**

Unblock the Good! *(Browser Edition)*

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/browser_whitelist.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/abp/browser_whitelist.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/abp/browser_whitelist.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/browser_whitelist.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-star/browser_whitelist.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-star/browser_whitelist.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/browser_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-no-star/browser_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-no-star/browser_whitelist.txt`

___

### 🦾 **BadBlock - CAPTCHA Whitelist**

Unblock the Good! *(CAPTCHA Edition)*

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/captcha_whitelist.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/abp/captcha_whitelist.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/abp/captcha_whitelist.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/captcha_whitelist.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-star/captcha_whitelist.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-star/captcha_whitelist.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/captcha_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-no-star/captcha_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-no-star/captcha_whitelist.txt`

___

### 🖆 **BadBlock - Certificate Validation Whitelist**

Unblock the Good! *(Certificate Validation Edition)*

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/certs_whitelist.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/abp/certs_whitelist.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/abp/certs_whitelist.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/certs_whitelist.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-star/certs_whitelist.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-star/certs_whitelist.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/certs_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-no-star/certs_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-no-star/certs_whitelist.txt`

___

### 💌 **BadBlock - Email Whitelist**

Unblock the Good! *(Email Edition)*

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/email_whitelist.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/abp/email_whitelist.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/abp/email_whitelist.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/email_whitelist.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-star/email_whitelist.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-star/email_whitelist.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/email_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-no-star/email_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-no-star/email_whitelist.txt`

___

### 📞 **BadBlock - Helpline Whitelist**

Unblock the Good! *(Helpline Edition)*

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/emergency_whitelist.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/abp/emergency_whitelist.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/abp/emergency_whitelist.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/emergency_whitelist.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-star/emergency_whitelist.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-star/emergency_whitelist.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/emergency_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-no-star/emergency_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-no-star/emergency_whitelist.txt`

___

### 🛜 **BadBlock - LAN Whitelist**

Unblock the Good! *(LAN Edition)*

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/lan_whitelist.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/abp/lan_whitelist.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/abp/lan_whitelist.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/lan_whitelist.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-star/lan_whitelist.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-star/lan_whitelist.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/lan_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-no-star/lan_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-no-star/lan_whitelist.txt`

___

### 🐧 **BadBlock - GNU/Linux Whitelist**

Unblock the Good! *(GNU/Linux Edition)*

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/linux_whitelist.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/abp/linux_whitelist.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/abp/linux_whitelist.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/linux_whitelist.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-star/linux_whitelist.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-star/linux_whitelist.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/linux_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-no-star/linux_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-no-star/linux_whitelist.txt`

___

### 🏠 **BadBlock - Misc. Whitelist**

Unblock the Good! *(Misc. Edition)*

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/misc_whitelist.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/abp/misc_whitelist.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/abp/misc_whitelist.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/misc_whitelist.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-star/misc_whitelist.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-star/misc_whitelist.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/misc_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-no-star/misc_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-no-star/misc_whitelist.txt`

___

### 📶 **BadBlock - Mobile Whitelist**

Unblock the Good! *(Mobile Edition)*

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/mobile_whitelist.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/abp/mobile_whitelist.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/abp/mobile_whitelist.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/mobile_whitelist.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-star/mobile_whitelist.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-star/mobile_whitelist.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/mobile_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-no-star/mobile_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-no-star/mobile_whitelist.txt`

___

### 🔔 **BadBlock - Push Notifications Whitelist**

Never miss a message!

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/push_whitelist.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/abp/push_whitelist.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/abp/push_whitelist.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/push_whitelist.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-star/push_whitelist.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-star/push_whitelist.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/push_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-no-star/push_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-no-star/push_whitelist.txt`

___

### 🔒 **BadBlock - Safe Browsing Whitelist**

Unblock the Good! *(Safe Browsing Edition)*

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/safe-browsing_whitelist.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/abp/safe-browsing_whitelist.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/abp/safe-browsing_whitelist.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/safe-browsing_whitelist.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-star/safe-browsing_whitelist.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-star/safe-browsing_whitelist.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/safe-browsing_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-no-star/safe-browsing_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-no-star/safe-browsing_whitelist.txt`

___

### ⏰ **BadBlock - Time Servers Whitelist**

Unblock the Good! *(Time Edition)*

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/time_whitelist.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/abp/time_whitelist.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/abp/time_whitelist.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/time_whitelist.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-star/time_whitelist.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-star/time_whitelist.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/time_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-no-star/time_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-no-star/time_whitelist.txt`

___

### 🪟 **BadBlock - Windows Update Whitelist**

Unblock the Good! *(Windows Update Edition)*

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/windows-update_whitelist.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/abp/windows-update_whitelist.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/abp/windows-update_whitelist.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/windows-update_whitelist.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-star/windows-update_whitelist.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-star/windows-update_whitelist.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/windows-update_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/main/wildcards-no-star/windows-update_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/main/wildcards-no-star/windows-update_whitelist.txt`

___

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

* ⭐️ [Most Abused TLDs](https://github.com/hagezi/dns-blocklists?tab=readme-ov-file#crystal_ball-most-abused-tlds---protects-against-known-malicious-top-level-domains-) - Blocks TLDs (If you don't know what a TLD is, it's the the string at the end of a domain, ex. `.com`, `.net`, `.xyz`, etc.) that are commonly abused for malicious purposes, and causes minimal breakage due to HaGeZi unblocking legitimate sites. I have personally seen this work & prevent phishing domains, so I also highly recommend using it.

* ⭐️ [Dynamic DNS Blocking](https://github.com/hagezi/dns-blocklists?tab=readme-ov-file#lock_with_ink_pen-dynamic-dns-blocking---protects-against-the-malicious-use-of-dynamic-dns-services-) - Another list to help prevent against malware & malicious activity through Dynamic DNS servers, which are very commonly abused. Some cloud DNS providers (such as NextDNS) have built-in support for this feature, but if yours does not, you should use this list as well.

* ⭐️ [Encrypted DNS Servers](https://github.com/hagezi/dns-blocklists?tab=readme-ov-file#outbox_tray-encrypted-dns-servers-only-) - This list is dedicated to blocking encrypted DNS servers. It can be very useful at preventing apps & services from bypassing your content blocking.

## Additional Lists To Consider

* ❓ [1Hosts Pro](https://github.com/badmojr/1Hosts?tab=readme-ov-file#1hosts-pro) - 1Hosts Pro is a nice comprehensive list, blocking ad, tracking, & malicious domains. It does however cause breakage in some instances, but it is well worth using if you're comfortable occasionally whitelisting domains.

* ⭐️ [Developer Dan's Ads & Tracking](https://github.com/lightswitch05/hosts) - While this list is unfortunately no longer actively maintained, it is still a high quality & comprehensive blocklist with minimal false positives. I still regularly see domains being blocked from it that other lists miss. 

* ❓ [Divested Combined List](https://divested.dev/pages/dnsbl#combined) - High quality blocklist covering advertising, tracking, spam, & malicious domains from lots of different sources, curated with a sane whitelist. Maintained by [Divested Computing Group](https://divested.dev), known for their [award winning](https://www.fsf.org/news/free-software-awards-winners-announced-eli-zaretskii-tad-skewedzeppelin-gnu-jami) privacy & security work through various projects such as [DivestOS](https://divestos.org/), [Mull](https://f-droid.org/packages/us.spotco.fennec_dos/), & [Hypatia](https://f-droid.org/en/packages/us.spotco.malwarescanner/). **Note that this list can be fairly aggressive.**

* ⭐️ [EasyList](https://v.firebog.net/hosts/Easylist.txt) - Classic must-have list focused on blocking online advertising, parsed specifically for DNS content blocking.

* ⭐️ [EasyPrivacy](https://v.firebog.net/hosts/Easyprivacy.txt) - Also maintained by EasyList, another must-have list, this time focused on blocking unwanted tracking & data collection.

* ⭐️ [Steven Black's Unified hosts (Adware + Malware)](https://github.com/StevenBlack/hosts/tree/master?tab=readme-ov-file#list-of-all-hosts-file-variants) - High quality & well-respected list, featuring careful curation & effective content blocking. Similar to Developer Dan's, I regularly see domains being blocked by it that other lists miss. This list also has very few false positives, and is even the default list in some DNS content blockers, such as [Pi-hole](https://pi-hole.net/).

* ⭐️ [xRuffKez's Newly Registered Domains (NRDs)](https://github.com/hagezi/dns-blocklists?tab=readme-ov-file#new-newly-registered-domains-nrds-) - This list heavily improves security by blocking newly registered domains, which are commonly abused for malicious purposes. It may cause rare breakage in some cases, but I have not found many such instances. I would recommend using the `14 days` variant. Some cloud DNS providers (such as [NextDNS](https://nextdns.io/)) have built-in support for this feature, but if your DNS content blocking solution does not, you should be sure to use this list.

# General Recommendations

* Please do **NOT** rely on DNS blocking as your only defense against advertising, tracking, and other nastiness. The fact of the matter is that DNS blocking is fundamentally limited and is not a magic bullet. For instance, it is unable to protect against tracking & advertising from first-party domains, and lacks cosmetic filtering. You should also use a strong & reputable browser content blocker, such as [uBlock Origin](https://github.com/gorhill/uBlock) *(See recommended settings [here](https://codeberg.org/celenity/ublock-origin-settings))*, as well as be sure to make use of your browser's Safe Browsing technology if it is not done in a privacy-invasive way, and use a (reputable) Anti-virus. On most platforms, you should simply stick to the built-in protection, but on Linux, I would recommend [ClamAV](https://www.clamav.net/), and on Android, I would recommend [Hypatia](https://f-droid.org/packages/us.spotco.malwarescanner/).*1  


##### *1 Note for Hypatia: You should install Hypatia through the [DivestOS Official Repo](https://divestos.org/fdroid/official/?fingerprint=E4BE8D6ABFA4D9D4FEEF03CDDA7FF62A73FD64B75566F6DD4E5E577550BE8467) instead of F-Droid's main repo, as it will allow you to receive quicker updates directly from the developer. It's also recommended to use [F-Droid Basic](https://f-droid.org/en/packages/org.fdroid.basic/) as your F-Droid client of choice.

* You should use a privacy-respecting browser that respects you as a user. [Firefox](https://www.mozilla.org/firefox/) with my [Phoenix](https://phoenix.celenity.dev) is an excellent choice.

* It's also advisable to use a reputable VPN, as VPNs can provide many benefits, such as preventing tracking via the IP address, hiding your general location and ISP, bypassing censorship & geo-blocking, preventing your traffic from being sold and logged by your ISP, preventing exposing your LAN to the internet, among a lot of other factors. I would generally recommend either [Mullvad](https://mullvad.net/) or [ProtonVPN](https://protonvpn.com/).

# Credits

Thanks to [Divested Computing Group](https://divested.dev/) for creating & maintaining [Simple Hosts Merger](https://divested.dev/pages/software#simple_hosts_merger), which is used for creating the combined BadBlock lists in the wildcard domain formats. - 💰 [Donate](https://divested.dev/pages/donate)

Thanks to [HaGeZi](https://github.com/hagezi) for inspiration to create a table of contents & better organize, & also just being cool in general... 