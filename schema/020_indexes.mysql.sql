-- Auto-generated from schema-map-mysql.yaml (map@sha1:09DF9CA612D1573E058190CC207FA257C05AEC1F)
-- engine: mysql
-- table:  peer_nodes

CREATE INDEX idx_peer_nodes_status    ON peer_nodes (status);

CREATE INDEX idx_peer_nodes_last_seen ON peer_nodes (last_seen);
