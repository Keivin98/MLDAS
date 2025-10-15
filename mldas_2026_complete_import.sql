-- MLDAS 2026 Complete Database Import for MySQL
-- Generated from local SQLite database

-- Clear existing data to avoid conflicts
DELETE FROM media WHERE model_type = 'App\\Sponsor';
DELETE FROM sponsors;
DELETE FROM mldas_series;
DELETE FROM settings;

-- Insert Settings Data
INSERT INTO settings (`key`, `value`, created_at, updated_at) VALUES 
('title', 'MLDAS 2026<br><span>Machine Learning and Data Analytics </span> Symposium', '2024-08-11 10:32:50', '2025-10-14 09:58:34'),
('subtitle', '9–10 February, 2026', '2024-08-11 10:32:50', '2025-10-14 09:58:17'),
('youtube_link', '/storage/0/1698153706463.mp4', '2024-08-11 10:32:50', '2024-08-11 12:43:53'),
('about_description', 'MLDAS is dedicated to fostering connections between researchers, practitioners, students, and industry experts in the fields of machine learning and data science. MLDAS aims to bridge the gap between academic insights and the practical needs of industry. <br /><br />It focuses on cutting-edge research in AI, including recent developments in large language models (LLMs), AI safety, agentic frameworks, AI  in aviation, and system support for scalable AI training and inference. <br /><br />MLDAS features multiple invited talks by prominent researchers, a panel discussion, and poster sessions by students and junior researchers.', '2024-08-11 10:32:50', '2025-10-15 09:37:10'),
('about_where', 'QCRI, HBKU Research Complex, Qatar', '2024-08-11 10:32:50', '2025-10-14 10:38:56'),
('about_when', '9–10 February, 2026', '2024-08-11 10:32:50', '2025-10-14 09:57:52'),
('contact_address', 'QCRI, HBKU Research Complex, Qatar', '2024-08-11 10:32:50', '2025-10-14 10:38:24'),
('contact_phone', '+974 44540629', '2024-08-11 10:32:50', '2024-08-11 13:52:39'),
('contact_email', 'mldas@qcri.org', '2024-08-11 10:32:50', '2025-10-14 10:40:09'),
('footer_description', '', '2024-08-11 10:32:50', '2024-08-11 13:14:50'),
('footer_address', 'QCRI <br> HBKU Research Complex <br> Qatar', '2024-08-11 10:32:50', '2025-10-14 10:38:43'),
('footer_twitter', '#', '2024-08-11 10:32:50', '2024-08-11 10:32:50'),
('footer_facebook', '#', '2024-08-11 10:32:50', '2024-08-11 10:32:50'),
('footer_instagram', '#', '2024-08-11 10:32:50', '2024-08-11 10:32:50'),
('footer_googleplus', '#', '2024-08-11 10:32:50', '2024-08-11 10:32:50'),
('footer_linkedin', '#', '2024-08-11 10:32:50', '2024-08-11 10:32:50'),
('about_chairs', 'Dragos Margineantu & Sanjay Chawla', '2024-08-11 13:42:23', '2024-08-11 13:43:57'),
('first_chair', 'Mohamed Hefeeda', '2024-08-11 13:44:11', '2025-10-14 10:00:48'),
('second_chair', 'Sanjay Chawla', '2024-08-11 13:44:20', '2024-08-11 13:44:20'),
('first_chair_org', 'Acting Research Director, QCRI', '2024-08-11 13:44:28', '2025-10-14 10:00:39'),
('second_chair_org', 'Chief Scientist, QCRI', '2024-08-11 13:44:37', '2025-10-14 10:01:00'),
('third_chair', 'Dragos Margineantu', '2025-10-14 09:59:38', '2025-10-14 09:59:52'),
('third_chair_org', 'AI Chief Technologist, Boeing', '2025-10-14 10:00:02', '2025-10-14 10:01:21'),
('registration_chair', 'Keivin Isufaj', '2025-10-14 10:16:30', '2025-10-14 10:16:30'),
('registration_chair_org', 'Software Engineer, QCRI', '2025-10-14 10:16:40', '2025-10-14 10:16:40'),
('call_for_participation_url', 'https://hotcrp.com', '2025-10-15 09:42:25', '2025-10-15 09:42:44');

-- Insert MLDAS Series Data
INSERT INTO mldas_series (year, title, url, is_active, sort_order, created_at, updated_at) VALUES 
('2023', 'MLDAS 2023', 'https://qcai-blog.qcri.org/index.php/events/mldas-2023/', '1', '4', '2025-10-15 09:21:56', '2025-10-15 09:27:35');

-- Insert Sponsors Data
INSERT INTO sponsors (id, name, link, created_at, updated_at, deleted_at) VALUES 
(1, 'Qatar Computing Research Institute', '#', '2024-08-11 10:32:52', '2024-08-11 13:48:16', NULL),
(2, 'Boeing', '#', '2024-08-11 10:32:52', '2024-08-11 13:47:55', NULL);

-- Insert Media Data (Sponsor Logos)
INSERT INTO media (id, model_type, model_id, uuid, collection_name, name, file_name, mime_type, disk, conversions_disk, size, manipulations, custom_properties, responsive_images, order_column, created_at, updated_at) VALUES 
(60, 'App\\Sponsor', 2, 'aac8ceb2-3bea-4252-ad32-3e83e1a71c42', 'logo', '66ba24099b6bf_Boeing-logo-1', '66ba24099b6bf_Boeing-logo-1.jpg', 'image/jpeg', 'public', 'public', 32676, '[]', '{"generated_conversions": {"thumb": true}}', '[]', 60, '2024-08-12 15:02:45', '2024-08-12 15:02:45'),
(61, 'App\\Sponsor', 1, 'b68135f7-104d-4c2d-8b70-943e8b78e208', 'logo', '66ba245559f1b_thumbnail_QCRI-RGB', '66ba245559f1b_thumbnail_QCRI-RGB.png', 'image/png', 'public', 'public', 23105, '[]', '{"generated_conversions": {"thumb": true}}', '[]', 61, '2024-08-12 15:03:51', '2024-08-12 15:03:51');
