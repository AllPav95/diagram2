 CREATE DATABASE pavloval_db;

USE pavloval_db;
--1 верх 1 беж
CREATE TABLE ipblocks (
[ipb_id] INT,
[ipb_address] VARBINARY(255), 
[ipb_user] INT, 
[ipb_by] INT,
[ipb_by_text] VARCHAR(255), 
[ipb_reason] VARCHAR(255), 
[ipb_timestamp] BINARY(14), 
[ipb_auto]TINYINT, 
[ipb_anon_only]TINYINT, 
[ipb_create_account]VARCHAR(255), 
[ipb_enable_autoblock]TINYINT, 
[ipb_expiry] VARBINARY (14), 
[ipb_range_start] VARCHAR(255), 
[ipb_range_end] VARCHAR(255),
[ipb_deleted]TINYINT,
[ipb_btock_email]TINYINT, 
[ipb_allow_usertalk]TINYINT
);
SELECT * FROM [ipblocks];
ALTER TABLE [ipblocks] ADD [ipb_pal_id]  INT;
--ipblocks->user 1
--DROP TABLE ipblocks; 

--2- верх 1 зелен
CREATE TABLE [user] (
[user_id] INT PRIMARY KEY,
[user_name] VARCHAR(255), 
[user_real_name] VARCHAR(255), 
[user_password] VARCHAR(255), 
[user_newpassword] VARCHAR(255), 
[user_newpass_time] BINARY(14),
[user_email] NVARCHAR(255),  
[user_touched] BINARY(14), 
[user_token] BINARY(32), 
[user_email_authenticated] BINARY(14),
[user_email_token] BINARY(32),
[user_email_token_expires] BINARY(14),
[user_registration] BINARY(14),
[user_editcount] INT
);
SELECT * FROM [user];

--DROP TABLE [user]; 
--3
CREATE TABLE watchlist (
[wl_user] INT PRIMARY KEY,
[wl_namespace] INT, 
[wl_title] VARCHAR(255), 
[wl notificationtimestamp] VARBINARY(14)	
);
SELECT * FROM [watchlist];

--DROP TABLE watchlist;
--4
CREATE TABLE user_groups (
[ug_user] INT PRIMARY KEY,
[user_group] VARBINARY(16)
);
SELECT * FROM [user_groups];

--DROP TABLE user_groups;
--5
CREATE TABLE user_former_groups (
[ufgjiser] INT,
[ufg_group] VARBINARY(16)
);
SELECT * FROM [user_former_groups];
--DROP TABLE user_former_groups;
--6
CREATE TABLE external_user (
[eu_local_id] INT,
[eu_external_id] VARCHAR(255)
);
SELECT * FROM  [external_user];
ALTER TABLE [external_user] ADD [eu_pal_id]  INT;
--DROP TABLE external_user;
--7
CREATE TABLE user_properties (
[up_user] INT PRIMARY KEY,
[up_property] VARBINARY(255),
[up_value] VARBINARY(MAX)
);
SELECT * FROM user_properties;

--DROP TABLE user_properties;
--8
CREATE TABLE user_newtalk (
[user_id] INT PRIMARY KEY,
[user_ip] VARBINARY(40), 
[user_last_timestamp] BINARY(14)
);
SELECT * FROM user_newtalk;

--DROP TABLE user_newtalk;

--9 середина 1 беж 
CREATE TABLE site_stats (
[ss_row_id] INT,
[ss_total_views] BIGINT,
[ss_total_edits] BIGINT,
[ss_good_articles] BIGINT,
[ss_total_pages] BIGINT,
[ss_users] BIGINT,
[ss_actrve_users] BIGINT,
[ss admins] INT,
[ss_images] INT
);
SELECT * FROM  [site_stats];

--DROP TABLE site_stats;

--10
CREATE TABLE logging (
[log_id] INT,
[log_type] VARBINARY(32),
[log_action] VARBINARY(32), 
[log_timestamp] BINARY(14),
[log_user] INT,
[log_user_text] VARCHAR(255),
[log_namespace] INT,
[log_title] VARCHAR(255),
[log_page] INT,
[log_comment] VARCHAR(255),
[log_params]  VARBINARY(MAX),
[log_deleted] TINYINT
);
--logging->user 2
SELECT * FROM  [logging];

--DROP TABLE logging;

