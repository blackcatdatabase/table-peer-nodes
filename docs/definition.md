<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – peer_nodes

Known database/application peers for replication and sync.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| name | VARCHAR(120) | NO | — | Peer display name. |  |
| type | TEXT | NO | — | Peer type. | enum: postgres, mysql, app, service |
| location | VARCHAR(120) | YES | — | Optional region / data center. |  |
| status | TEXT | NO | 'active' | Health status. | enum: active, offline, degraded, disabled |
| last_seen | TIMESTAMPTZ(6) | YES | — | Last heartbeat timestamp. |  |
| meta | JSONB | YES | — | JSON metadata describing the peer. |  |
| created_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Registration timestamp (UTC). |  |