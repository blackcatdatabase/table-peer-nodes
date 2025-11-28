-- Auto-generated from schema-views-mysql.psd1 (map@mtime:2025-11-27T15:35:35Z)
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
