prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run the script connected to SQL*Plus as the owner (parsing schema)
-- of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2022.10.07'
,p_default_workspace_id=>1111111
);
end;
/
prompt  WORKSPACE 1111111
--
-- Workspace, User Group, User, and Team Development Export:
--   Date and Time:   21:43 Friday May 10, 2024
--   Exported By:     TN
--   Export Type:     Workspace Export
--   Version:         22.2.0
--   Instance ID:     706465323282293
--
-- Import:
--   Using Instance Administration / Manage Workspaces
--   or
--   Using SQL*Plus as the Oracle user APEX_220200
 
begin
    wwv_flow_imp.set_security_group_id(p_security_group_id=>1111111);
end;
/
----------------
-- W O R K S P A C E
-- Creating a workspace will not create database schemas or objects.
-- This API creates only the meta data for this APEX workspace
prompt  Creating workspace TATIANA...
begin
wwv_flow_fnd_user_api.create_company (
  p_id => 1408804710275493
 ,p_provisioning_company_id => 1111111
 ,p_short_name => 'TATIANA'
 ,p_display_name => 'TATIANA'
 ,p_first_schema_provisioned => 'TATIANA'
 ,p_company_schemas => 'TATIANA'
 ,p_account_status => 'ASSIGNED'
 ,p_allow_plsql_editing => 'Y'
 ,p_allow_app_building_yn => 'Y'
 ,p_allow_packaged_app_ins_yn => 'Y'
 ,p_allow_sql_workshop_yn => 'Y'
 ,p_allow_team_development_yn => 'Y'
 ,p_allow_to_be_purged_yn => 'Y'
 ,p_allow_restful_services_yn => 'Y'
 ,p_source_identifier => 'TATIANA'
 ,p_webservice_logging_yn => 'Y'
 ,p_path_prefix => 'TATIANA'
 ,p_files_version => 1
 ,p_env_banner_yn => 'N'
 ,p_env_banner_pos => 'LEFT'
);
end;
/
----------------
-- G R O U P S
--
prompt  Creating Groups...
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 1407900946927478,
  p_GROUP_NAME => 'OAuth2 Client Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to register OAuth2 Client Applications');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 1407804065927478,
  p_GROUP_NAME => 'RESTful Services',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use RESTful Services with this workspace');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 1407728661927476,
  p_GROUP_NAME => 'SQL Developer',
  p_SECURITY_GROUP_ID => 10,
  p_GROUP_DESC => 'Users authorized to use SQL Developer with this workspace');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 10043939305709790,
  p_GROUP_NAME => 'Degradation_admin',
  p_SECURITY_GROUP_ID => 1111111,
  p_GROUP_DESC => '');
end;
/
begin
wwv_flow_fnd_user_api.create_user_group (
  p_id => 10044078026717151,
  p_GROUP_NAME => 'Degradation_user',
  p_SECURITY_GROUP_ID => 1111111,
  p_GROUP_DESC => 'имеет полььзовательский доступ');
