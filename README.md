# InkBridge

> Turn the iPad you already own into a Mac drawing tablet — Wacom-style,
> no display mirroring. Apple Pencil pressure, tilt, and gestures arrive
> on your Mac in under 12 ms over USB-C or Wi-Fi.

![status](https://img.shields.io/badge/v0.1-pending%20review-f0b35e?style=flat-square)
![mac](https://img.shields.io/badge/macOS-14%2B-f5f3ee?style=flat-square)
![ipad](https://img.shields.io/badge/iPadOS-17%2B-f5f3ee?style=flat-square)
![telemetry](https://img.shields.io/badge/telemetry-none-5bc0aa?style=flat-square)

InkBridge is a pair of small apps — one Mac, one iPad — that lets the
iPad you already own act as a graphics tablet for your Mac. Apple
Pencil pressure, tilt, hover, and Pencil Pro gestures (squeeze,
barrel-roll, double-tap) get streamed across and turned into real
`tabletPoint` CGEvents on the Mac side. Drawing apps see them as
genuine pen input.

No drivers. No kexts. No cloud. No tracking.

**Mac app: free, forever.** Distributed through this repository's
Releases tab and a Homebrew formula.

**iPad app: $9.99, one-time.** Distributed through the App Store. No
subscription, no in-app purchases. Both apps are required.

---

## Install

> The launch is currently pending **Apple notarisation** (Mac) and
> **App Store review** (iPad). When both clear, the links below become
> live downloads. Watch this repo or the Releases tab to be told the
> moment it ships.

### Mac

Once available:

```bash
# Direct download (DMG, signed and notarised)
# https://github.com/xxm-studio/homebrew-inkbridge/releases/latest

# Or via Homebrew
brew install xxm-studio/inkbridge/inkbridge
```

### iPad

Once available, on the iPad: **App Store → search "InkBridge"** ·
$9.99 · one-time purchase · Family Sharing eligible.

---

## Compatibility

|              | Supported                                        | Tested baseline                      |
| ------------ | ------------------------------------------------ | ------------------------------------ |
| **iPad**     | Any model with Pencil support · iPadOS 17+        | iPad mini 7                          |
| **Pencil**   | 1st gen · 2nd gen · Pro · USB-C\*                 | Apple Pencil Pro                     |
| **Mac**      | macOS 14 Sonoma+ · Apple Silicon or Intel         | Mac mini M4 / macOS 26               |
| **Display**  | Single or multi-display, including external 4K/5K | 27" external display                 |
| **Permission**| Accessibility (one-time grant on first launch)   | —                                    |

\* The USB-C Apple Pencil ships without a pressure sensor — that's an
Apple hardware limitation; InkBridge can't work around it. Position
and basic input still work.

---

## Privacy

InkBridge ships **zero telemetry**. No analytics, no crash reporters,
no usage tracking, no remote configuration. Pen events go iPad →
Mac and stop there. Neither app needs network permission to function.

The wireless transport (when in use) routes peer-to-peer over Apple's
AWDL link layer — no router, no internet, no third-party server is
ever involved.

---

## Bugs · Feature requests

- [**File a bug**](../../issues/new?template=bug_report.yml) — please
  include your iPad model, Pencil model, and macOS version. The
  template asks for everything we'll need to reproduce.
- [**Request a feature**](../../issues/new?template=feature_request.yml)
  — concrete usage stories beat abstract wishlists.
- Anything else (private support, commercial licensing, press): email
  **xxmstudio.us@gmail.com**.

---

## About the source

The InkBridge applications are **closed-source**. The application
codebase lives in a separate private repository; this public
repository hosts the README, issue tracker, releases, and the
Homebrew formula.

The reasoning is straightforward: the iPad app is paid, and that
revenue is what funds maintenance and the free Mac app. Source-level
forking would erode the model that pays for the project being
maintained at all. Bug fixes and feature requests are very welcome
through the channels above.

For commercial licensing, source-access enquiries, or anything else:
**xxmstudio.us@gmail.com**.

---

## 中文简介

InkBridge 是一对 macOS + iPadOS 配套使用的小应用 —— 把你手上已经有的
iPad + Apple Pencil 变成 Mac 的图形手绘板。Pencil 压感、倾斜、悬停,
以及 Pencil Pro 的捏合、桶滚、双击全量传到 Mac,合成真正的
`tabletPoint` CGEvent,任何支持数位板的绘图应用直接生效。

不装驱动、不挂内核、不上云、不收集任何数据。

**Mac 端永久免费**(通过本仓 Releases 或 Homebrew 分发),
**iPad 端 App Store 一次买断 $9.99**(无订阅、无内购)。两端配套使用。

### 当前状态

v0.1 正在 Apple 公证(Mac) / App Store 审核(iPad)中。两边通过后,
本仓 Releases 会上线 DMG,App Store 会同步上架。Watch 这个仓库
或者关注 Releases 即可在第一时间知道。

### 反馈

- Bug → [新建 bug 报告](../../issues/new?template=bug_report.yml)
- 需求 → [新建 feature request](../../issues/new?template=feature_request.yml)
- 其他事(包括商业合作、私下支持):邮件 **xxmstudio.us@gmail.com**

---

© 2026 XXM Studio · All rights reserved · See [LICENSE](LICENSE)
