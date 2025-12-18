-- Auto-generated from schema-map-mysql.yaml (map@sha1:7AAC4013A2623AC60C658C9BF8458EFE0C7AB741)
-- engine: mysql
-- table:  peer_nodes

CREATE TABLE IF NOT EXISTS peer_nodes (
  id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(120) NOT NULL,
  `type` ENUM('postgres','mysql','app','service') NOT NULL,
  location VARCHAR(120) NULL,
  status ENUM('active','offline','degraded','disabled') NOT NULL DEFAULT 'active',
  last_seen DATETIME(6) NULL,
  meta JSON NULL,
  created_at DATETIME(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  CONSTRAINT ux_peer_nodes_name UNIQUE (name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;
