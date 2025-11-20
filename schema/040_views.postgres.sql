-- Auto-generated from schema-views-postgres.psd1 (map@9d3471b)
-- engine: postgres
-- table:  peer_nodes_health
-- Peer health with last lag samples
CREATE OR REPLACE VIEW vw_peer_health AS
WITH last_lag AS (
  SELECT DISTINCT ON (peer_id, metric) peer_id, metric, value, captured_at
  FROM replication_lag_samples
  ORDER BY peer_id, metric, captured_at DESC
)
SELECT
  p.id        AS peer_id,
  p.name,
  p.type,
  p.location,
  p.status,
  p.last_seen,
  COALESCE(MAX(CASE WHEN l.metric=''apply_lag_ms'' THEN l.value END),0)    AS apply_lag_ms,
  COALESCE(MAX(CASE WHEN l.metric=''transport_lag_ms'' THEN l.value END),0) AS transport_lag_ms,
  MAX(l.captured_at) AS lag_sampled_at
FROM peer_nodes p
LEFT JOIN last_lag l ON l.peer_id = p.id
GROUP BY p.id, p.name, p.type, p.location, p.status, p.last_seen
ORDER BY p.status, p.name;

-- Auto-generated from schema-views-postgres.psd1 (map@9d3471b)
-- engine: postgres
-- table:  peer_nodes
-- Contract view for [peer_nodes]
CREATE OR REPLACE VIEW vw_peer_nodes AS
SELECT
  id,
  name,
  "type",
  location,
  status,
  last_seen,
  meta,
  created_at
FROM peer_nodes;

