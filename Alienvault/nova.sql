DELETE FROM plugin WHERE id = "10001";
DELETE FROM plugin_sid where plugin_id = "10001";

# Register the plugin
INSERT IGNORE INTO plugin (id, type, name, description, vendor, product_type ) VALUES (10001, 1, 'nova', 'Nova Alerts', 'TimB', 11 );

# And the individual SID values
INSERT IGNORE INTO plugin_sid (plugin_id, sid, category_id, subcategory_id, class_id, name, priority, reliability) VALUES (10001, 1, 19, 225, NULL, 'Nova Alert', 5, 10);

# Remember that once this is complete be sure to run alienvault-reconfig after importing these definitions!
