# Telegram onboarding (fast path)

## TradeBox: chat‑first onboarding that meets users where they are
TradeBox is our Telegram experience that gets producers, exporters, and officials live in hours—not weeks. It turns identity, provenance, and permits into a guided conversation that runs on any phone, in low bandwidth, in local languages.

- Bot and utilities: [Telegram bot README](../gtcx-ecosystem-shared/utilities/gtcx-utility-telegrambot/README.md) · [TradeDesk README](../gtcx-ecosystem-shared/utilities/gtcx-utility-tradedesk/README.md)
- Strategy (narrative): [Telegram bot strategy](../gtcx-ecosystem-specs/telegram/telegram-bot-strategy.md) · Commands and flows: [Bot commands](../gtcx-ecosystem-specs/telegram/gtcx-bot-commands-readme.md)

## User journey (TradeBox)
```mermaid
sequenceDiagram
  participant User as "User"
  participant BOT as "GTCX TradeBox (Telegram)"
  participant TP as "TradePass"
  participant GT as "GeoTag"
  participant GCI as "GCI"
  participant CRX as "CRX (Permits)"
  participant SGX as "SGX"
  participant AGX as "AGX"

  User->>BOT: /start · choose language and role
  BOT->>User: Explain value, privacy, next steps
  User->>BOT: Submit ID photos (guided)
  BOT->>TP: Verify ID and issue credentials
  Note over TP: ~30s typical

  BOT->>User: Pair GeoTag device / capture location evidence
  User->>BOT: Share location & batch context
  BOT->>GT: Verify cryptographic location & timestamp
  Note over GT: instant

  BOT->>GCI: Eligibility Q&A with attached evidence
  GCI-->>BOT: Eligibility result and requirements
  BOT->>CRX: Pre‑registration + artifacts
  CRX-->>User: Permit status link (when eligible)

  BOT-->>SGX: Create listing shell (when permitted)
  SGX-->>AGX: Federated discovery
```

## What you walk away with
- TradePass identity and roles you can show anywhere (QR or code)
- GeoTag setup and a first signed location proof
- Eligibility status and a CRX application in flight
- If permitted: a listing shell in SGX discoverable via AGX

## Operator view (why it works at scale)
- Languages, voice, and offline queuing reduce friction dramatically
- Structured captures push clean artifacts into TradePass/GeoTag/VaultMark
- PANX/Cortex hooks let ops monitor completion, anomalies, and progress
