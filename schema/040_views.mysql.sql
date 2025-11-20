-- Auto-generated from schema-views-mysql.psd1 (map@db2f8b8)
-- engine: mysql
-- table:  peer_nodes_health
-- Peer health with last lag samples
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_peer_health AS
WITH ranked AS (
  SELECT
    peer_id,
    metric,
    value,
    captured_at,
    ROW_NUMBER() OVER (PARTITION BY peer_id, metric ORDER BY captured_at DESC) AS rn
  FROM replication_lag_samples
)
SELECT
  p.id        AS peer_id,
  p.name,
  p.type,
  p.location,
  p.status,
  p.last_seen,
  COALESCE(MAX(CASE WHEN r.metric = 'apply_lag_ms' THEN r.value END), 0)    AS apply_lag_ms,
  COALESCE(MAX(CASE WHEN r.metric = 'transport_lag_ms' THEN r.value END), 0) AS transport_lag_ms,
  MAX(r.captured_at) AS lag_sampled_at
FROM peer_nodes p
LEFT JOIN ranked r ON r.peer_id = p.id AND r.rn = 1
GROUP BY p.id, p.name, p.type, p.location, p.status, p.last_seen;

-- Auto-generated from schema-views-mysql.psd1 (map@db2f8b8)
-- engine: mysql
-- table:  peer_nodes
-- Contract view for [peer_nodes]
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_peer_nodes AS
SELECT
  id,
  name,
  `type`,
  location,
  status,
  last_seen,
  meta,
  created_at
FROM peer_nodes;

