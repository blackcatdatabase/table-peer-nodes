-- Auto-generated from schema-views-postgres.yaml (map@sha1:A35B3CB52780A1043442511D947A51BA2C27622C)
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