--11
CREATE TABLE log_search (
[is_field ] VARBINARY(32),
[is_value] VARCHAR(255),
[is_log_id] INT
);
SELECT * FROM  [log_search];

--DROP TABLE log_search;
--12
CREATE TABLE hitcounter (
[hc_id] INT, 
);
SELECT * FROM  [hitcounter];
--ALTER TABLE [ hitcounter] ADD [hc_pall]  INT;
--DROP TABLE  hitcounter;

--13 середина 1_2 роз
CREATE TABLE filearchive (
[fa_id] INT,
[fa_name] VARCHAR(255),
[fa_archrve_name] VARCHAR(255),
[fa_storage_group] VARBINARY(16), 
[fa_storage_key] VARBINARY(64),
[fa_deleted_user] INT,
[fa_deleted_timestamp] BINARY(14),
[fa_deleted_reason] TEXT,
[fa_size] INT,
[fa_width] INT,
[fa_height] INT,
[fa_metadata] VARBINARY(MAX),
[fa_bits] INT,
[fa_media_type] VARCHAR(255),
[fa_major_mime] VARCHAR(255),
[fa_minor_mime] VARBINARY(100),
[fa_descriptton] VARCHAR(255),
[fa_user] INT,
[fa_user_text] VARCHAR(255),
[fa_timestamp] BINARY(14),
[fa deleted] TINYINT
);
-- filearchive -> userX
SELECT * FROM  [filearchive];
--ALTER TABLE [filearchive] ADD [hc_pall]  INT;
--DROP TABLE  filearchive;

--14
CREATE TABLE [image] (
[img_name]  VARCHAR(255),
[img_size] INT,
[img_width] INT,
[img_height] INT,
[img_metadata] VARBINARY(MAX),
[img_bits] INT,
[img_media_type] VARCHAR(255), 
[img_major_mime] VARCHAR(255),
[img_minor_mime] VARBINARY(100), 
[img_description] VARCHAR(255),
[img_user] INT,
[img_userjext] VARCHAR(255),
[img_timestamp] VARBINARY(14), 
[img_sha1] VARBINARY(32)
);
SELECT * FROM  [image];
--ALTER TABLE [filearchive] ADD [hc_pall]  INT;
--DROP TABLE  filearchive;


--15
CREATE TABLE oldimage (
[oi_name] VARCHAR(255),
[oi_archive_name] VARCHAR(255),
[oi_size] INT,
[oi_width] INT, 
[oi_height] INT,
[oi_bits] INT,
[oi_description] VARCHAR(255),
[oi_user] INT,
[oi_user_text]VARCHAR(255),
[oi_timestamp] BINARY(14),
[oi_metadata]  VARBINARY(MAX),
[oi_media_type] VARCHAR(255),
[oi_major_mime] VARCHAR(255),
[oi_minor_mime] VARBINARY (100),
[oi_deleted] TINYINT,
[oi_sha1] VARBINARY(32) 
);
--DROP TABLE oldimage;

--16
CREATE TABLE uploadstash (
[us_id] INT, 
[us_user] INT,
[us_key] VARCHAR(255),
[us_orig_path] VARCHAR(255),
[us_path] VARCHAR(255),
[us_source type] VARCHAR(50), 
[us_timestamp] VARBINARY(14),
[us_status] VARCHAR(50),
[us_size] INT,
[us_sha1] VARCHAR(31),
[us_mime] VARCHAR(255),
[us_media_type] VARCHAR(255),
[us_image_width] INT, 
[us_image_height] INT, 
[us_image_bits] SMALLINT
);
--17
CREATE TABLE imagelinks(
[il_from] INT,
[il_to] VARCHAR(255) 
);


--18 низ 1 бледно-голуб
CREATE TABLE msg_resource (
[mr_resource] VARBINARY(255),
[mr_lang] VARBINARY(32),
[mr_blob] VARBINARY(MAX),
[mr_timestamp] BINARY(14)
);
--19
CREATE TABLE msg_resource_links(
[mrl_resource] VARBINARY(255), 
[mrl_message] VARBINARY(255)
);
--20
CREATE TABLE module_deps (
[md_module] VARBINARY(255), 
[md_skin] VARBINARY(32), 
[md_deps] VARBINARY(MAX)
);



