-- Auto-generated from schema-views-mysql.yaml (map@sha1:39CF23914A48753BF55EEB1F38DDBA21AB1DBBB7)
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
