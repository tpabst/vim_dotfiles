" Vim syntax file
" Language: C libnotify extension (for version 0.4.5)
" Maintainer: David Nečas (Yeti) <yeti@physics.muni.cz>
" Last Change: 2009-10-21
" URL: http://physics.muni.cz/~yeti/vim/gtk-syntax.tar.gz
" Generated By: vim-syn-gen.py

syn keyword libnotifyFunction notify_get_app_name notify_get_server_caps notify_get_server_info notify_init notify_is_initted notify_notification_add_action notify_notification_attach_to_status_icon notify_notification_attach_to_widget notify_notification_clear_actions notify_notification_clear_hints notify_notification_close notify_notification_get_closed_reason notify_notification_get_type notify_notification_new notify_notification_new_with_status_icon notify_notification_set_category notify_notification_set_geometry_hints notify_notification_set_hint_byte notify_notification_set_hint_byte_array notify_notification_set_hint_double notify_notification_set_hint_int32 notify_notification_set_hint_string notify_notification_set_hint_uint32 notify_notification_set_icon_from_pixbuf notify_notification_set_timeout notify_notification_set_urgency notify_notification_show notify_notification_update notify_uninit
syn keyword libnotifyConstant NOTIFY_URGENCY_CRITICAL NOTIFY_URGENCY_LOW NOTIFY_URGENCY_NORMAL
syn keyword libnotifyStruct NotifyNotification NotifyNotificationClass NotifyNotificationPrivate
syn keyword libnotifyMacro NOTIFY_ACTION_CALLBACK NOTIFY_IS_NOTIFICATION NOTIFY_IS_NOTIFICATION_CLASS NOTIFY_NOTIFICATION NOTIFY_NOTIFICATION_CLASS NOTIFY_NOTIFICATION_GET_CLASS
syn keyword libnotifyEnum NotifyUrgency
syn keyword libnotifyUserFunction NotifyActionCallback
syn keyword libnotifyDefine NOTIFY_EXPIRES_DEFAULT NOTIFY_EXPIRES_NEVER NOTIFY_TYPE_NOTIFICATION

" Default highlighting
if version >= 508 || !exists("did_libnotify_syntax_inits")
  if version < 508
    let did_libnotify_syntax_inits = 1
    command -nargs=+ HiLink hi link <args>
  else
    command -nargs=+ HiLink hi def link <args>
  endif
  HiLink libnotifyFunction Function
  HiLink libnotifyConstant Constant
  HiLink libnotifyStruct Type
  HiLink libnotifyMacro Macro
  HiLink libnotifyEnum Type
  HiLink libnotifyUserFunction Type
  HiLink libnotifyDefine Constant

  delcommand HiLink
endif