--21 середина 2 беж
CREATE TABLE revision  (
[rev_id] INT PRIMARY KEY, 
[rev_page] INT, 
[rev_text_id] INT,
[rev_comment] VARCHAR(255),
[rev_user] INT,
[rev_user_text] VARCHAR(255), 
[rev_timestamp] BINARY(14), 
[rev_minor_edit] TINYINT, 
[rev_deleted] TINYINT, 
[rev_len] INT, 
[rev_parent_id] INT,
[rev_sha1] VARBINARY(32)
);
DROP TABLE revision;

--22 
CREATE TABLE archive (
[ar_namespace] INT, 
[ar_ title] VARCHAR(255), 
[ar_text] VARBINARY(MAX),
[ar_comment] VARCHAR(255),  
[ar_user] INT,
[ar_user_text] VARCHAR(255), 
[ar_timestamp] BINARY(14), 
[ar_minor_edit] TINYINT,
[ar_flags] VARCHAR(255),
[ar_rev_id]  INT,
[ar_text_id] INT,
[ar_deleted] TINYINT, 
[ar_len] INT, 
[ar_page_id] INT, 
[ar_parent_id] INT,
[ar_sha1] VARBINARY(32)
);
--23
CREATE TABLE [text] (
[old_id] INT, 
[old_text] VARCHAR(MAX),
[old_flags] VARCHAR(255)
);
--24
CREATE TABLE recentchanges (
[rc_id] INT PRIMARY KEY, 
[rc_timestamp] VARBINARY(14),
[rc_cur_time] VARBINARY(14),
[rc_user] INT,
[rc_userjext] VARCHAR(255),
[rc_namespace] INT,
[rc_title] VARCHAR(255), 
[rc_comment] VARCHAR(255),
[rc_minor] TINYINT,
[rc_bot] TINYINT,
[rc_new] TINYINT, 
[rc_cur_id] INT,
[rc_this_oldid] INT, 
[rc_last_oldid] INT, 
[rc_type] TINYINT,
[rc_moved_to_ns] TINYINT,
[rc_moved_to_title] VARCHAR(255),
[rc_patrolled] TINYINT,
[re_ip] VARBINARY(40), 
[rc_old_len] INT,
[rc_new_len] INT, 
[rc_deleted] TINYINT,
[rc_ logid] INT,
[re_log_type] VARBINARY(255),
[re_log_action] VARBINARY(255),
[rc_params] VARCHAR(MAX)
);
DROP TABLE recentchanges;
--25
CREATE TABLE templatelinks (
[tl_from] INT, 
[tl_namespace] INT,
[tl_title] VARCHAR(255)
);
--26
CREATE TABLE iwlinks(
[iwl_from] INT,
[iwl_prefix] VARBINARY(20),
[iwl_title] VARCHAR(255) 
);
--27
CREATE TABLE langlinks(
[ll_from] INT, 
[ll_lang] VARBINARY(20), 
[ll_title] VARCHAR(255) 
);
--28
CREATE TABLE externallinks (
[el from] INT, 
[el_to] VARCHAR(MAX), 
[el_index] VARCHAR(MAX)
);
--29
CREATE TABLE pagelinks (
[pl from] INT, 
[pl_namespace] INT, 
[pl_title] VARCHAR(255)
);
--30
CREATE TABLE [page](
[page_id] INT,
[page_namespace] INT,
[page_title] VARCHAR(255),
[page restrictions] VARCHAR(MAX), 
[page_counter] BIGINT,
[page_is_redirect] TINYINT,
[page_is_new] TINYINT,
[page_random] FLOAT,
[page_touched] BINARY(14),
[page_latest] INT,
[page_len] INT
);
--31
CREATE TABLE redirect(
[rd_from] INT,
[rd_namespace] INT,
[rd_title] VARCHAR(255), 
[rd_interwiki] VARCHAR(32), 
[rd_fragment] VARCHAR(255) 
);
--32
CREATE TABLE page_restrictions(
[pr_page] INT, 
[pr_type] VARBINARY(60), 
[pr_level] VARBINARY(60), 
[pr_cascade] TINYINT, 
[pr_user] INT,
[pr_expiry] VARBINARY(14),
[pr_id] INT 
);
--33
CREATE TABLE page_props(
[pp_page] INT,
[pp_propname] VARBINARY (60), 
[pp_value]  VARCHAR(MAX)
);
--34
CREATE TABLE protected_titles (
[pt_namespace] INT, 
[pt_title] VARCHAR(255), 
[pt_user] INT,
[pt_reason] VARCHAR(MAX), 
[pt_timestamp] BINARY(14), 
[pt_expiry] VARBINARY(14),
[pt_create_perm] VARBINARY(60) 
);
--35
CREATE TABLE category(
[cat_id] INT,
[cat_title] VARCHAR(255),
[cat_pages] INT, 
[cat_subcats] INT,
[cat_files] INT,
[cat_hidden] TINYINT 
);
--36
CREATE TABLE categorylinks (
[cl_from] INT,
[cl_to] VARCHAR(255),
[cl_sortkey] VARBINARY(230),
[cl_sortkey_prefix] VARCHAR(255) ,
[cl_timestamp] TIMESTAMP,
[cl_collation] VARBINARY(32),
[cl_type] VARCHAR(255),
);
--37
CREATE TABLE searchindex (
[si_page] INT,
[si_title] VARCHAR(255),
[si text] TEXT 
);



