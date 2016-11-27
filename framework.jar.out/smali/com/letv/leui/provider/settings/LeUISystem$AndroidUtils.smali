.class public Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;
.super Ljava/lang/Object;
.source "LeUISystem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/provider/settings/LeUISystem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AndroidUtils"
.end annotation


# static fields
.field public static final LEUI_PUBLIC_SETTINGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 720
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    .line 722
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "usage_limit_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 723
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "status_bar_show_battery_percent"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 724
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_exp_program_enabled"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 725
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_settings_upgrade_new_version"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 726
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_usbsettings_never_show_forever"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 727
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_single_hand_unlockscreen"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 728
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_wake_device_behavior"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 729
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_smart_settings_voice_awakens"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 730
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_smart_settings_gesture_up"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 731
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_smart_settings_gesture_down"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 732
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_smart_settings_gesture_left"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 733
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_smart_settings_gesture_right"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 734
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_smart_settings_gesture_double_click"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 735
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_single_hand_dialing"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 736
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_single_hand_talktime"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 737
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "access_statusbar_when_lockscreen"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 738
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_yellow_page_setting"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 739
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_call_auto_record"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 740
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_ringtone_crescendo"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 741
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_super_voice"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 742
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_call_vibrate"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 743
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_install_dialog_always_ask"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 744
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_allow_adb_install"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 745
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "network_provider_package"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 746
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "choose_network_provider_mode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 747
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_eye_verity_settings"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 748
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_notification_pulse_call"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 749
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_notification_pulse_sms"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 750
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_notification_pulse_email"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 751
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_key_position_policy"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 752
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_video_display_enhanced"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 753
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_backstage_power"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 754
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_key_timealign_twilight_enable"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 755
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_ecosystem_settings"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 756
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_use_fingerprint_setup_camera"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 757
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "wallpaperonline_shake"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 758
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "prefer_theme_value"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 759
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_theme_settings_font_typeface_value"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 760
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_use_fingerprint_launch_camera"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 761
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_launch_camera_fingerprint_id"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 762
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_notificaton_visibility_on_keyguard"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 763
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_long_press_home_behaviour_settings"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 764
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_long_press_back_behaviour_settings"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 765
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_long_press_recent_behaviour_settings"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 766
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_wei_xin_double_setting"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 767
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_incallui_record_setting_guide"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 768
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "sms_sound"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 769
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "mail_sound"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 770
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "EXTRA_LEUIRINGTONE_RET_URI_NAME"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 771
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "mutekey_streams_affected"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 772
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_s_mute_key"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 773
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_s_soft_mute_key"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 774
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_hifi_status"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 775
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_microphone_checked"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 776
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_tty_mode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 777
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_buddhist_calendar"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 778
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "vibate_when_in_silent_mode"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 779
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "sync_resource_count"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 780
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_type_c_headset_status"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 781
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_usb_headset_connected_status"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 783
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "show_touches"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 785
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_zenmode_temp_cache"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 786
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "master_syncstatus_isopen"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 787
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "light_touch_pressure_threshold"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 788
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "heavy_touch_pressure_threshold"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 789
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "touch_pressure_switch"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 790
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "holzer_switch"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 791
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "dxCRMxhQkdGePGnp"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 792
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "mqBRboGZkQPcAkyk"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 793
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "ultrare_solution_switch"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 794
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "blue_light_switch"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 795
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "realtime_speed"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 796
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_feature_leim_enable"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 797
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_forbid_virtual_key_settings"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 798
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "calendar_sound"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 799
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "message_deliver_sound"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 800
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_global_vibrate_switch"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 801
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_double_widget_default_city_value"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 802
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "fndDevices"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 803
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_screen_brightness_vr"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 804
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "BG_CONTROL_SWITCH"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 805
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_ringtone_slot2"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 806
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_three_fingers_cap"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 807
    sget-object v0, Lcom/letv/leui/provider/settings/LeUISystem$AndroidUtils;->LEUI_PUBLIC_SETTINGS:Ljava/util/Set;

    const-string v1, "leui_pref_key_spam_msg_block"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 808
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 714
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
