# **Welcome to BadBlock!**

> [!NOTE]
> While BadBlock's home is [Codeberg](https://codeberg.org/celenity/BadBlock), this repo is also mirrored to both [GitLab](https://gitlab.com/celenityy/BadBlock) & [GitHub](https://github.com/celenityy/BadBlock).

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

BadBlock is a collection of comprehensive blocklists that I personally maintain covering a variety of different services, applications, & platforms with the goal of blocking... well, as the name suggests, stuff that is bad™ *(More details [below](#so-what-does-badblock-block))*.

BadBlock started as a simple collection of DNS blocklists that I hosted on Codeberg for my personal use. However, people quickly took notice of the project, and it's gradually grown & evolved over time to become what you see here today.

BadBlock is **NOT** a compilation of other blocklists from various sources. These are all domains derived from my own research & analysis. You should **NOT** rely on BadBlock as your only blocklist *(see recommendations [below](#should-i-use-any-other-lists-and-if-so-what))*.

BadBlock also maintains comprehensive [Whitelists](#combined-whitelist), with the goal of ensuring that important domains are **never** blocked, & unblocking false positives from other lists.

Something unique about BadBlock is that the lists here are granular. BadBlock offers [3 primary combined blocklists](#badblock-combined-lists) (`BadBlock Lite`, `BadBlock`, & `BadBlock+`), which are built from various [individual lists](#individual-lists) in the project. The combined lists are simply the presets and what I recommend people use for convenience, but by all means: feel free to mix, match, and use any of these lists however you please. :)

# Why BadBlock?

Out of all the thousands of blocklists out there, why should you specifically use lists from BadBlock? What does BadBlock bring to the table? In my opinion, there are a few things that make BadBlock stand out:

* Domains added are carefully considered through my personal research and analysis. Domains added are very well-documented, with the goal of making it easy for users to understand what is blocked and why.

* BadBlock is not scared to go above and beyond and cause breakage - but only **if the ends justify the means**. BadBlock has no issue blocking privacy invasive features *(ex. Microsoft SmartScreen, see [below](#so-what-does-badblock-block))* and AI/voice assistants *(ex. Google Assistant & Amazon Alexa)*. These features pose extreme privacy concerns, are typically enabled by default or through dark patterns, and the risks aren't made clear to the end-user. Therefore, BadBlock blocks them. Most other lists won't block these types of domains, out of fear of breakage & complaints from users. BadBlock is different, **I believe that every user should always be in control of their digital experience.** If the user still wishes to use a feature like this that I block, they may do so and create a whitelist entry, **but now they are at least actively thinking & making a conscious decision to use it**. However, BadBlock will not block domains that provide 'legitimate' functionality *(see [below](#so-what-does-badblock-block))*. **If you run into any false positives or undesired breakage as a result from these lists, please file an issue and report it.**

* BadBlock's ABP lists *(which I recommend using if possible, more details [below](#how-to-use--formats-available))* also include carefully considered rules to ensure that the lists have the most effective & efficient content blocking possible.

It should be noted that BadBlock also wishes to improve content blocking as a whole for everyone *(No fun in keeping all the domains for myself! :p)*. I make an effort to report domains to other lists where relevant & applicable, such as [HaGeZi's](https://github.com/hagezi/dns-blocklists), and I work with other list maintainers where possible.

# So, what does BadBlock block?

BadBlock will *generally* focus on blocking the following types of domains  *(where applicable)* on all of the `BadBlock` lists:

* ⭐️ Advertising - ✅ *(On all lists)*

* ⭐️ Anti-Adblock - ✅ *(On all lists where relevant)*

* ⭐️ Data Brokers/People Search - ✅ *(On all lists where relevant, but especially `Data Brokers`)*

* ⭐️ Data Collection - ✅ *(On all lists)*

* ⭐️ Tracking/Fingerprinting - ✅ *(On all lists)*

<br>

Additionally, depending on the list you choose, BadBlock will also cover:

* ⭐️ Annoyances - ✅ *(On all lists where relevant, but especially 'Annoyances')*

* ⭐️ Click Tracking - ✅ *(On `Click Tracking`)*

* ⭐️ Cookie Banners - ✅ *(On `Annoyances`)*

* ⭐️ DRM - ✅ *(On `DRM`)*

* ⭐️ Undesirable/toxic domains - ✅ *(On `Crap` & `BadBlock+`)*

* ⭐️ Undesired MDM/Remote Management Tools - ✅ *(On `Anti-Monitoring`, `BadBlock`, & `BadBlock+`)*

* ⭐️ Undesired Monitoring Tools - ✅ *(On `Anti-Monitoring`, `BadBlock`, & `BadBlock+`)*

<br>

BadBlock will **NOT** block:

* ‼️ Anything not covered below that causes serious/notable breakage

* ‼️ CDNs

* ‼️ Certificate Validation Checks *(Ex. OCSP, CRL)*

* ‼️ Important security features*1

* ‼️ Legitimate functionality*2

* ‼️ Referral links/URL shorteners*3

* ‼️ Software Updates

* ‼️ Time Servers

<br>

##### *1 The keyword here is **important**, because this doesn't necessarily apply to every feature that claims to be "security" related. For instance, in the combined `BadBlock` lists & `Microsoft` lists, Smartscreen is blocked. The reason is simple: It's extremely invasive from a privacy perspective, [as it directly sends every URL you visit, names & data about the apps you use on your device, & other sensitive information to Microsoft, without any obfuscation or attempt at anonymizing the data](https://www.bleepingcomputer.com/news/microsoft/windows-10-smartscreen-sends-urls-and-app-names-to-microsoft/). Not to mention this is not made clear or transparent to the user at all, & always enabled by default. Therefore, I have no problem blocking it due to the extreme privacy risk it poses. However, on the contrary, BadBlock doesn't block Google's [Safe Browsing](https://safebrowsing.google.com/), as it is generally not a concern for privacy unless you enable the "Enhanced" mode on certain browsers, and provides real-world benefits.

##### *2 Legitimate functionality can be defined as things that provide an actual benefit to the end user, that the user is actively choosing to take advantage of, and that is not harming their privacy or security to an unacceptable extent. For instance, BadBlock will not block `google.com` in any of the lists - Even though it's highly questionable from a privacy standpoint and I don't recommend using it, it also serves as a legitimate search engine that provides value to end-users.

##### *3 While these domains are used for tracking, it's undesirable to block them on the network level, due to the breakage caused. We still block these domains on the separate `Click Tracking` list though (which we recommend for browser users), and we also make exceptions and still block domains that are also used for other forms of tracking elsewhere (ex. `Adjust` domains & Google `AdService` Domains).

<br>

**I will repeat: If you run into any false positives or undesired breakage as a result from these lists, please file an issue and report it.**

# How to use? / Formats available

BadBlock currently offers lists in the following formats:

* **⭐️ ABP** - This is the format I would **strongly** recommend using if possible, as the ABP syntax is simply the most effective at blocking, and the most advanced out there. It also has very strong compatibility with most content blockers, and BadBlock takes advantage of a lot of its advanced features & blocking.

* **Wildcard Domains** *(With and without `*`)* - If you are unable to use the ABP lists, these lists are also provided in the wildcard domains format; one variant with the `*` before domains, and one without. This is also very effective at blocking, and can be a great option depending on your blocker of choice if you're unable to use the ABP lists.

<br>

⚠️ I am **NOT** planning to create ["HOSTS"](https://wikipedia.org/wiki/Hosts_(file)) files at this time. I would recommend reading the reasons OISD lists [here](https://oisd.nl/faq#legacysyntaxes), as I strongly agree with them. HOSTS files are very time consuming to maintain, unnecessarily large, and above all else: just not effective at blocking.

⭐️ I would generally recommend using [AdGuard Home](https://adguard.com/adguard-home/overview.html) as your DNS content blocker of choice if possible, as it is free and open source, and offers the strongest amount of customization & features. You can see my recommended set-up for AdGuard Home [here](https://codeberg.org/celenity/adguard-home-settings). These lists are also compatible with various other content blockers and firewalls, such as [uBlock Origin](https://github.com/gorhill/uBlock) *(Recommended for browser users)*, [AdGuard](https://adguard.com/adguard-browser-extension/overview.html), [Brave Shields](https://brave.com/shields/), [Cromite](https://github.com/uazo/cromite), [Little Snitch](https://www.obdev.at/products/littlesnitch/index.html), [Pi-hole](https://pi-hole.net/), and more. BadBlock lists are currently not available on any cloud DNS blocking solutions (ex. [NextDNS](https://nextdns.io/), [ControlD](https://controld.com/), & [AdGuard DNS](https://adguard-dns.io/welcome.html)), but I hope that will eventually change in the future as the project gains traction, as I feel that BadBlock lists would prove to be valuable additions to those services. In the event any of those services are interested, I will gladly provide any assistance necessary :).

# The Lists

⚠️ See [here](https://codeberg.org/celenity/BadBlock/wiki/Notable-Domains) for a list of notable domains that BadBlock blocks, which you might wish to unblock depending on your use case.

## BadBlock Combined Lists

### ⚡️ **BadBlock Lite**

#### The essentials! It includes the following lists:

* [x] **🎨 Adobe**
* [x] **📦 Amazon**
* [x] ** Apple**
* [x] **🦁 Brave**
* [x] **💰 Data Brokers**
* [x] **📕 Facebook**
* [x] **🎮 Gaming**
* [x] **🔤 Google**
* [x] **📺 LG**
* [x] **🪁 Huawei**
* [x] **📊 Matomo**
* [x] **🦖 Mozilla**
* [x] **👾 NVIDIA**
* [x] **🍇 Oracle**
* [x] **🤔 Plausible**
* [x] **📡 Radar**
* [x] **🦕 Samsung**
* [x] **🪖 Sentry**
* [x] **🎵 TikTok**
* [x] **🐦 Twitter**
* [x] **🧰 Unity**
* [x] **⚠️ Unsafe**
* [x] **Ⓜ️ Xiaomi**
* [x] **🖀 Yahoo!**
* [x] **🗞️ Yandex**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/badblock_lite.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/badblock_lite.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/badblock_lite.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/badblock_lite.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/badblock_lite.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/badblock_lite.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/badblock_lite.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/badblock_lite.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/badblock_lite.txt`

___

### 🔇 **BadBlock** (*Recommended for most people*)

#### The premier block list. It includes the following lists:

* [x] All lists in **⚡️ BadBlock Lite**
* [x] **🔎 Anti-Monitoring**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/badblock.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/badblock.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/badblock.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/badblock.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/badblock.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/badblock.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/badblock.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/badblock.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/badblock.txt`

___

### 🔥 **BadBlock+** 

#### Complete coverage. It includes the following lists: 

* [x] All lists in **🔇 BadBlock**
* [x] **🍪 Annoyances**
* [x] **🗑️ Crap**
* [x] **📍 Find My**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/badblock_plus.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/badblock_plus.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/badblock_plus.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/badblock_plus.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/badblock_plus.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/badblock_plus.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/badblock_plus.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/badblock_plus.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/badblock_plus.txt`

___

## 🌐 Browser Lists

The following are lists specifically designed for use in your web browser of choice to compliment, they should **NOT** be used at the network level!

### 🛡️ **Block SVG**

Block SVG to harden the security of your web browser.

**⚠️ ONLY RECOMMENDED FOR ADVANCED USERS - THIS WILL CAUSE BREAKAGE!**

#### Included in:

* [ ] **⚡️ BadBlock Lite**
* [ ] **🔇 BadBlock**
* [ ] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/hardened/block-svg.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/hardened/block-svg.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/hardened/block-svg.txt`

___

#### 🛡️ Block SVG - **Unbreak**

**MEANT FOR USE WITH `BLOCK SVG`**

Unbreak websites when SVG is blocked.

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/hardened/unbreak-svg.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/hardened/unbreak-svg.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/hardened/unbreak-svg.txt`

___

### 🛡️ **Block WebGL**

Block WebGL to harden the privacy & security of your web browser.

**⚠️ ONLY RECOMMENDED FOR ADVANCED USERS - THIS WILL CAUSE BREAKAGE!**

#### Included in:

* [ ] **⚡️ BadBlock Lite**
* [ ] **🔇 BadBlock**
* [ ] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/hardened/block-webgl.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/hardened/block-webgl.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/hardened/block-webgl.txt`

___

#### 🛡️ Block WebGL - **Unbreak**

**MEANT FOR USE WITH `BLOCK WEBGL`**

Unbreak websites when WebGL is blocked.

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/hardened/unbreak-webgl.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/hardened/unbreak-webgl.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/hardened/unbreak-webgl.txt`

___

### 🛡️ **Block WebGPU**

Block WebGPU to harden the privacy & security of your web browser.

#### Included in:

* [ ] **⚡️ BadBlock Lite**
* [ ] **🔇 BadBlock**
* [ ] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/hardened/block-webgpu.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/hardened/block-webgpu.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/hardened/block-webgpu.txt`

___

#### 🛡️ Block WebGPU - **Unbreak**

**MEANT FOR USE WITH `BLOCK WEBGPU`**

Unbreak websites when WebGPU is blocked.

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/hardened/unbreak-webgpu.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/hardened/unbreak-webgpu.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/hardened/unbreak-webgpu.txt`

___

### 🛡️ **Block WebRTC**

Block WebRTC to harden the privacy & security of your web browser.

**⚠️ ONLY RECOMMENDED FOR ADVANCED USERS - THIS WILL CAUSE BREAKAGE!**

#### Included in:

* [ ] **⚡️ BadBlock Lite**
* [ ] **🔇 BadBlock**
* [ ] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/hardened/block-webrtc.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/hardened/block-webrtc.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/hardened/block-webrtc.txt`

___

#### 🛡️ Block WebRTC - **Unbreak**

**MEANT FOR USE WITH `BLOCK WEBRTC`**

Unbreak websites when WebRTC is blocked.

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/hardened/unbreak-webrtc.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/hardened/unbreak-webrtc.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/hardened/unbreak-webrtc.txt`

___

### 🖱️ **Click Tracking/Referral Domains**

Block click tracking!

#### Included in:

* [ ] **⚡️ BadBlock Lite**
* [ ] **🔇 BadBlock**
* [ ] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/click-tracking.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/click-tracking.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/click-tracking.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/click-tracking.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/click-tracking.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/click-tracking.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/click-tracking.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/click-tracking.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/click-tracking.txt`

___

## Individual Lists

The following are individual blocklists *(can be used on the network **or** browser level)*, most of which are used to make up the BadBlock **`Combined`** lists!

### 🎨 **Adobe**

Block Adobe advertising, tracking, telemetry, promotions, & more!

#### Included in:

* [x] **⚡️ BadBlock Lite**
* [x] **🔇 BadBlock**
* [x] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/adobe.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/adobe.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/adobe.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/adobe.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/adobe.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/adobe.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/adobe.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/adobe.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/adobe.txt`

___

### 📦 **Amazon**

Block Amazon advertising, tracking, telemetry, promotions, & more!

#### Included in:

* [x] **⚡️ BadBlock Lite**
* [x] **🔇 BadBlock**
* [x] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/amazon.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/amazon.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/amazon.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/amazon.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/amazon.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/amazon.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/amazon.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/amazon.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/amazon.txt`

___

### 🍪 **Annoyances**

Block Cookie banners, Live Chat widgets, & more!

#### Included in:

* [ ] **⚡️ BadBlock Lite**
* [ ] **🔇 BadBlock**
* [x] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/annoyances.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/annoyances.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/annoyances.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/amazon.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/annoyances.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/annoyances.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/amazon.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/annoyances.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/annoyances.txt`

___

### 🔎 **Anti-Monitoring**

Stop the spying!

#### Included in:

* [ ] **⚡️ BadBlock Lite**
* [x] **🔇 BadBlock**
* [x] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/monitoring.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/monitoring.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/monitoring.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/monitoring.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/monitoring.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/monitoring.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/monitoring.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/monitoring.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/monitoring.txt`

___

###  **Apple** 

Block Apple advertising, telemetry, promotions, & more!

#### Included in:

* [x] **⚡️ BadBlock Lite**
* [x] **🔇 BadBlock**
* [x] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/apple.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/apple.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/apple.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/apple.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/apple.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/apple.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/apple.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/apple.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/apple.txt`

___

### 🦁 **Brave**

Block Brave telemetry, analytics, advertising, sponsored content, & more!

#### Included in:

* [x] **⚡️ BadBlock Lite**
* [x] **🔇 BadBlock**
* [x] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/brave.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/brave.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/brave.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/brave.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/brave.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/brave.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/brave.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/brave.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/brave.txt`

___

### 🗑️ **Crap**

Block toxic domains!

#### Included in:

* [ ] **⚡️ BadBlock Lite**
* [ ] **🔇 BadBlock**
* [x] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/crap.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/crap.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/crap.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/crap.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/crap.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/crap.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/crap.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/crap.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/crap.txt`

___

### 💰 **Data Brokers**

Stop the People Search! Blocks data brokers, people search sites, & more!

#### Included in:

* [x] **⚡️ BadBlock Lite**
* [x] **🔇 BadBlock**
* [x] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/data-brokers.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/data-brokers.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/data-brokers.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/data-brokers.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/data-brokers.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/data-brokers.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/data-brokers.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/data-brokers.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/data-brokers.txt`

___

### 🍩 **D'oh!**

Stop DNS servers from bypassing your firewall!

#### Included in:

* [ ] **⚡️ BadBlock Lite**
* [ ] **🔇 BadBlock**
* [ ] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/doh.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/doh.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/doh.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/doh.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/doh.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/doh.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/doh.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/doh.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/doh.txt`

___

### 🔒 **DRM**

[Stop Digital Restrictions Management!](https://www.eff.org/deeplinks/2017/10/drms-dead-canary-how-we-just-lost-web-what-we-learned-it-and-what-we-need-do-next)

#### Included in:

* [ ] **⚡️ BadBlock Lite**
* [ ] **🔇 BadBlock**
* [ ] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/drm.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/drm.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/drm.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/drm.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/drm.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/drm.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/drm.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/drm.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/drm.txt`

___

### 📕 **Facebook**

Block Facebook *(Meta)* advertising, tracking, promotions, & more!

#### Included in:

* [x] **⚡️ BadBlock Lite**
* [x] **🔇 BadBlock**
* [x] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/facebook.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/facebook.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/facebook.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/facebook.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/facebook.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/facebook.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/facebook.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/facebook.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/facebook.txt`

___

### 📍 **Find My**

Block services that try 'finding' your device!

#### Included in:

* [ ] **⚡️ BadBlock Lite**
* [ ] **🔇 BadBlock**
* [x] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/find-my.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/find-my.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/find-my.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/find-my.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/find-my.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/find-my.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/find-my.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/find-my.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/find-my.txt`

___

### 🎮 **Gaming**

Block gaming telemetry, analytics, advertising, tracking, & more!

#### Included in:

* [x] **⚡️ BadBlock Lite**
* [x] **🔇 BadBlock**
* [x] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/gaming.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/gaming.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/gaming.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/gaming.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/gaming.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/gaming.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/gaming.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/gaming.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/gaming.txt`

___

### 🔤 **Google**

Block Google advertising, tracking, promotions, & more!

#### Included in:

* [x] **⚡️ BadBlock Lite**
* [x] **🔇 BadBlock**
* [x] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/google.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/google.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/google.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/google.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/google.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/google.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/google.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/google.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/google.txt`

___

### 🪁 **Huawei**

Block Huawei advertising, tracking, telemetry, & more!

#### Included in:

* [x] **⚡️ BadBlock Lite**
* [x] **🔇 BadBlock**
* [x] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/huawei.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/huawei.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/huawei.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/huawei.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/huawei.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/huawei.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/huawei.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/huawei.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/huawei.txt`

___

### 📺 **LG**

Block LG advertising, tracking, telemetry, & more!

#### Included in:

* [x] **⚡️ BadBlock Lite**
* [x] **🔇 BadBlock**
* [x] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/lg.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/lg.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/lg.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/lg.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/lg.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/lg.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/lg.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/lg.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/lg.txt`

___

### 📊 **Matomo**

Block Matomo Analytics!

#### Included in:

* [x] **⚡️ BadBlock Lite**
* [x] **🔇 BadBlock**
* [x] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/matomo.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/matomo.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/matomo.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/matomo.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/matomo.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/matomo.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/matomo.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/matomo.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/matomo.txt`

___

### 🪟 **Microsoft**

Close the Windows! Block M$ advertising, tracking, promotions, & more!

#### Included in:

* [x] **⚡️ BadBlock Lite**
* [x] **🔇 BadBlock**
* [x] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/microsoft.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/microsoft.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/microsoft.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/microsoft.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/microsoft.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/microsoft.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/microsoft.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/microsoft.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/microsoft.txt`

___

### 🦖 **Mozilla**

Block Mozilla telemetry, analytics, advertising, sponsored content, & more!

#### Included in:

* [x] **⚡️ BadBlock Lite**
* [x] **🔇 BadBlock**
* [x] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/mozilla.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/mozilla.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/mozilla.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/mozilla.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/mozilla.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/mozilla.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/mozilla.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/mozilla.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/mozilla.txt`

___

### 🕵️ **NSA Blocklist - Next Generation**

Block Big Brother!

#### Included in:

* [ ] **⚡️ BadBlock Lite**
* [ ] **🔇 BadBlock**
* [ ] **🔥 BadBlock+**

**⚠️ Needs further testing, beware!**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/nsa-blocklist-ng.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/nsa-blocklist-ng.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/nsa-blocklist-ng.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/nsa-blocklist-ng.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/nsa-blocklist-ng.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/nsa-blocklist-ng.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/nsa-blocklist-ng.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/nsa-blocklist-ng.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/nsa-blocklist-ng.txt`

___

### 👾 **NVIDIA**

Block NVIDIA telemetry, analytics, & more!

#### Included in:

* [x] **⚡️ BadBlock Lite**
* [x] **🔇 BadBlock**
* [x] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/nvidia.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/nvidia.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/nvidia.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/nvidia.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/nvidia.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/nvidia.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/nvidia.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/nvidia.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/nvidia.txt`

___

### 🍇 **Oracle**

Block Oracle telemetry, analytics, & more!

#### Included in:

* [x] **⚡️ BadBlock Lite**
* [x] **🔇 BadBlock**
* [x] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/oracle.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/oracle.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/oracle.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/oracle.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/oracle.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/oracle.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/oracle.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/oracle.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/oracle.txt`

___

### 🤔 **Plausible**

Block Plausible Analytics!

#### Included in:

* [x] **⚡️ BadBlock Lite**
* [x] **🔇 BadBlock**
* [x] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/plausible.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/plausible.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/plausible.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/plausible.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/plausible.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/plausible.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/plausible.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/plausible.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/plausible.txt`

___

### 📡 **Radar**

Block advertising, analytics, unwanted data collection, tracking, & more as they arise! **Covers all general ads/tracking not covered by other lists.**

#### Included in:

* [x] **⚡️ BadBlock Lite**
* [x] **🔇 BadBlock**
* [x] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/radar.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/radar.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/radar.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/radar.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/radar.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/radar.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/radar.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/radar.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/radar.txt`

___

### 🦕 **Samsung**

Block Samsung advertising, tracking, telemetry, & more!

#### Included in:

* [x] **⚡️ BadBlock Lite**
* [x] **🔇 BadBlock**
* [x] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/samsung.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/samsung.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/samsung.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/samsung.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/samsung.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/samsung.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/samsung.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/samsung.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/samsung.txt`

___

### 🪖 **Sentry**

Block Sentry Analytics!

#### Included in:

* [x] **⚡️ BadBlock Lite**
* [x] **🔇 BadBlock**
* [x] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/sentry.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/sentry.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/sentry.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/sentry.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/sentry.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/sentry.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/sentry.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/sentry.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/sentry.txt`

___

### 🎵 **TikTok**

Block TikTok *(Bytedance)* advertising, tracking, telemetry, & more!

#### Included in:

* [x] **⚡️ BadBlock Lite**
* [x] **🔇 BadBlock**
* [x] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/tiktok.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/tiktok.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/tiktok.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/tiktok.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/tiktok.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/tiktok.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/tiktok.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/tiktok.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/tiktok.txt`

___

### 🐦 **Twitter**

Block Twitter *(X)* advertising, tracking, telemetry, & more!

#### Included in:

* [x] **⚡️ BadBlock Lite**
* [x] **🔇 BadBlock**
* [x] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/twitter.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/twitter.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/twitter.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/twitter.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/twitter.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/twitter.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/twitter.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/twitter.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/twitter.txt`

___

### 🧰 **Unity**

Block Unity advertising, tracking, telemetry, & more!

#### Included in:

* [x] **⚡️ BadBlock Lite**
* [x] **🔇 BadBlock**
* [x] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/unity.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/unity.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/unity.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/twitter.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/unity.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/unity.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/unity.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/unity.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/unity.txt`

___

### ⚠️ **Unsafe**

Block dangerous & malicious domains!

#### Included in:

* [x] **⚡️ BadBlock Lite**
* [x] **🔇 BadBlock**
* [x] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/unsafe.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/unsafe.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/unsafe.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/unsafe.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/unsafe.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/unsafe.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/unsafe.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/unsafe.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/unsafe.txt`

___

### Ⓜ️ **Xiaomi**

Block Xiaomi *(Mi)* advertising, tracking, telemetry, & more!

#### Included in:

* [x] **⚡️ BadBlock Lite**
* [x] **🔇 BadBlock**
* [x] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/xiaomi.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/xiaomi.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/xiaomi.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/xiaomi.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/xiaomi.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/xiaomi.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/xiaomi.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/xiaomi.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/xiaomi.txt`

___

### 🖀 **Yahoo!**

Block Yahoo! advertising, tracking, telemetry, & more!

#### Included in:

* [x] **⚡️ BadBlock Lite**
* [x] **🔇 BadBlock**
* [x] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/yahoo.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/yahoo.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/yahoo.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/yahoo.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/yahoo.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/yahoo.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/yahoo.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/yahoo.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/yahoo.txt`

___

### 🗞️ **Yandex**

Block Yandex advertising, tracking, telemetry, & more!

#### Included in:

* [x] **⚡️ BadBlock Lite**
* [x] **🔇 BadBlock**
* [x] **🔥 BadBlock+**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/yandex.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/yandex.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/yandex.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/yandex.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/yandex.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/yandex.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/yahoo.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/yandex.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/yandex.txt`

___

# The Whitelists

In addition to the blocklists detailed above, BadBlock also offers a selection of extensive whitelists, **which I would also highly recommend using if possible**. The goal of the lists is to ensure that domains required for important functionality or legitimate features are never blocked, as well as unblocking other harmless domains & false positives that other lists may block.

> [!NOTE]
> These lists should **ONLY** be used on the **NETWORK** level. Do **NOT** use them in your browser-based content blocker *(ex. uBlock Origin)*.

## Combined Whitelist

### ✋ **BadBlock - Whitelist**

Unblock the good!

*Includes all individual whitelists below!*

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/whitelist.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/whitelist.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/whitelist.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/whitelist.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/whitelist.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/whitelist.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/whitelist.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/whitelist.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/whitelist.txt`

___

## Individual Whitelists

For those with special use-cases, you can also take advantage of our individual Whitelists.

### 🤖 **Android Whitelist**

Unblock the Good! *(Android Edition)*

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/android_whitelist.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/android_whitelist.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/android_whitelist.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/android_whitelist.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/android_whitelist.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/android_whitelist.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/android_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/android_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/android_whitelist.txt`

___

### 🍎 **Apple Whitelist**

Unblock the Good! *(Apple Edition)*

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/apple_whitelist.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/apple_whitelist.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/apple_whitelist.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/apple_whitelist.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/apple_whitelist.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/apple_whitelist.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/apple_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/apple_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/apple_whitelist.txt`

___

### 🌐 **Browser Whitelist**

> [!NOTE]
> Like the other whitelists here, do **NOT** use this in your browser-based content blocker *(ex. uBlock Origin)*.

Unblock the Good! *(Browser Edition)*

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/browser_whitelist.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/browser_whitelist.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/browser_whitelist.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/browser_whitelist.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/browser_whitelist.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/browser_whitelist.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/browser_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/browser_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/browser_whitelist.txt`

___

### 🦾 **CAPTCHA Whitelist**

Unblock the Good! *(CAPTCHA Edition)*

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/captcha_whitelist.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/captcha_whitelist.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/captcha_whitelist.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/captcha_whitelist.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/captcha_whitelist.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/captcha_whitelist.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/captcha_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/captcha_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/captcha_whitelist.txt`

___

### 🛜 **Captive Whitelist**

Unblock domains required for Captive Portals & Connectivity Checks!

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/captive_whitelist.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/captive_whitelist.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/captive_whitelist.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/captive_whitelist.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/captive_whitelist.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/captive_whitelist.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/captive_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/captive_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/captive_whitelist.txt`

___

### 🖆 **Certificate Validation Whitelist**

Unblock the Good! *(Certificate Validation Edition)*

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/certs_whitelist.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/certs_whitelist.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/certs_whitelist.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/certs_whitelist.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/certs_whitelist.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/certs_whitelist.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/certs_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/certs_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/certs_whitelist.txt`

___

### 💌 **Click Tracking/Referral Domains Whitelist**

Unblock click tracking!

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/click-tracking_whitelist.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/click-tracking_whitelist.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/click-tracking_whitelist.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/click-tracking_whitelist.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/click-tracking_whitelist.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/click-tracking_whitelist.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/click-tracking_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/click-tracking_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/click-tracking_whitelist.txt`

___

### 🐧 **GNU/Linux Whitelist**

Unblock the Good! *(GNU/Linux Edition)*

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/linux_whitelist.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/linux_whitelist.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/linux_whitelist.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/linux_whitelist.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/linux_whitelist.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/linux_whitelist.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/linux_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/linux_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/linux_whitelist.txt`

___

### 📞 **Helpline Whitelist**

Unblock the Good! *(Helpline Edition)*

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/emergency_whitelist.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/emergency_whitelist.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/emergency_whitelist.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/emergency_whitelist.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/emergency_whitelist.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/emergency_whitelist.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/emergency_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/emergency_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/emergency_whitelist.txt`

___

### 🛜 **LAN Whitelist**

Unblock the Good! *(LAN Edition)*

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/lan_whitelist.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/lan_whitelist.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/lan_whitelist.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/lan_whitelist.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/lan_whitelist.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/lan_whitelist.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/lan_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/lan_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/lan_whitelist.txt`

___

### 🪟 **Microsoft Whitelist**

Unblock the Good! *(Microsoft Edition)*

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/microsoft_whitelist.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/microsoft_whitelist.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/microsoft_whitelist.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/microsoft_whitelist.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/microsoft_whitelist.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/microsoft_whitelist.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/microsoft_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/microsoft_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/microsoft_whitelist.txt`

___

### 🏠 **Misc. Whitelist**

Unblock the Good! *(Misc. Edition)*

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/misc_whitelist.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/misc_whitelist.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/misc_whitelist.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/misc_whitelist.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/misc_whitelist.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/misc_whitelist.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/misc_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/misc_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/misc_whitelist.txt`

___

### 📶 **Mobile Whitelist**

Unblock the Good! *(Mobile Edition)*

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/mobile_whitelist.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/mobile_whitelist.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/mobile_whitelist.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/mobile_whitelist.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/mobile_whitelist.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/mobile_whitelist.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/mobile_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/mobile_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/mobile_whitelist.txt`

___

### 🦖 **Mozilla Whitelist**

Unblock the Good! *(Mozilla Edition)*

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/mozilla_whitelist.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/mozilla_whitelist.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/mozilla_whitelist.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/mozilla_whitelist.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/mozilla_whitelist.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/mozilla_whitelist.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/mozilla_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/mozilla_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/mozilla_whitelist.txt`

___

### 🔔 **Push Notifications Whitelist**

Never miss a message!

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/push_whitelist.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/push_whitelist.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/push_whitelist.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/push_whitelist.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/push_whitelist.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/push_whitelist.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/push_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/push_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/push_whitelist.txt`

___

### 🔒 **Safe Browsing Whitelist**

Unblock the Good! *(Safe Browsing Edition)*

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/safe-browsing_whitelist.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/safe-browsing_whitelist.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/safe-browsing_whitelist.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/safe-browsing_whitelist.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/safe-browsing_whitelist.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/safe-browsing_whitelist.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/safe-browsing_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/safe-browsing_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/safe-browsing_whitelist.txt`

___

### ⏰ **Time Servers Whitelist**

Unblock the Good! *(Time Edition)*

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/time_whitelist.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/time_whitelist.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/time_whitelist.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/time_whitelist.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/time_whitelist.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/time_whitelist.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/time_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/time_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/time_whitelist.txt`

___

## 😇 Ethical Whitelist

> [!NOTE]
> Unlike the whitelists above, this can be used on the browser **OR** network level.

The truth we have to accept is that **not all data collection is evil**. Analytics/Telemetry *can* be done without tracking or compromising the privacy of users, and can serve legitimate purposes to help developers improve software/services. We should reward developers who do the right thing, and the aim of this **optional** whitelist is to incentive them to do so.

**All** domains included in this whitelist are still **blocked** in the BadBlock blocklists where applicable. I will again emphasize that this list is **entirely optional**. **It is simply meant for users who would like to help incentive developers to do the right thing.**

**For a domain to be included in the `Ethical Whitelist`, it MUST meet the following strict criteria**:

* Data collected **MUST** not be used to track or profile in any way, shape, or form.
* Data collected **MUST** not be able to de-anonymize or uniquely identify users.
* Data collected **MUST** not be shared with 3rd parties.
* Data collected **MUST** have adequate protection against data/security breaches.
* There **MUST** be a clear, easy way for users to opt out of said data collection.
* If it is a website, it **SHOULD** disable data collection if a user has enabled `Global Privacy Control`.

**FAILURE TO COMPLY WITH THIS CRITERIA WILL RESULT IN THE IMMEDIATE REMOVAL OF OFFENDING DOMAINS!**

___

* ⭐ **ABP Syntax** *(Recommended)* - `https://badblock.celenity.dev/abp/ethical_whitelist.txt`

* **ABP Syntax** *(Recommended, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/abp/ethical_whitelist.txt`

* **ABP Syntax** *(Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/abp/ethical_whitelist.txt`

* **Wildcard Domains** *(With `*`)* - `https://badblock.celenity.dev/wildcards-star/ethical_whitelist.txt`

* **Wildcard Domains** *(With `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-star/ethical_whitelist.txt`

* **Wildcard Domains** *(With `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-star/ethical_whitelist.txt`

* **Wildcard Domains** *(Without `*`)* - `https://badblock.celenity.dev/wildcards-no-star/ethical_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Alternate link)* - `https://codeberg.org/celenity/BadBlock/raw/branch/pages/wildcards-no-star/ethical_whitelist.txt`

* **Wildcard Domains** *(Without `*`, Backup)* - `https://raw.githubusercontent.com/celenityy/BadBlock/pages/wildcards-no-star/ethical_whitelist.txt`

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

* Please do **NOT** rely on DNS blocking as your only defense against advertising, tracking, and other nastiness. The fact of the matter is that DNS blocking is fundamentally limited and is not a magic bullet. For instance, it is unable to protect against tracking & advertising from first-party domains, and lacks cosmetic filtering. You should also use a strong & reputable browser content blocker, such as [uBlock Origin](https://github.com/gorhill/uBlock) *(See recommended settings [here](https://codeberg.org/celenity/ublock-origin-settings))*, as well as be sure to make use of your browser's Safe Browsing technology if it is not done in a privacy-invasive way, and use a *(reputable)* Anti-virus. On most platforms, you should simply stick to the built-in protection, but on Linux, I would recommend [ClamAV](https://www.clamav.net/).

* You should use a privacy-respecting browser that respects you as a user. I recommend [Firefox](https://www.mozilla.org/firefox/) with my [Phoenix](https://phoenix.celenity.dev).

* It's also advisable to use a reputable VPN, as VPNs can provide many benefits, such as preventing tracking via the IP address, hiding your general location and ISP, bypassing censorship & geo-blocking, preventing your traffic from being sold and logged by your ISP, preventing exposing your LAN to the internet, among a lot of other factors. I would generally recommend either [Mullvad](https://mullvad.net/) or [IVPN](https://www.ivpn.net/).

# Credits

Thanks to [Divested Computing Group](https://divested.dev/) for creating & maintaining [Simple Hosts Merger](https://divested.dev/pages/software#simple_hosts_merger), which was used historically for creating the combined BadBlock lists. We also include entries from their [Fingerprinting Blocklist](https://gitlab.com/divested/dnsbl/-/raw/master/Fingerprinting.ubl) *(CC0)* in **`Radar`** *(ABP)*, and we include certain domains from their excellent [dnsrm](https://codeberg.org/divested/dnsrm) project *(CC0)* in our whitelists.

Thanks to [HaGeZi](https://github.com/hagezi) for inspiration to create a table of contents & better organize, and for creating the recommended lists noted above.
