-- Auto-generated from schema-views-postgres.psd1 (map@mtime:2025-11-27T15:36:13Z)
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
