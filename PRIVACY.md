# Privacy

DevClean collects no data. It has no analytics, no accounts and no tracking.

- Everything it scans and deletes stays on your Mac.
- The only network request is **Help > Check for Updates…**, and only when you choose it. It asks GitHub for the latest release of this project. No identifier is sent.
- It stores a few small preferences on your Mac: the Projects folder you picked, the idle-days setting, the projects you pinned in Align Gradle Versions, and the last version you opened (to show release notes after an update).
- The Gradle auto-cleanup switch writes one file, `~/.gradle/init.d/cache-cleanup.gradle`, and removes it when you turn the switch off.
- **Align Gradle Versions…** edits `gradle/wrapper/gradle-wrapper.properties` in the projects you tick, and only after you press Update. Each original is first copied to `~/Library/Application Support/DevClean/Backups`. Nothing is sent anywhere.
