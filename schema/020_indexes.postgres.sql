-- Auto-generated from schema-map-postgres.yaml (map@sha1:8C4F2BC1C4D22EE71E27B5A7968C71E32D8D884D)
-- engine: postgres
-- table:  peer_nodes

CREATE UNIQUE INDEX IF NOT EXISTS ux_peer_nodes_name ON peer_nodes (name);

CREATE INDEX IF NOT EXISTS idx_peer_nodes_status ON peer_nodes (status);

CREATE INDEX IF NOT EXISTS idx_peer_nodes_last_seen ON peer_nodes (last_seen);
