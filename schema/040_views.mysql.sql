-- Auto-generated from schema-views-mysql.yaml (map@sha1:FFA9A9D6FA9EE079B0DAEBB6FEE023C138E8FFA1)
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
