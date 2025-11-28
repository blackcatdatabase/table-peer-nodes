-- Auto-generated from schema-map-postgres.psd1 (map@mtime:2025-11-21T00:25:46Z)
-- engine: postgres
-- table:  peer_nodes

CREATE INDEX IF NOT EXISTS idx_peer_nodes_status ON peer_nodes (status);

CREATE INDEX IF NOT EXISTS idx_peer_nodes_last_seen ON peer_nodes (last_seen);