--38 низ 2 голуб
CREATE TABLE change_tag(
[ct_rc_id] INT, 
[ct_log_id] INT,
[ct_rev_id] INT,
[ct_tag] VARCHAR(255), 
[ct_params] VARCHAR(MAX)
);
--39
CREATE TABLE tag_summary (
[ts_rc_id] INT,
[ts_log_id] INT,
[ts_rev_id] INT, 
[ts_tags] VARCHAR(MAX) 
);
--40
CREATE TABLE valid_tag (
[vt_tag] VARCHAR(255) 
);


--41 верх 3 бирюз
CREATE TABLE objectcache (
[keyname] VARBINARY(255),
[value] VARCHAR(MAX), 
[exptime] DATETIME
);
--42
CREATE TABLE config (
[cf_name] VARBINARY (255),
[cf_value] VARCHAR(MAX) 
);
--43
CREATE TABLE trancache (
[tc_url]  VARBINARY (255),
[tc_contents] TEXT,
[tc_time] BINARY(14) 
);
--44
CREATE TABLE l10n_cache (
[lc_lang] VARBINARY(32),
[lc_key] VARCHAR(255),
[lc_value] VARCHAR(MAX)
);
--45
CREATE TABLE querycache (
[qc_type] VARBINARY(32),
[qc_value] INT,
[qc_namespace] INT,
[qc_title] VARCHAR(255)
);
--46
CREATE TABLE querycache_info (
[qci_type] VARBINARY(32),  
[qci_timestamp] BINARY(14)
);
--47
CREATE TABLE querycachetwo (
[qcc_type] VARBINARY (22),
[qcc_value] INT,
[qcc_namespace] INT,
[qcc_title] VARCHAR(255),
[qcc_namespacetwo] INT,
[qcc_titlewo] VARCHAR(255)
);


--48 верх-середина 1 розов
CREATE TABLE testitem (
[ti_run] INT,
[ti name] VARCHAR(255),
[ti_success] BIT 
);
--49
CREATE TABLE testrun (
[tr_id] INT,
[tr_date] CHAR(14),
[tr_mw_version] VARCHAR(255),
[tr_php_version] VARCHAR(255),
[tr_db_version] VARCHAR(255),
[tr_uname] VARCHAR(255)
);



--50 верх-середина 2 фиолет
CREATE TABLE trackbacks (
[tb_id] INT,
[tb_page] INT,
[tb_title] VARCHAR(255),
[tb_url] VARCHAR(MAX),
[tb_ex] TEXT,
[tb_name] VARCHAR(255)
);
--51
CREATE TABLE job (
[job_W] INT,
[job_cmd] VARBINARY(60),
[job_namespace] INT,
[job title] VARCHAR (255),
[jb_params] VARCHAR(MAX)
);
--52
CREATE TABLE updatelog(
[ul key] VARCHAR(255),
[ul value] VARCHAR(MAX)
);
--53
CREATE TABLE interwiki(
[iw_profic] VARCHAR (32),
[iw_uf] VARCHAR(MAX),
[iw_api] VARCHAR(MAX),
[iw_wikid] VARCHAR (64),
[iw_local] BIT,
[iw_trans] TINYINT
);
