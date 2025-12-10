# peer_nodes

Known database/application peers for replication and sync.

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| created_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Registration timestamp (UTC). |
| id | BIGINT | NO |  | Surrogate primary key. |
| last_seen | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | YES |  | Last heartbeat timestamp. |
| location | VARCHAR(120) | YES |  | Optional region / data center. |
| meta | mysql: JSON / postgres: JSONB | YES |  | JSON metadata describing the peer. |
| name | VARCHAR(120) | NO |  | Peer display name. |
| status | mysql: ENUM('active','offline','degraded','disabled') / postgres: TEXT | NO | active | Health status. (enum: active, offline, degraded, disabled) |
| type | mysql: ENUM('postgres','mysql','app','service') / postgres: TEXT | NO |  | Peer type. (enum: postgres, mysql, app, service) |

## Engine Details

### mysql

Unique keys:
| Name | Columns |
| --- | --- |
| ux_peer_nodes_name | name |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_peer_nodes_last_seen | last_seen | CREATE INDEX idx_peer_nodes_last_seen ON peer_nodes (last_seen) |
| idx_peer_nodes_status | status | CREATE INDEX idx_peer_nodes_status    ON peer_nodes (status) |
| ux_peer_nodes_name | name | CONSTRAINT ux_peer_nodes_name UNIQUE (name) |

### postgres

Unique keys:
| Name | Columns |
| --- | --- |
| ux_peer_nodes_name | name |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| idx_peer_nodes_last_seen | last_seen | CREATE INDEX IF NOT EXISTS idx_peer_nodes_last_seen ON peer_nodes (last_seen) |
| idx_peer_nodes_status | status | CREATE INDEX IF NOT EXISTS idx_peer_nodes_status ON peer_nodes (status) |
| ux_peer_nodes_name | name | CREATE UNIQUE INDEX IF NOT EXISTS ux_peer_nodes_name ON peer_nodes (name) |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_peer_nodes | mysql | algorithm=MERGE, security=INVOKER | [schema\040_views.mysql.sql](schema\040_views.mysql.sql) |
| vw_peer_nodes | postgres |  | [schema\040_views.postgres.sql](schema\040_views.postgres.sql) |
