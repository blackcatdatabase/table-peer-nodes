-- Auto-generated from schema-map-mysql.psd1 (map@734a489)
-- engine: mysql
-- table:  peer_nodes
CREATE INDEX idx_peer_nodes_status    ON peer_nodes (status);

CREATE INDEX idx_peer_nodes_last_seen ON peer_nodes (last_seen);
