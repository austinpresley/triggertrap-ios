# ShutterBridge

**Turn your iPhone into a powerful camera remote and intervalometer.**

ShutterBridge is a modernized, community-maintained fork of the open-source
[Triggertrap](https://github.com/Triggertrap/triggertrap-ios) iOS app, which was
discontinued in 2017. It connects to your camera through a compatible
audio-jack dongle and camera cable, and lets you fire the shutter in dozens of
creative ways — from a simple cable release to motion-triggered, sound-triggered
and time-lapse photography.

ShutterBridge is **"Based on Triggertrap"**. It is not affiliated with,
endorsed by, or licensed by Triggertrap Ltd, and all Triggertrap branding has
been removed in accordance with the original licence. See [LICENSE](LICENSE).

---

## What you need

1. **ShutterBridge** on an iPhone or iPad (iOS 16 or later).
2. A **mobile dongle** that converts the audio signal into a camera trigger
   (the original Triggertrap dongles still work — see the in-app cable selector,
   which links to compatible hardware).
3. A **camera connection cable** for your specific camera.

You can also use the **WiFi remote** mode to trigger one device from another
over a local network, no dongle required.

## Features

- **Cable release** — Quick, Press & Hold, Press & Lock, and Timed release.
- **Self-timer** with a configurable countdown.
- **Time-lapse** — classic intervalometer, **DistanceLapse** (fire based on how
  far you've moved, using GPS), **LE HDR** and **LE HDR Time-lapse** for long
  exposures, and **Bulb ramping** for day-to-night "holy grail" time-lapses.
- **Sensor triggers** — Sound, Motion, Vibration, **Face detection**, and
  **Peekaboo** (fire when something enters the frame).
- **Sensor delay** and self-timer combinations.
- **Calculators** — Neutral Density (long-exposure) calculator and a
  sunrise/sunset/solar calculator.
- **WiFi remote** triggering between devices.

## Building from source

Requires Xcode 16 or later (iOS 18 SDK) and [CocoaPods](https://cocoapods.org).

```sh
git clone <this-repo>
cd ShutterBridge
pod install
open ShutterBridge.xcworkspace
```

Select the **ShutterBridge** scheme and run on a simulator or device.

## Installing the prebuilt app (IPA)

A prebuilt, **unsigned** `ShutterBridge.ipa` is provided so you don't have to
build it yourself. Because it is unsigned, you sign it with your own free Apple
ID when you install it — exactly how most open-source iOS apps are distributed
outside the App Store. Any of these work:

- **[AltStore](https://altstore.io)** — install AltServer on your computer, then
  open the `.ipa` in AltStore on your device.
- **[Sideloadly](https://sideloadly.io)** — drag the `.ipa` in, enter your Apple
  ID, and install.
- **Xcode** → *Window ▸ Devices and Simulators* → drag the `.ipa` onto your
  connected device (with a free developer account configured).

Apps signed with a free Apple ID need to be re-signed every 7 days; a paid
Apple Developer account extends this to a year.

> **Note:** the trigger output relies on the audio hardware of a real device.
> The full trigger pipeline can only be exercised on a physical iPhone/iPad with
> a dongle attached, not in the Simulator.

## What changed in this fork

This fork modernizes the 2018 codebase so it builds and runs on current tools:

- Builds cleanly on **Xcode 16 / Swift 5** with the **iOS 18 SDK**; deployment
  target raised to **iOS 16** (runs on iOS 17.7 and later).
- Removed the discontinued **WatchKit 1** and legacy Apple Watch targets.
- Updated the **Info.plist** (fixed a malformed font registration, modern
  permission strings, removed the deprecated `armv7` requirement).
- Hardened font loading and other force-unwraps that could crash.
- Full rebrand to **ShutterBridge** with a new app icon and launch screen.

## Credits & licence

Original app by Matt Kane, Ross Gibson and Valentin Kalchev, with contributions
from Alex Taffe. Released under the MIT-style licence in [LICENSE](LICENSE),
which this fork retains in full.
