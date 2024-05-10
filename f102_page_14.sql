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
,p_release=>'22.2.0'
,p_default_workspace_id=>1111111
,p_default_application_id=>102
,p_default_id_offset=>0
,p_default_owner=>'TATIANA'
);
end;
/
 
prompt APPLICATION 102 - Курсовая работа Татьяны Новоселовой
--
-- Application Export:
--   Application:     102
--   Name:            Курсовая работа Татьяны Новоселовой
--   Date and Time:   21:41 Sunday May 5, 2024
--   Exported By:     TN
--   Flashback:       0
--   Export Type:     Page Export
--   Manifest
--     PAGE: 14
--   Manifest End
--   Version:         22.2.0
--   Instance ID:     706465323282293
--

begin
null;
end;
/
prompt --application/pages/delete_00014
begin
wwv_flow_imp_page.remove_page (p_flow_id=>wwv_flow.g_flow_id, p_page_id=>14);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_imp_page.create_page(
 p_id=>14
,p_name=>'delete_rabotnik'
,p_alias=>'DELETE-RABOTNIK'
,p_page_mode=>'MODAL'
,p_step_title=>unistr('\0423\0432\043E\043B\0438\0442\044C \0440\0430\0431\043E\0442\043D\0438\043A\0430')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(10044979641799785)
,p_protection_level=>'C'
,p_read_only_when_type=>'ALWAYS'
,p_page_component_map=>'11'
,p_last_updated_by=>'TN'
,p_last_upd_yyyymmddhh24miss=>'20231219214220'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8269824326390634)
,p_button_sequence=>60
,p_button_name=>'Return_p13'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(1817397043719218)
,p_button_image_alt=>unistr('\041E\0431\0440\0430\0442\043D\043E')
,p_button_redirect_url=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:::'
,p_button_css_classes=>'u-color-2'
,p_icon_css_classes=>'fa-arrow-left-alt'
,p_grid_new_row=>'Y'
,p_grid_column_span=>3
,p_grid_column=>1
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(8269761491390633)
,p_button_sequence=>70
,p_button_name=>'Uvolit'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(1817397043719218)
,p_button_image_alt=>unistr('\0423\0432\043E\043B\0438\0442\044C')
,p_button_css_classes=>'u-color-9'
,p_icon_css_classes=>'fa-thumbs-down'
,p_grid_column_attributes=>'  '
,p_grid_new_row=>'N'
,p_grid_column_span=>2
,p_grid_column=>4
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9201678111018946)
,p_button_sequence=>90
,p_button_name=>'DatZadanie'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(1817397043719218)
,p_button_image_alt=>unistr('\0412\044B\0434\0430\0442\044C \0437\0430\0434\0430\043D\0438\0435')
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.::P15_USERNAME:&P14_USERNAME.'
,p_button_css_classes=>'u-color-3'
,p_icon_css_classes=>'fa-cart-edit'
,p_grid_new_row=>'N'
,p_grid_column_span=>2
,p_grid_column=>7
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(9098053851909112)
,p_button_sequence=>100
,p_button_name=>'Display_graphs'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(1817397043719218)
,p_button_image_alt=>unistr('\0413\0440\0430\0444\0438\043A\0438  \0440\0430\0431\043E\0442\043D\0438\043A\0430')
,p_button_redirect_url=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.::P30_USERNAME:&P14_USERNAME.'
,p_button_css_classes=>'u-color-4'
,p_icon_css_classes=>'fa-area-chart'
,p_grid_new_row=>'N'
,p_grid_column_span=>2
,p_grid_column=>10
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8269354637390629)
,p_name=>'P14_SOCIAL_ID'
,p_item_sequence=>10
,p_use_cache_before_default=>'NO'
,p_prompt=>'Social Id'
,p_source=>'SOCIAL_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(1814559934719214)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8269460644390630)
,p_name=>'P14_NAME'
,p_item_sequence=>30
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\0418\043C\044F')
,p_source=>'NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(1814559934719214)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8269582517390631)
,p_name=>'P14_FAMILY'
,p_item_sequence=>20
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\0424\0430\043C\0438\043B\0438\044F')
,p_source=>'FAMILY'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(1814559934719214)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8269628789390632)
,p_name=>'P14_OTCHESTVO'
,p_item_sequence=>40
,p_use_cache_before_default=>'NO'
,p_prompt=>unistr('\041E\0442\0447\0435\0441\0442\0432\043E')
,p_source=>'OTCHESTVO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(1814559934719214)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(8269917963390635)
,p_name=>'P14_USERNAME'
,p_item_sequence=>50
,p_use_cache_before_default=>'NO'
,p_prompt=>'Username'
,p_source=>'USERNAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_imp.id(1814559934719214)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(8270176537390637)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'BEGIN',
' UVOLIT_RABOTNIKA(:P14_USERNAME);',
' END;'))
,p_process_clob_language=>'PLSQL'
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