end;
/
prompt  Creating group grants...
----------------
-- U S E R S
-- User repository for use with APEX cookie-based authentication.
--
prompt  Creating Users...
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '1408786113275487',
  p_user_name                    => 'ADMIN',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'T.N@mail.ru',
  p_web_password                 => 'F74BA2E9ED7C28AC1F6C203725071B7D08E301491B38B9E37E67B98431FD664C27C5BCFEE186BAC2E56EF0924B8325093744BB62A58B3F8BEB2FABAB776E15B8',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'TATIANA',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202311261753','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 1,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '11380544785634098',
  p_user_name                    => 'RUKOVODITEL',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'RUK@DEGRAD.RU',
  p_web_password                 => '98470DF7A4129BBF67E5C86845D2CB8DE09E9CC20C85964111D3C401C4598806E09425D3A2E7BC76DBA4ED9472B7414EB3329C3CC9323545FDACEB3FE3114CC3',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '10043939305709790:',
  p_developer_privs              => '',
  p_default_schema               => 'TATIANA',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202312200000','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'N',
  p_allow_sql_workshop_yn        => 'N',
  p_allow_team_development_yn    => 'N',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '11381253505744015',
  p_user_name                    => 'SQL_ANALIT',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'SQL@DEGRAD.ru',
  p_web_password                 => '12FA7C71C13DAC5BE0CC2292B5DCDC2BE8761AEE6EEF53C11320DF3ABDF597970FE6C4CF77BD23D0618D07825626E385FE57F024D40263F7F6D5409FE1E78739',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '10043939305709790:10044078026717151:',
  p_developer_privs              => 'SQL:MONITOR:DATA_LOADER',
  p_default_schema               => 'TATIANA',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202312201943','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'Y',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'N',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'N',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '1409744779297068',
  p_user_name                    => 'TN',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'tn@mail.ru',
  p_web_password                 => '4ABA6FB9F73EBF3B11ED49933E3014C66043DDECC4CFC3C6A85AE2A74358B819F0E098EC7C9204B2593A029B0DDCFAED8C6E2E9719007D314F6C11A75301C30C',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '10043939305709790:',
  p_developer_privs              => 'ADMIN:CREATE:DATA_LOADER:EDIT:HELP:MONITOR:SQL',
  p_default_schema               => 'TATIANA',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202405060715','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '10043598251701912',
  p_user_name                    => 'TN_1',
  p_first_name                   => '',
  p_last_name                    => '',
  p_description                  => '',
  p_email_address                => 'TN_1@MAIL.RU',
  p_web_password                 => '023F0D0469CAC7E25EE31D60FFC86FF660B03E36F9964B491DBE4307A49E9A5650B8598CF772A4CC89DDBFBA5A6EF7DAEFF66C5D9C14463E3C424438515FEF9C',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '10044078026717151:',
  p_developer_privs              => '',
  p_default_schema               => 'TATIANA',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202405060715','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'Y',
  p_allow_app_building_yn        => 'Y',
  p_allow_sql_workshop_yn        => 'Y',
  p_allow_team_development_yn    => 'Y',
  p_allow_access_to_schemas      => '');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '12892937648661457',
  p_user_name                    => 'TN_123',
  p_first_name                   => 'T123',
  p_last_name                    => '',
  p_description                  => 'Automatic_application_registration',
  p_email_address                => '123@mail.ru',
  p_web_password                 => '2290D80B199C638A82E7ABCC2FC26C1DF1CB09EC685816A2EB12141471128A900F11E522F2013A5B8D691094206F95EC4227E9491D6776106EFD548455DB236E',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'HELP',
  p_default_schema               => 'TATIANA',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202605091831','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'N',
  p_allow_sql_workshop_yn        => 'N',
  p_allow_team_development_yn    => 'Y',
  p_attribute_01                 => '123',
  p_attribute_02                 => 'T123',
  p_allow_access_to_schemas      => 'TATIANA');
end;
/
begin
wwv_flow_fnd_user_api.create_fnd_user (
  p_user_id                      => '13094035023785460',
  p_user_name                    => 'TN_2003',
  p_first_name                   => 't1',
  p_last_name                    => '',
  p_description                  => 'Automatic_application_registration',
  p_email_address                => 'ttt@mail.ru',
  p_web_password                 => 'E1D0C08AF5FCF3C5DF0B31D84504CF9AF9AD5ECDD4B3348DF741D2FE9E439030642F0AD8F921FC3AA58452DF9254D1CA52B03149685C660E494C1DDF45AAC123',
  p_web_password_format          => '5;5;10000',
  p_group_ids                    => '',
  p_developer_privs              => 'HELP',
  p_default_schema               => 'TATIANA',
  p_account_locked               => 'N',
  p_account_expiry               => to_date('202605101419','YYYYMMDDHH24MI'),
  p_failed_access_attempts       => 0,
  p_change_password_on_first_use => 'N',
  p_first_password_use_occurred  => 'N',
  p_allow_app_building_yn        => 'N',
  p_allow_sql_workshop_yn        => 'N',
  p_allow_team_development_yn    => 'Y',
  p_attribute_01                 => '2003',
  p_attribute_02                 => 'm1',
  p_allow_access_to_schemas      => 'TATIANA');
end;
/
---------------------------
-- D G  B L U E P R I N T S
-- Creating Data Generator Blueprints...
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
