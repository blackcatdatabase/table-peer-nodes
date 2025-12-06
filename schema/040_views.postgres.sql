-- Auto-generated from schema-views-postgres.yaml (map@sha1:EDC13878AE5F346E7EAD2CF0A484FEB7E68F6CDD)
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
