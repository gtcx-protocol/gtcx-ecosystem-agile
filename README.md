# GTCX Protocol Ecosystem

Public home for the GTCX protocols, reference services, and open‑source platforms.

Updated: 2025-09-02

## What is GTCX?
GTCX is an open protocol stack for trustworthy global trade. It focuses on verifiable events, culturally aware intelligence, and practical tools that work inclusively across regions.

## Protocols (foundation)
Core protocol specifications live in `gtcx-ecosystem-research/02-protocol-specifications/`.
- TradePass — identity & authorization (DIDs/VCs, roles, entitlements)
- GCI — compliance & policy (credentials, attestations, scoring)
- GeoTag — evidence (cryptographic location, timestamping, device attestation)
- VaultMark — audit (sealed receipts, custody chain)
- PvP — settlement (post‑verification, atomic payment‑versus‑physical)

Transport and data contracts use JSON Schema with versioned `$id`.

```mermaid
flowchart TD
  A[Protocols] --> B[Reference Services]
  B --> C[Open Platforms]
  C --> D[Applications & Communities]
```

## Three‑tier architecture
1) Protocols — specifications and data contracts (research repo)
2) Reference services — PANX, Cortex, ANISA (this org)
3) Platforms & apps — open‑source frontends, terminals, and integrations

```mermaid
flowchart LR
  subgraph Protocols
    L1[TradePass]
    L2[GCI]
    L3[GeoTag]
    L4[VaultMark]
    L5[PvP]
  end
  subgraph Reference Services
    S1[PANX\nVerification]
    S2[ANISA\nCultural Intelligence]
    S3[Cortex\nAnalytics]
  end
  subgraph Platforms
    CRX[CRX Regulatory]
    SGX[SGX Sovereign Exchange]
    AGX[AGX Global Exchange]
  end
  L1 --> S1
  L2 --> S1
  L3 --> S1
  L4 --> S1
  L5 --> S1
  S2 -. enrich .-> S1
  S1 --> S3
```

## Reference services (live repos)
- PANX (Oracle/Verification): `gtcx-ecosystem-cognitive/panx` — consensus, proofs, forward to Cortex
- Cortex (Analytics): `gtcx-ecosystem-cognitive/cortex` — ingest, summary, anomalies
- ANISA (Cultural Intelligence): `gtcx-ecosystem-anisa` — analyze/assess endpoints for enrichment

Each service includes: README, user/agent guides, runbooks, deploy guides, JSON Schemas, and changelogs.

## Open‑source platforms & tooling
- CRX — government workflow automation & regulatory processing
- SGX — sovereign national exchange & settlement
- AGX — authenticated global exchange (international marketplace)
- Terminal & UI shells — operator dashboards and community views (repos under `gtcx-ecosystem-platforms/`)
- APIs & gateways — shared adapters and routing (`gtcx-ecosystem-api-gateway/`)
- Research & specs — canonical protocol drafts and design notes (`gtcx-ecosystem-research/`)

### End‑to‑end data flow
```mermaid
flowchart TD
  A[Physical Production]
  B[VIA/VXA + GeoTag + TradePass]
  C[Compliance‑Verified Producers]
  D[CRX Government Processing]
  E[SGX National Exchange]
  F[AGX International Marketplace]
  G[Cross‑Border PvP Settlement]
  A --> B --> C --> D --> E --> F --> G
```

## Contracts and versioning
- JSON Schema with `$id` across services
- Response header `X-Contract-Version`
- Compatibility checks included in repos (`contracts_compat_check.py`)

## Deploy
- Quickstart (VM + Docker Compose) in PANX/Cortex/ANISA READMEs
- Helm charts & GKE Autopilot (planned)

## Roadmap (high‑level)
- Protocol hardening and specification snapshots
- Schema‑first development with version guarantees
- Managed Postgres/Timescale persistence and retention
- Observability: metrics, dashboards, and alerting
- Agentic behaviors: PANX (borderline re‑verify plans), Cortex (watchers & action proposals)

## Community
- Issues and discussions in each repo
- Contributions welcome: docs, code, research

MIT License
