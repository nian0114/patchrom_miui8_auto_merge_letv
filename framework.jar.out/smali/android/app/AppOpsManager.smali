.class public Landroid/app/AppOpsManager;
.super Ljava/lang/Object;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppOpsManager$PermissionInstallResult;,
        Landroid/app/AppOpsManager$OnOpChangedInternalListener;,
        Landroid/app/AppOpsManager$OnOpChangedListener;,
        Landroid/app/AppOpsManager$OpEntry;,
        Landroid/app/AppOpsManager$PackageOps;
    }
.end annotation


# static fields
.field public static final MODE_ALLOWED:I = 0x0

.field public static final MODE_ASK:I = 0x4

.field public static final MODE_DEFAULT:I = 0x3

.field public static final MODE_DEFAULT_ALLOWED:I = 0x2

.field public static final MODE_ERRORED:I = 0x2

.field public static final MODE_IGNORED:I = 0x1

.field public static final OPSTR_ACTIVATE_VPN:Ljava/lang/String; = "android:activate_vpn"

.field public static final OPSTR_ADD_VOICEMAIL:Ljava/lang/String; = "android:add_voicemail"

.field private static final OPSTR_ALARM_WAKEUP:Ljava/lang/String; = "android:alarm_wakeup"

.field private static final OPSTR_BLUETOOTH_ON_OFF:Ljava/lang/String; = "android:bluetooth_on_off"

.field public static final OPSTR_BODY_SENSORS:Ljava/lang/String; = "android:body_sensors"

.field private static final OPSTR_BOOT_COMPLETED:Ljava/lang/String; = "android:boot_completed"

.field public static final OPSTR_CALL_PHONE:Ljava/lang/String; = "android:call_phone"

.field public static final OPSTR_CAMERA:Ljava/lang/String; = "android:camera"

.field public static final OPSTR_COARSE_LOCATION:Ljava/lang/String; = "android:coarse_location"

.field private static final OPSTR_DATA_CONNECT_ON_OFF:Ljava/lang/String; = "android:data_connect_on_off"

.field public static final OPSTR_FINE_LOCATION:Ljava/lang/String; = "android:fine_location"

.field public static final OPSTR_GET_ACCOUNTS:Ljava/lang/String; = "android:get_accounts"

.field public static final OPSTR_GET_USAGE_STATS:Ljava/lang/String; = "android:get_usage_stats"

.field private static final OPSTR_ICON_MARK:Ljava/lang/String; = "android:icon_mark"

.field public static final OPSTR_MOCK_LOCATION:Ljava/lang/String; = "android:mock_location"

.field public static final OPSTR_MONITOR_HIGH_POWER_LOCATION:Ljava/lang/String; = "android:monitor_location_high_power"

.field public static final OPSTR_MONITOR_LOCATION:Ljava/lang/String; = "android:monitor_location"

.field private static final OPSTR_NFC_ON_OFF:Ljava/lang/String; = "android:nfc_on_off"

.field private static final OPSTR_NOTIFICATION_FAVOURITE:Ljava/lang/String; = "android:notification_favourite"

.field private static final OPSTR_NOTIFICATION_SOUND:Ljava/lang/String; = "android:notification_sound"

.field public static final OPSTR_READ_CALENDAR:Ljava/lang/String; = "android:read_calendar"

.field public static final OPSTR_READ_CALL_LOG:Ljava/lang/String; = "android:read_call_log"

.field public static final OPSTR_READ_CELL_BROADCASTS:Ljava/lang/String; = "android:read_cell_broadcasts"

.field public static final OPSTR_READ_CONTACTS:Ljava/lang/String; = "android:read_contacts"

.field public static final OPSTR_READ_EXTERNAL_STORAGE:Ljava/lang/String; = "android:read_external_storage"

.field private static final OPSTR_READ_MMS:Ljava/lang/String; = "android:read_mms"

.field public static final OPSTR_READ_PHONE_STATE:Ljava/lang/String; = "android:read_phone_state"

.field public static final OPSTR_READ_SMS:Ljava/lang/String; = "android:read_sms"

.field public static final OPSTR_RECEIVE_MMS:Ljava/lang/String; = "android:receive_mms"

.field public static final OPSTR_RECEIVE_SMS:Ljava/lang/String; = "android:receive_sms"

.field public static final OPSTR_RECEIVE_WAP_PUSH:Ljava/lang/String; = "android:receive_wap_push"

.field public static final OPSTR_RECORD_AUDIO:Ljava/lang/String; = "android:record_audio"

.field private static final OPSTR_SEND_MMS:Ljava/lang/String; = "android:send_mms"

.field public static final OPSTR_SEND_SMS:Ljava/lang/String; = "android:send_sms"

.field public static final OPSTR_SYSTEM_ALERT_WINDOW:Ljava/lang/String; = "android:system_alert_window"

.field private static final OPSTR_THREE_WAY_CALLING:Ljava/lang/String; = "android:three_way_calling"

.field private static final OPSTR_TRUST_BG_APP:Ljava/lang/String; = "android:trust_bg_app"

.field public static final OPSTR_USE_FINGERPRINT:Ljava/lang/String; = "android:use_fingerprint"

.field public static final OPSTR_USE_SIP:Ljava/lang/String; = "android:use_sip"

.field private static final OPSTR_WIFI_ON_OFF:Ljava/lang/String; = "android:wifi_on_off"

.field public static final OPSTR_WRITE_CALENDAR:Ljava/lang/String; = "android:write_calendar"

.field public static final OPSTR_WRITE_CALL_LOG:Ljava/lang/String; = "android:write_call_log"

.field public static final OPSTR_WRITE_CONTACTS:Ljava/lang/String; = "android:write_contacts"

.field public static final OPSTR_WRITE_EXTERNAL_STORAGE:Ljava/lang/String; = "android:write_external_storage"

.field private static final OPSTR_WRITE_MMS:Ljava/lang/String; = "android:write_mms"

.field public static final OPSTR_WRITE_SETTINGS:Ljava/lang/String; = "android:write_settings"

.field public static final OP_ACCESS_NOTIFICATIONS:I = 0x19

.field public static final OP_ACTIVATE_VPN:I = 0x2f

.field public static final OP_ADD_VOICEMAIL:I = 0x34

.field public static final OP_ALARM_WAKEUP:I = 0x42

.field public static final OP_ASSIST_SCREENSHOT:I = 0x32

.field public static final OP_ASSIST_STRUCTURE:I = 0x31

.field public static final OP_AUDIO_ALARM_VOLUME:I = 0x25

.field public static final OP_AUDIO_BLUETOOTH_VOLUME:I = 0x27

.field public static final OP_AUDIO_MASTER_VOLUME:I = 0x21

.field public static final OP_AUDIO_MEDIA_VOLUME:I = 0x24

.field public static final OP_AUDIO_NOTIFICATION_VOLUME:I = 0x26

.field public static final OP_AUDIO_RING_VOLUME:I = 0x23

.field public static final OP_AUDIO_VOICE_VOLUME:I = 0x22

.field public static final OP_BLUETOOTH_ON_OFF:I = 0x40

.field public static final OP_BODY_SENSORS:I = 0x38

.field public static final OP_BOOT_COMPLETED:I = 0x46

.field public static final OP_CALL_PHONE:I = 0xd

.field public static final OP_CAMERA:I = 0x1a

.field public static final OP_COARSE_LOCATION:I = 0x0

.field public static final OP_DATA_CONNECT_ON_OFF:I = 0x41

.field public static final OP_FINE_LOCATION:I = 0x1

.field public static final OP_GET_ACCOUNTS:I = 0x3e

.field public static final OP_GET_USAGE_STATS:I = 0x2b

.field public static final OP_GPS:I = 0x2

.field public static final OP_ICON_MARK:I = 0x4b

.field public static final OP_MOCK_LOCATION:I = 0x3a

.field public static final OP_MONITOR_HIGH_POWER_LOCATION:I = 0x2a

.field public static final OP_MONITOR_LOCATION:I = 0x29

.field public static final OP_MUTE_MICROPHONE:I = 0x2c

.field public static final OP_NEIGHBORING_CELLS:I = 0xc

.field public static final OP_NFC_ON_OFF:I = 0x47

.field public static final OP_NONE:I = -0x1

.field public static final OP_NOTIFICATION_FAVOURITE:I = 0x49

.field public static final OP_NOTIFICATION_SOUND:I = 0x48

.field public static final OP_PLAY_AUDIO:I = 0x1c

.field public static final OP_POST_NOTIFICATION:I = 0xb

.field public static final OP_PROCESS_OUTGOING_CALLS:I = 0x36

.field public static final OP_PROJECT_MEDIA:I = 0x2e

.field public static final OP_READ_CALENDAR:I = 0x8

.field public static final OP_READ_CALL_LOG:I = 0x6

.field public static final OP_READ_CELL_BROADCASTS:I = 0x39

.field public static final OP_READ_CLIPBOARD:I = 0x1d

.field public static final OP_READ_CONTACTS:I = 0x4

.field public static final OP_READ_EXTERNAL_STORAGE:I = 0x3b

.field public static final OP_READ_ICC_SMS:I = 0x15

.field public static final OP_READ_MMS:I = 0x44

.field public static final OP_READ_PHONE_STATE:I = 0x33

.field public static final OP_READ_SMS:I = 0xe

.field public static final OP_RECEIVE_EMERGECY_SMS:I = 0x11

.field public static final OP_RECEIVE_MMS:I = 0x12

.field public static final OP_RECEIVE_SMS:I = 0x10

.field public static final OP_RECEIVE_WAP_PUSH:I = 0x13

.field public static final OP_RECORD_AUDIO:I = 0x1b

.field public static final OP_SEND_MMS:I = 0x43

.field public static final OP_SEND_SMS:I = 0x14

.field public static final OP_SYSTEM_ALERT_WINDOW:I = 0x18

.field public static final OP_TAKE_AUDIO_FOCUS:I = 0x20

.field public static final OP_TAKE_MEDIA_BUTTONS:I = 0x1f

.field public static final OP_THREE_WAY_CALLING:I = 0x4a

.field public static final OP_TOAST_WINDOW:I = 0x2d

.field public static final OP_TRUST_BG_APP:I = 0x4c

.field public static final OP_TURN_SCREEN_ON:I = 0x3d

.field public static final OP_USE_FINGERPRINT:I = 0x37

.field public static final OP_USE_SIP:I = 0x35

.field public static final OP_VIBRATE:I = 0x3

.field public static final OP_WAKE_LOCK:I = 0x28

.field public static final OP_WIFI_ON_OFF:I = 0x3f

.field public static final OP_WIFI_SCAN:I = 0xa

.field public static final OP_WRITE_CALENDAR:I = 0x9

.field public static final OP_WRITE_CALL_LOG:I = 0x7

.field public static final OP_WRITE_CLIPBOARD:I = 0x1e

.field public static final OP_WRITE_CONTACTS:I = 0x5

.field public static final OP_WRITE_EXTERNAL_STORAGE:I = 0x3c

.field public static final OP_WRITE_ICC_SMS:I = 0x16

.field public static final OP_WRITE_MMS:I = 0x45

.field public static final OP_WRITE_SETTINGS:I = 0x17

.field public static final OP_WRITE_SMS:I = 0xf

.field public static final OP_WRITE_WALLPAPER:I = 0x30

.field public static final _NUM_OP:I = 0x4d

.field private static sNameToOp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sOpAllowSystemRestrictionBypass:[Z

.field private static sOpDefaultCTAMode:[I

.field private static sOpDefaultMode:[I

.field private static sOpDefaultStrictMode:[I

.field private static sOpDisableReset:[Z

.field public static sOpNames:[Ljava/lang/String;

.field private static sOpPerms:[Ljava/lang/String;

.field private static sOpRestrictions:[Ljava/lang/String;

.field private static sOpStrToOp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sOpStrictMode:[Z

.field private static sOpToString:[Ljava/lang/String;

.field private static sOpToSwitch:[I

.field private static sPermToOp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static sToken:Landroid/os/IBinder;


# instance fields
.field final mContext:Landroid/content/Context;

.field final mModeWatchers:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/app/AppOpsManager$OnOpChangedListener;",
            "Lcom/android/internal/app/IAppOpsCallback;",
            ">;"
        }
    .end annotation
.end field

.field final mService:Lcom/android/internal/app/IAppOpsService;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x4d

    const/4 v4, 0x0

    .line 420
    new-array v1, v5, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    .line 506
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "android:coarse_location"

    aput-object v2, v1, v6

    const-string v2, "android:fine_location"

    aput-object v2, v1, v7

    aput-object v4, v1, v8

    const/4 v2, 0x3

    aput-object v4, v1, v2

    const/4 v2, 0x4

    const-string v3, "android:read_contacts"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "android:write_contacts"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "android:read_call_log"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "android:write_call_log"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "android:read_calendar"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "android:write_calendar"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    aput-object v4, v1, v2

    const/16 v2, 0xb

    aput-object v4, v1, v2

    const/16 v2, 0xc

    aput-object v4, v1, v2

    const/16 v2, 0xd

    const-string v3, "android:call_phone"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "android:read_sms"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    aput-object v4, v1, v2

    const/16 v2, 0x10

    const-string v3, "android:receive_sms"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    aput-object v4, v1, v2

    const/16 v2, 0x12

    const-string v3, "android:receive_mms"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "android:receive_wap_push"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "android:send_sms"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    aput-object v4, v1, v2

    const/16 v2, 0x16

    aput-object v4, v1, v2

    const/16 v2, 0x17

    const-string v3, "android:write_settings"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "android:system_alert_window"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    aput-object v4, v1, v2

    const/16 v2, 0x1a

    const-string v3, "android:camera"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "android:record_audio"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    aput-object v4, v1, v2

    const/16 v2, 0x1d

    aput-object v4, v1, v2

    const/16 v2, 0x1e

    aput-object v4, v1, v2

    const/16 v2, 0x1f

    aput-object v4, v1, v2

    const/16 v2, 0x20

    aput-object v4, v1, v2

    const/16 v2, 0x21

    aput-object v4, v1, v2

    const/16 v2, 0x22

    aput-object v4, v1, v2

    const/16 v2, 0x23

    aput-object v4, v1, v2

    const/16 v2, 0x24

    aput-object v4, v1, v2

    const/16 v2, 0x25

    aput-object v4, v1, v2

    const/16 v2, 0x26

    aput-object v4, v1, v2

    const/16 v2, 0x27

    aput-object v4, v1, v2

    const/16 v2, 0x28

    aput-object v4, v1, v2

    const/16 v2, 0x29

    const-string v3, "android:monitor_location"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "android:monitor_location_high_power"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "android:get_usage_stats"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    aput-object v4, v1, v2

    const/16 v2, 0x2d

    aput-object v4, v1, v2

    const/16 v2, 0x2e

    aput-object v4, v1, v2

    const/16 v2, 0x2f

    const-string v3, "android:activate_vpn"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    aput-object v4, v1, v2

    const/16 v2, 0x31

    aput-object v4, v1, v2

    const/16 v2, 0x32

    aput-object v4, v1, v2

    const/16 v2, 0x33

    const-string v3, "android:read_phone_state"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "android:add_voicemail"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "android:use_sip"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    aput-object v4, v1, v2

    const/16 v2, 0x37

    const-string v3, "android:use_fingerprint"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "android:body_sensors"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "android:read_cell_broadcasts"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-string v3, "android:mock_location"

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    const-string v3, "android:read_external_storage"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string v3, "android:write_external_storage"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    aput-object v4, v1, v2

    const/16 v2, 0x3e

    const-string v3, "android:get_accounts"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-string v3, "android:wifi_on_off"

    aput-object v3, v1, v2

    const/16 v2, 0x40

    const-string v3, "android:bluetooth_on_off"

    aput-object v3, v1, v2

    const/16 v2, 0x41

    const-string v3, "android:data_connect_on_off"

    aput-object v3, v1, v2

    const/16 v2, 0x42

    const-string v3, "android:alarm_wakeup"

    aput-object v3, v1, v2

    const/16 v2, 0x43

    const-string v3, "android:send_mms"

    aput-object v3, v1, v2

    const/16 v2, 0x44

    const-string v3, "android:read_mms"

    aput-object v3, v1, v2

    const/16 v2, 0x45

    const-string v3, "android:write_mms"

    aput-object v3, v1, v2

    const/16 v2, 0x46

    const-string v3, "android:boot_completed"

    aput-object v3, v1, v2

    const/16 v2, 0x47

    const-string v3, "android:nfc_on_off"

    aput-object v3, v1, v2

    const/16 v2, 0x48

    const-string v3, "android:notification_sound"

    aput-object v3, v1, v2

    const/16 v2, 0x49

    const-string v3, "android:notification_favourite"

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    const-string v3, "android:three_way_calling"

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    const-string v3, "android:icon_mark"

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    const-string v3, "android:trust_bg_app"

    aput-object v3, v1, v2

    sput-object v1, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    .line 592
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "COARSE_LOCATION"

    aput-object v2, v1, v6

    const-string v2, "FINE_LOCATION"

    aput-object v2, v1, v7

    const-string v2, "GPS"

    aput-object v2, v1, v8

    const/4 v2, 0x3

    const-string v3, "VIBRATE"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "READ_CONTACTS"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "WRITE_CONTACTS"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "READ_CALL_LOG"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "WRITE_CALL_LOG"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "READ_CALENDAR"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "WRITE_CALENDAR"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "WIFI_SCAN"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "POST_NOTIFICATION"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "NEIGHBORING_CELLS"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "CALL_PHONE"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "READ_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "WRITE_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "RECEIVE_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "RECEIVE_EMERGECY_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "RECEIVE_MMS"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "RECEIVE_WAP_PUSH"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "SEND_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "READ_ICC_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "WRITE_ICC_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "WRITE_SETTINGS"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "SYSTEM_ALERT_WINDOW"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "ACCESS_NOTIFICATIONS"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "CAMERA"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "RECORD_AUDIO"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    const-string v3, "PLAY_AUDIO"

    aput-object v3, v1, v2

    const/16 v2, 0x1d

    const-string v3, "READ_CLIPBOARD"

    aput-object v3, v1, v2

    const/16 v2, 0x1e

    const-string v3, "WRITE_CLIPBOARD"

    aput-object v3, v1, v2

    const/16 v2, 0x1f

    const-string v3, "TAKE_MEDIA_BUTTONS"

    aput-object v3, v1, v2

    const/16 v2, 0x20

    const-string v3, "TAKE_AUDIO_FOCUS"

    aput-object v3, v1, v2

    const/16 v2, 0x21

    const-string v3, "AUDIO_MASTER_VOLUME"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string v3, "AUDIO_VOICE_VOLUME"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string v3, "AUDIO_RING_VOLUME"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string v3, "AUDIO_MEDIA_VOLUME"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string v3, "AUDIO_ALARM_VOLUME"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string v3, "AUDIO_NOTIFICATION_VOLUME"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string v3, "AUDIO_BLUETOOTH_VOLUME"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    const-string v3, "WAKE_LOCK"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    const-string v3, "MONITOR_LOCATION"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string v3, "MONITOR_HIGH_POWER_LOCATION"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    const-string v3, "GET_USAGE_STATS"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    const-string v3, "MUTE_MICROPHONE"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string v3, "TOAST_WINDOW"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    const-string v3, "PROJECT_MEDIA"

    aput-object v3, v1, v2

    const/16 v2, 0x2f

    const-string v3, "ACTIVATE_VPN"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string v3, "WRITE_WALLPAPER"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    const-string v3, "ASSIST_STRUCTURE"

    aput-object v3, v1, v2

    const/16 v2, 0x32

    const-string v3, "ASSIST_SCREENSHOT"

    aput-object v3, v1, v2

    const/16 v2, 0x33

    const-string v3, "OP_READ_PHONE_STATE"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "ADD_VOICEMAIL"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "USE_SIP"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "PROCESS_OUTGOING_CALLS"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "USE_FINGERPRINT"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "BODY_SENSORS"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "READ_CELL_BROADCASTS"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    const-string v3, "MOCK_LOCATION"

    aput-object v3, v1, v2

    const/16 v2, 0x3b

    const-string v3, "READ_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string v3, "WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    const-string v3, "TURN_ON_SCREEN"

    aput-object v3, v1, v2

    const/16 v2, 0x3e

    const-string v3, "GET_ACCOUNTS"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-string v3, "WIFI_CHANGE"

    aput-object v3, v1, v2

    const/16 v2, 0x40

    const-string v3, "BLUETOOTH_CHANGE"

    aput-object v3, v1, v2

    const/16 v2, 0x41

    const-string v3, "DATA_CONNECT_CHANGE"

    aput-object v3, v1, v2

    const/16 v2, 0x42

    const-string v3, "ALARM_WAKEUP"

    aput-object v3, v1, v2

    const/16 v2, 0x43

    const-string v3, "SEND_MMS"

    aput-object v3, v1, v2

    const/16 v2, 0x44

    const-string v3, "READ_MMS"

    aput-object v3, v1, v2

    const/16 v2, 0x45

    const-string v3, "WRITE_MMS"

    aput-object v3, v1, v2

    const/16 v2, 0x46

    const-string v3, "BOOT_COMPLETED"

    aput-object v3, v1, v2

    const/16 v2, 0x47

    const-string v3, "NFC"

    aput-object v3, v1, v2

    const/16 v2, 0x48

    const-string v3, "NOTIFICATION_SOUND"

    aput-object v3, v1, v2

    const/16 v2, 0x49

    const-string v3, "NOTIFICATION FAVOURITE"

    aput-object v3, v1, v2

    const/16 v2, 0x4a

    const-string v3, "THREE-WAY CALLING"

    aput-object v3, v1, v2

    const/16 v2, 0x4b

    const-string v3, "ICON_MARK"

    aput-object v3, v1, v2

    const/16 v2, 0x4c

    const-string v3, "TRUST_BG_APP"

    aput-object v3, v1, v2

    sput-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    .line 678
    new-array v1, v5, [Ljava/lang/String;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v2, v1, v6

    const-string v2, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v2, v1, v7

    aput-object v4, v1, v8

    const/4 v2, 0x3

    const-string v3, "android.permission.VIBRATE"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "android.permission.READ_CONTACTS"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "android.permission.WRITE_CONTACTS"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "android.permission.READ_CALL_LOG"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "android.permission.WRITE_CALL_LOG"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "android.permission.READ_CALENDAR"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "android.permission.WRITE_CALENDAR"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "android.permission.ACCESS_WIFI_STATE"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    aput-object v4, v1, v2

    const/16 v2, 0xc

    aput-object v4, v1, v2

    const/16 v2, 0xd

    const-string v3, "android.permission.CALL_PHONE"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "android.permission.READ_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    aput-object v4, v1, v2

    const/16 v2, 0x10

    const-string v3, "android.permission.RECEIVE_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "android.permission.RECEIVE_MMS"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "android.permission.RECEIVE_WAP_PUSH"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "android.permission.SEND_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "android.permission.READ_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    aput-object v4, v1, v2

    const/16 v2, 0x17

    const-string v3, "android.permission.WRITE_SETTINGS"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "android.permission.SYSTEM_ALERT_WINDOW"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "android.permission.ACCESS_NOTIFICATIONS"

    aput-object v3, v1, v2

    const/16 v2, 0x1a

    const-string v3, "android.permission.CAMERA"

    aput-object v3, v1, v2

    const/16 v2, 0x1b

    const-string v3, "android.permission.RECORD_AUDIO"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    aput-object v4, v1, v2

    const/16 v2, 0x1d

    aput-object v4, v1, v2

    const/16 v2, 0x1e

    aput-object v4, v1, v2

    const/16 v2, 0x1f

    aput-object v4, v1, v2

    const/16 v2, 0x20

    aput-object v4, v1, v2

    const/16 v2, 0x21

    aput-object v4, v1, v2

    const/16 v2, 0x22

    aput-object v4, v1, v2

    const/16 v2, 0x23

    aput-object v4, v1, v2

    const/16 v2, 0x24

    aput-object v4, v1, v2

    const/16 v2, 0x25

    aput-object v4, v1, v2

    const/16 v2, 0x26

    aput-object v4, v1, v2

    const/16 v2, 0x27

    aput-object v4, v1, v2

    const/16 v2, 0x28

    const-string v3, "android.permission.WAKE_LOCK"

    aput-object v3, v1, v2

    const/16 v2, 0x29

    aput-object v4, v1, v2

    const/16 v2, 0x2a

    aput-object v4, v1, v2

    const/16 v2, 0x2b

    const-string v3, "android.permission.PACKAGE_USAGE_STATS"

    aput-object v3, v1, v2

    const/16 v2, 0x2c

    aput-object v4, v1, v2

    const/16 v2, 0x2d

    aput-object v4, v1, v2

    const/16 v2, 0x2e

    aput-object v4, v1, v2

    const/16 v2, 0x2f

    aput-object v4, v1, v2

    const/16 v2, 0x30

    aput-object v4, v1, v2

    const/16 v2, 0x31

    aput-object v4, v1, v2

    const/16 v2, 0x32

    aput-object v4, v1, v2

    const/16 v2, 0x33

    const-string v3, "android.permission.READ_PHONE_STATE"

    aput-object v3, v1, v2

    const/16 v2, 0x34

    const-string v3, "com.android.voicemail.permission.ADD_VOICEMAIL"

    aput-object v3, v1, v2

    const/16 v2, 0x35

    const-string v3, "android.permission.USE_SIP"

    aput-object v3, v1, v2

    const/16 v2, 0x36

    const-string v3, "android.permission.PROCESS_OUTGOING_CALLS"

    aput-object v3, v1, v2

    const/16 v2, 0x37

    const-string v3, "android.permission.USE_FINGERPRINT"

    aput-object v3, v1, v2

    const/16 v2, 0x38

    const-string v3, "android.permission.BODY_SENSORS"

    aput-object v3, v1, v2

    const/16 v2, 0x39

    const-string v3, "android.permission.READ_CELL_BROADCASTS"

    aput-object v3, v1, v2

    const/16 v2, 0x3a

    aput-object v4, v1, v2

    const/16 v2, 0x3b

    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    const/16 v2, 0x3c

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    const/16 v2, 0x3d

    aput-object v4, v1, v2

    const/16 v2, 0x3e

    const-string v3, "android.permission.GET_ACCOUNTS"

    aput-object v3, v1, v2

    const/16 v2, 0x3f

    const-string v3, "android.permission.CHANGE_WIFI_STATE"

    aput-object v3, v1, v2

    const/16 v2, 0x40

    const-string v3, "android.permission.BLUETOOTH"

    aput-object v3, v1, v2

    const/16 v2, 0x41

    const-string v3, "android.permission.CHANGE_NETWORK_STATE"

    aput-object v3, v1, v2

    const/16 v2, 0x42

    aput-object v4, v1, v2

    const/16 v2, 0x43

    const-string v3, "android.permission.SEND_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x44

    const-string v3, "android.permission.READ_SMS"

    aput-object v3, v1, v2

    const/16 v2, 0x45

    aput-object v4, v1, v2

    const/16 v2, 0x46

    const-string v3, "android.permission.RECEIVE_BOOT_COMPLETED"

    aput-object v3, v1, v2

    const/16 v2, 0x47

    const-string v3, "android.permission.NFC"

    aput-object v3, v1, v2

    const/16 v2, 0x48

    aput-object v4, v1, v2

    const/16 v2, 0x49

    aput-object v4, v1, v2

    const/16 v2, 0x4a

    aput-object v4, v1, v2

    const/16 v2, 0x4b

    aput-object v4, v1, v2

    const/16 v2, 0x4c

    aput-object v4, v1, v2

    sput-object v1, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    .line 765
    new-array v1, v5, [Ljava/lang/String;

    const-string/jumbo v2, "no_share_location"

    aput-object v2, v1, v6

    const-string/jumbo v2, "no_share_location"

    aput-object v2, v1, v7

    const-string/jumbo v2, "no_share_location"

    aput-object v2, v1, v8

    const/4 v2, 0x3

    aput-object v4, v1, v2

    const/4 v2, 0x4

    aput-object v4, v1, v2

    const/4 v2, 0x5

    aput-object v4, v1, v2

    const/4 v2, 0x6

    const-string/jumbo v3, "no_outgoing_calls"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string/jumbo v3, "no_outgoing_calls"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    aput-object v4, v1, v2

    const/16 v2, 0x9

    aput-object v4, v1, v2

    const/16 v2, 0xa

    const-string/jumbo v3, "no_share_location"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    aput-object v4, v1, v2

    const/16 v2, 0xc

    aput-object v4, v1, v2

    const/16 v2, 0xd

    aput-object v4, v1, v2

    const/16 v2, 0xe

    const-string/jumbo v3, "no_sms"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string/jumbo v3, "no_sms"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string/jumbo v3, "no_sms"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    aput-object v4, v1, v2

    const/16 v2, 0x12

    const-string/jumbo v3, "no_sms"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    aput-object v4, v1, v2

    const/16 v2, 0x14

    const-string/jumbo v3, "no_sms"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string/jumbo v3, "no_sms"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string/jumbo v3, "no_sms"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    aput-object v4, v1, v2

    const/16 v2, 0x18

    const-string/jumbo v3, "no_create_windows"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    aput-object v4, v1, v2

    const/16 v2, 0x1a

    aput-object v4, v1, v2

    const/16 v2, 0x1b

    const-string/jumbo v3, "no_record_audio"

    aput-object v3, v1, v2

    const/16 v2, 0x1c

    aput-object v4, v1, v2

    const/16 v2, 0x1d

    aput-object v4, v1, v2

    const/16 v2, 0x1e

    aput-object v4, v1, v2

    const/16 v2, 0x1f

    aput-object v4, v1, v2

    const/16 v2, 0x20

    aput-object v4, v1, v2

    const/16 v2, 0x21

    const-string/jumbo v3, "no_adjust_volume"

    aput-object v3, v1, v2

    const/16 v2, 0x22

    const-string/jumbo v3, "no_adjust_volume"

    aput-object v3, v1, v2

    const/16 v2, 0x23

    const-string/jumbo v3, "no_adjust_volume"

    aput-object v3, v1, v2

    const/16 v2, 0x24

    const-string/jumbo v3, "no_adjust_volume"

    aput-object v3, v1, v2

    const/16 v2, 0x25

    const-string/jumbo v3, "no_adjust_volume"

    aput-object v3, v1, v2

    const/16 v2, 0x26

    const-string/jumbo v3, "no_adjust_volume"

    aput-object v3, v1, v2

    const/16 v2, 0x27

    const-string/jumbo v3, "no_adjust_volume"

    aput-object v3, v1, v2

    const/16 v2, 0x28

    aput-object v4, v1, v2

    const/16 v2, 0x29

    const-string/jumbo v3, "no_share_location"

    aput-object v3, v1, v2

    const/16 v2, 0x2a

    const-string/jumbo v3, "no_share_location"

    aput-object v3, v1, v2

    const/16 v2, 0x2b

    aput-object v4, v1, v2

    const/16 v2, 0x2c

    const-string/jumbo v3, "no_unmute_microphone"

    aput-object v3, v1, v2

    const/16 v2, 0x2d

    const-string/jumbo v3, "no_create_windows"

    aput-object v3, v1, v2

    const/16 v2, 0x2e

    aput-object v4, v1, v2

    const/16 v2, 0x2f

    const-string/jumbo v3, "no_config_vpn"

    aput-object v3, v1, v2

    const/16 v2, 0x30

    const-string/jumbo v3, "no_wallpaper"

    aput-object v3, v1, v2

    const/16 v2, 0x31

    aput-object v4, v1, v2

    const/16 v2, 0x32

    aput-object v4, v1, v2

    const/16 v2, 0x33

    aput-object v4, v1, v2

    const/16 v2, 0x34

    aput-object v4, v1, v2

    const/16 v2, 0x35

    aput-object v4, v1, v2

    const/16 v2, 0x36

    aput-object v4, v1, v2

    const/16 v2, 0x37

    aput-object v4, v1, v2

    const/16 v2, 0x38

    aput-object v4, v1, v2

    const/16 v2, 0x39

    aput-object v4, v1, v2

    const/16 v2, 0x3a

    aput-object v4, v1, v2

    const/16 v2, 0x3b

    aput-object v4, v1, v2

    const/16 v2, 0x3c

    aput-object v4, v1, v2

    const/16 v2, 0x3d

    aput-object v4, v1, v2

    const/16 v2, 0x3e

    aput-object v4, v1, v2

    const/16 v2, 0x3f

    aput-object v4, v1, v2

    const/16 v2, 0x40

    aput-object v4, v1, v2

    const/16 v2, 0x41

    aput-object v4, v1, v2

    const/16 v2, 0x42

    aput-object v4, v1, v2

    const/16 v2, 0x43

    aput-object v4, v1, v2

    const/16 v2, 0x44

    aput-object v4, v1, v2

    const/16 v2, 0x45

    aput-object v4, v1, v2

    const/16 v2, 0x46

    aput-object v4, v1, v2

    const/16 v2, 0x47

    aput-object v4, v1, v2

    const/16 v2, 0x48

    aput-object v4, v1, v2

    const/16 v2, 0x49

    aput-object v4, v1, v2

    const/16 v2, 0x4a

    aput-object v4, v1, v2

    const/16 v2, 0x4b

    aput-object v4, v1, v2

    const/16 v2, 0x4c

    aput-object v4, v1, v2

    sput-object v1, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    .line 851
    new-array v1, v5, [Z

    fill-array-data v1, :array_1

    sput-object v1, Landroid/app/AppOpsManager;->sOpAllowSystemRestrictionBypass:[Z

    .line 936
    new-array v1, v5, [I

    fill-array-data v1, :array_2

    sput-object v1, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    .line 1021
    new-array v1, v5, [I

    fill-array-data v1, :array_3

    sput-object v1, Landroid/app/AppOpsManager;->sOpDefaultStrictMode:[I

    .line 1105
    new-array v1, v5, [I

    fill-array-data v1, :array_4

    sput-object v1, Landroid/app/AppOpsManager;->sOpDefaultCTAMode:[I

    .line 1187
    new-array v1, v5, [Z

    fill-array-data v1, :array_5

    sput-object v1, Landroid/app/AppOpsManager;->sOpStrictMode:[Z

    .line 1276
    new-array v1, v5, [Z

    fill-array-data v1, :array_6

    sput-object v1, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    .line 1361
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    .line 1364
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/app/AppOpsManager;->sNameToOp:Ljava/util/HashMap;

    .line 1370
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    .line 1373
    sget-object v1, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    array-length v1, v1

    if-eq v1, v5, :cond_0

    .line 1374
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpToSwitch length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1377
    :cond_0
    sget-object v1, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    array-length v1, v1

    if-eq v1, v5, :cond_1

    .line 1378
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpToString length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1381
    :cond_1
    sget-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v1, v1

    if-eq v1, v5, :cond_2

    .line 1382
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpNames length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1385
    :cond_2
    sget-object v1, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    array-length v1, v1

    if-eq v1, v5, :cond_3

    .line 1386
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpPerms length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1389
    :cond_3
    sget-object v1, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    array-length v1, v1

    if-eq v1, v5, :cond_4

    .line 1390
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpDefaultMode length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1394
    :cond_4
    sget-object v1, Landroid/app/AppOpsManager;->sOpDefaultStrictMode:[I

    array-length v1, v1

    if-eq v1, v5, :cond_5

    .line 1395
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpDefaultStrictMode length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpDefaultStrictMode:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1398
    :cond_5
    sget-object v1, Landroid/app/AppOpsManager;->sOpStrictMode:[Z

    array-length v1, v1

    if-eq v1, v5, :cond_6

    .line 1399
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpStrictMode length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpStrictMode:[Z

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1403
    :cond_6
    sget-object v1, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    array-length v1, v1

    if-eq v1, v5, :cond_7

    .line 1404
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpDisableReset length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1407
    :cond_7
    sget-object v1, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    array-length v1, v1

    if-eq v1, v5, :cond_8

    .line 1408
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpRestrictions length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1411
    :cond_8
    sget-object v1, Landroid/app/AppOpsManager;->sOpAllowSystemRestrictionBypass:[Z

    array-length v1, v1

    if-eq v1, v5, :cond_9

    .line 1412
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sOpAllowSYstemRestrictionsBypass length "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1415
    :cond_9
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_b

    .line 1416
    sget-object v1, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_a

    .line 1417
    sget-object v1, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    sget-object v2, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1415
    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1420
    :cond_b
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v5, :cond_d

    .line 1421
    sget-object v1, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_c

    .line 1422
    sget-object v1, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    sget-object v2, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1420
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1425
    :cond_d
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v5, :cond_e

    .line 1426
    sget-object v1, Landroid/app/AppOpsManager;->sNameToOp:Ljava/util/HashMap;

    sget-object v2, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1425
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1428
    :cond_e
    return-void

    .line 420
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x0
        0xb
        0x0
        0xd
        0xe
        0xf
        0x10
        0x10
        0x10
        0x10
        0x14
        0xe
        0xf
        0x17
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0x27
        0x28
        0x0
        0x0
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x40
        0x41
        0x42
        0x43
        0x44
        0x45
        0x46
        0x47
        0x48
        0x49
        0x4a
        0x4b
        0x4c
    .end array-data

    .line 851
    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 936
    nop

    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x3
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x0
        0x0
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
    .end array-data

    .line 1021
    :array_3
    .array-data 4
        0x4
        0x0
        0x0
        0x0
        0x4
        0x4
        0x4
        0x4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4
        0x4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x4
        0x0
        0x0
        0x3
        0x0
        0x0
        0x4
        0x4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3
        0x0
        0x0
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
        0x0
        0x0
        0x0
        0x4
        0x4
        0x4
        0x0
        0x4
        0x4
        0x4
        0x1
        0x4
        0x0
        0x1
        0x0
        0x0
        0x1
    .end array-data

    .line 1105
    :array_4
    .array-data 4
        0x4
        0x4
        0x4
        0x0
        0x4
        0x4
        0x4
        0x4
        0x0
        0x0
        0x4
        0x0
        0x4
        0x4
        0x4
        0x1
        0x0
        0x0
        0x0
        0x0
        0x4
        0x0
        0x0
        0x3
        0x0
        0x0
        0x4
        0x4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x4
        0x4
        0x3
        0x0
        0x0
        0x1
        0x1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x0
        0x0
        0x0
        0x0
        0x4
        0x4
        0x4
        0x0
        0x4
        0x4
        0x4
        0x1
        0x4
        0x0
        0x1
        0x0
        0x0
        0x1
    .end array-data

    .line 1187
    :array_5
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
    .end array-data

    .line 1276
    nop

    :array_6
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/app/IAppOpsService;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Lcom/android/internal/app/IAppOpsService;

    .prologue
    .line 1693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    .line 1694
    iput-object p1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    .line 1695
    iput-object p2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    .line 1696
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    return-object v0
.end method

.method private buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1854
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not allowed to perform "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPackageName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pId"    # I

    .prologue
    .line 2322
    if-nez p0, :cond_1

    .line 2323
    const-string v3, ""

    .line 2347
    :cond_0
    :goto_0
    return-object v3

    .line 2325
    :cond_1
    const-string v3, ""

    .line 2326
    .local v3, "processName":Ljava/lang/String;
    const-string v6, "activity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2328
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 2329
    .local v4, "processesList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_3

    .line 2330
    :cond_2
    const-string v3, ""

    goto :goto_0

    .line 2332
    :cond_3
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_0

    .line 2334
    :try_start_0
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 2336
    .local v2, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, p1, :cond_4

    .line 2337
    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 2338
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 2339
    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 2340
    .local v5, "strings":[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v3, v5, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2344
    .end local v2    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v5    # "strings":[Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 2332
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public static getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;
    .locals 2
    .param p0, "service"    # Lcom/android/internal/app/IAppOpsService;

    .prologue
    .line 2165
    const-class v1, Landroid/app/AppOpsManager;

    monitor-enter v1

    .line 2166
    :try_start_0
    sget-object v0, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    .line 2167
    sget-object v0, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2174
    :goto_0
    return-object v0

    .line 2170
    :cond_0
    :try_start_1
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    invoke-interface {p0, v0}, Lcom/android/internal/app/IAppOpsService;->getToken(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v0

    sput-object v0, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2174
    :goto_1
    :try_start_2
    sget-object v0, Landroid/app/AppOpsManager;->sToken:Landroid/os/IBinder;

    monitor-exit v1

    goto :goto_0

    .line 2175
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 2171
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private static insert([II)[I
    .locals 4
    .param p0, "arr"    # [I
    .param p1, "str"    # I

    .prologue
    const/4 v3, 0x0

    .line 2675
    array-length v0, p0

    .line 2676
    .local v0, "size":I
    add-int/lit8 v2, v0, 0x1

    new-array v1, v2, [I

    .line 2677
    .local v1, "tmp":[I
    invoke-static {p0, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 2678
    aput p1, v1, v0

    .line 2679
    return-object v1
.end method

.method private static insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p0, "arr"    # [Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 2666
    array-length v0, p0

    .line 2667
    .local v0, "size":I
    add-int/lit8 v2, v0, 0x1

    new-array v1, v2, [Ljava/lang/String;

    .line 2668
    .local v1, "tmp":[Ljava/lang/String;
    invoke-static {p0, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2669
    aput-object p1, v1, v0

    .line 2670
    return-object v1
.end method

.method public static isStrictEnable()Z
    .locals 2

    .prologue
    .line 2247
    const-string/jumbo v0, "persist.sys.strict_op_enable"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isStrictOp(I)Z
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 2255
    sget-object v0, Landroid/app/AppOpsManager;->sOpStrictMode:[Z

    aget-boolean v0, v0, p0

    return v0
.end method

.method public static opAllowSystemBypassRestriction(I)Z
    .locals 1
    .param p0, "op"    # I

    .prologue
    .line 1490
    sget-object v0, Landroid/app/AppOpsManager;->sOpAllowSystemRestrictionBypass:[Z

    aget-boolean v0, v0, p0

    return v0
.end method

.method public static opAllowsReset(I)Z
    .locals 1
    .param p0, "op"    # I

    .prologue
    .line 1517
    sget-object v0, Landroid/app/AppOpsManager;->sOpDisableReset:[Z

    aget-boolean v0, v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static opToDefaultMode(I)I
    .locals 1
    .param p0, "op"    # I

    .prologue
    .line 2695
    sget-object v0, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    aget v0, v0, p0

    return v0
.end method

.method public static opToDefaultMode(IZ)I
    .locals 1
    .param p0, "op"    # I
    .param p1, "isStrict"    # Z

    .prologue
    .line 1498
    if-eqz p1, :cond_0

    .line 1499
    sget-object v0, Landroid/app/AppOpsManager;->sOpDefaultStrictMode:[I

    aget v0, v0, p0

    .line 1500
    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    aget v0, v0, p0

    goto :goto_0
.end method

.method public static opToDefaultMode(IZZ)I
    .locals 1
    .param p0, "op"    # I
    .param p1, "isStrict"    # Z
    .param p2, "isCTA"    # Z

    .prologue
    .line 1507
    if-eqz p2, :cond_0

    .line 1508
    sget-object v0, Landroid/app/AppOpsManager;->sOpDefaultCTAMode:[I

    aget v0, v0, p0

    .line 1509
    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/app/AppOpsManager;->sOpDefaultMode:[I

    aget v0, v0, p0

    goto :goto_0
.end method

.method public static opToName(I)Ljava/lang/String;
    .locals 2
    .param p0, "op"    # I

    .prologue
    .line 1443
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const-string v0, "NONE"

    .line 1444
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v0, v0

    if-ge p0, v0, :cond_1

    sget-object v0, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static opToPermission(I)Ljava/lang/String;
    .locals 1
    .param p0, "op"    # I

    .prologue
    .line 1464
    sget-object v0, Landroid/app/AppOpsManager;->sOpPerms:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static opToRestriction(I)Ljava/lang/String;
    .locals 1
    .param p0, "op"    # I

    .prologue
    .line 1472
    sget-object v0, Landroid/app/AppOpsManager;->sOpRestrictions:[Ljava/lang/String;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static opToSwitch(I)I
    .locals 1
    .param p0, "op"    # I

    .prologue
    .line 1435
    sget-object v0, Landroid/app/AppOpsManager;->sOpToSwitch:[I

    aget v0, v0, p0

    return v0
.end method

.method public static permissionToOp(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    .line 1789
    sget-object v1, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1790
    .local v0, "opCode":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1791
    const/4 v1, 0x0

    .line 1793
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Landroid/app/AppOpsManager;->sOpToString:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    goto :goto_0
.end method

.method public static permissionToOpCode(Ljava/lang/String;)I
    .locals 2
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    .line 1480
    sget-object v1, Landroid/app/AppOpsManager;->sPermToOp:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1481
    .local v0, "boxedOpCode":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public static strDebugOpToOp(Ljava/lang/String;)I
    .locals 4
    .param p0, "op"    # Ljava/lang/String;

    .prologue
    .line 1451
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1452
    sget-object v1, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1453
    return v0

    .line 1451
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1456
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown operation string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static strOpToOp(Ljava/lang/String;)I
    .locals 4
    .param p0, "op"    # Ljava/lang/String;

    .prologue
    .line 1861
    sget-object v1, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1862
    .local v0, "val":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 1863
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown operation string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1865
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static stringOpToOp(Ljava/lang/String;)I
    .locals 2
    .param p0, "op"    # Ljava/lang/String;

    .prologue
    .line 2272
    sget-object v1, Landroid/app/AppOpsManager;->sOpStrToOp:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 2273
    .local v0, "val":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 2274
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 2276
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public static stringToMode(Ljava/lang/String;)I
    .locals 1
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    .line 2260
    const-string v0, "allowed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2261
    const/4 v0, 0x0

    .line 2267
    :goto_0
    return v0

    .line 2262
    :cond_0
    const-string/jumbo v0, "ignored"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2263
    const/4 v0, 0x1

    goto :goto_0

    .line 2264
    :cond_1
    const-string v0, "ask"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2265
    const/4 v0, 0x4

    goto :goto_0

    .line 2267
    :cond_2
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method public checkAudioOp(IIILjava/lang/String;)I
    .locals 3
    .param p1, "op"    # I
    .param p2, "stream"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2052
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I

    move-result v0

    .line 2053
    .local v0, "mode":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2054
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p3, p4}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2057
    .end local v0    # "mode":I
    :catch_0
    move-exception v1

    .line 2059
    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public checkAudioOpNoThrow(IIILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # I
    .param p2, "stream"    # I
    .param p3, "uid"    # I
    .param p4, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2069
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->checkAudioOperation(IIILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2072
    :goto_0
    return v0

    .line 2070
    :catch_0
    move-exception v0

    .line 2072
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public checkOp(IILjava/lang/String;)I
    .locals 3
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2006
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    .line 2007
    .local v0, "mode":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2008
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2011
    .end local v0    # "mode":I
    :catch_0
    move-exception v1

    .line 2013
    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public checkOp(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1885
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkOpNoThrow(IILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2023
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2026
    :goto_0
    return v0

    .line 2024
    :catch_0
    move-exception v0

    .line 2026
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1893
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkPackage(ILjava/lang/String;)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2037
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/app/IAppOpsService;->checkPackage(ILjava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 2038
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not belong to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2041
    :catch_0
    move-exception v0

    .line 2042
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Unable to verify package ownership"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 2044
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-void
.end method

.method public finishOp(I)V
    .locals 2
    .param p1, "op"    # I

    .prologue
    .line 2241
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 2242
    return-void
.end method

.method public finishOp(IILjava/lang/String;)V
    .locals 2
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2234
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v1}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2237
    :goto_0
    return-void

    .line 2235
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public finishOp(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1984
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    .line 1985
    return-void
.end method

.method public getAllowAutoBootList()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v9, 0x46

    const/4 v8, 0x1

    .line 2295
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2296
    .local v5, "packagenames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-array v6, v8, [I

    const/4 v7, 0x0

    aput v9, v6, v7

    invoke-virtual {p0, v6}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v2

    .line 2297
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v2, :cond_1

    .line 2298
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$PackageOps;

    .line 2299
    .local v1, "item":Landroid/app/AppOpsManager$PackageOps;
    # getter for: Landroid/app/AppOpsManager$PackageOps;->mUid:I
    invoke-static {v1}, Landroid/app/AppOpsManager$PackageOps;->access$100(Landroid/app/AppOpsManager$PackageOps;)I

    move-result v6

    # getter for: Landroid/app/AppOpsManager$PackageOps;->mPackageName:Ljava/lang/String;
    invoke-static {v1}, Landroid/app/AppOpsManager$PackageOps;->access$200(Landroid/app/AppOpsManager$PackageOps;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v9, v6, v7}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v3

    .line 2300
    .local v3, "mode":I
    if-eq v3, v8, :cond_0

    .line 2301
    # getter for: Landroid/app/AppOpsManager$PackageOps;->mPackageName:Ljava/lang/String;
    invoke-static {v1}, Landroid/app/AppOpsManager$PackageOps;->access$200(Landroid/app/AppOpsManager$PackageOps;)Ljava/lang/String;

    move-result-object v4

    .line 2302
    .local v4, "name":Ljava/lang/String;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2306
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Landroid/app/AppOpsManager$PackageOps;
    .end local v3    # "mode":I
    .end local v4    # "name":Ljava/lang/String;
    :cond_1
    return-object v5
.end method

.method public getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    .locals 1
    .param p1, "uid"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "[I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1722
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1725
    :goto_0
    return-object v0

    .line 1723
    :catch_0
    move-exception v0

    .line 1725
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPackagesForOps([I)Ljava/util/List;
    .locals 1
    .param p1, "ops"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/AppOpsManager$PackageOps;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1706
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1}, Lcom/android/internal/app/IAppOpsService;->getPackagesForOps([I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1709
    :goto_0
    return-object v0

    .line 1707
    :catch_0
    move-exception v0

    .line 1709
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPermissionInstllResult([Ljava/lang/String;ILjava/lang/String;)Landroid/app/AppOpsManager$PermissionInstallResult;
    .locals 10
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2355
    new-instance v4, Landroid/app/AppOpsManager$PermissionInstallResult;

    invoke-direct {v4, p0}, Landroid/app/AppOpsManager$PermissionInstallResult;-><init>(Landroid/app/AppOpsManager;)V

    .line 2356
    .local v4, "result":Landroid/app/AppOpsManager$PermissionInstallResult;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 2357
    .local v5, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v6, Landroid/app/AppOpsUtils;

    iget-object v7, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7, p2, p3}, Landroid/app/AppOpsUtils;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 2358
    .local v6, "utils":Landroid/app/AppOpsUtils;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_21

    aget-object v3, v0, v1

    .line 2359
    .local v3, "perm":Ljava/lang/String;
    iget-object v7, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    sget-object v8, Landroid/app/AppOpsUtils;->APPOPS_FEATURE:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 2361
    const-string v7, "android.permission.CALL_PHONE"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2362
    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2363
    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2364
    iget-object v7, v6, Landroid/app/AppOpsUtils;->CALL_PHONE_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->CALL_PHONE_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v8, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string v9, "android.permission.CALL_PHONE"

    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    .line 2365
    iget-object v7, v4, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->CALL_PHONE_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2366
    iget-object v7, v4, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->THREE_WAY_CALLING_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2457
    :cond_0
    :goto_1
    const-string v7, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 2458
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_13

    .line 2459
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2460
    iget-object v7, v6, Landroid/app/AppOpsUtils;->LOCATION_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->LOCATION_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v8, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string v9, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    .line 2463
    iget-object v7, v4, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->LOCATION_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2358
    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2369
    :cond_2
    const-string v7, "android.permission.READ_CONTACTS"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 2370
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 2371
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2372
    iget-object v7, v6, Landroid/app/AppOpsUtils;->CONTACT_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->CONTACT_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v8, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string v9, "android.permission.READ_CONTACTS"

    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    .line 2373
    iget-object v7, v4, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->CONTACT_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2375
    :cond_3
    iget-object v7, v6, Landroid/app/AppOpsUtils;->CONTACT_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->CONTACT_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v8, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string v9, "android.permission.READ_CONTACTS"

    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    goto :goto_1

    .line 2377
    :cond_4
    const-string v7, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 2378
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 2379
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2380
    iget-object v7, v6, Landroid/app/AppOpsUtils;->CONTACT_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->CONTACT_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v8, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string v9, "android.permission.WRITE_CONTACTS"

    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    .line 2381
    iget-object v7, v4, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->CONTACT_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2383
    :cond_5
    iget-object v7, v6, Landroid/app/AppOpsUtils;->CONTACT_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->CONTACT_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v8, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string v9, "android.permission.WRITE_CONTACTS"

    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    goto/16 :goto_1

    .line 2385
    :cond_6
    const-string v7, "android.permission.READ_CALL_LOG"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 2386
    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_7

    .line 2387
    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2388
    iget-object v7, v6, Landroid/app/AppOpsUtils;->CALL_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->CALL_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v8, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string v9, "android.permission.READ_CALL_LOG"

    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    .line 2389
    iget-object v7, v4, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->CALL_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2391
    :cond_7
    iget-object v7, v6, Landroid/app/AppOpsUtils;->CALL_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->CALL_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v8, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string v9, "android.permission.READ_CALL_LOG"

    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    goto/16 :goto_1

    .line 2393
    :cond_8
    const-string v7, "android.permission.WRITE_CALL_LOG"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 2394
    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    .line 2395
    const/4 v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2396
    iget-object v7, v6, Landroid/app/AppOpsUtils;->CALL_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->CALL_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v8, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string v9, "android.permission.WRITE_CALL_LOG"

    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    .line 2397
    iget-object v7, v4, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->CALL_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2399
    :cond_9
    iget-object v7, v6, Landroid/app/AppOpsUtils;->CALL_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->CALL_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v8, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string v9, "android.permission.WRITE_CALL_LOG"

    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    goto/16 :goto_1

    .line 2403
    :cond_a
    const-string v7, "android.permission.READ_SMS"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 2404
    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 2405
    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2406
    iget-object v7, v6, Landroid/app/AppOpsUtils;->SMS_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->SMS_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v8, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string v9, "android.permission.READ_SMS"

    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    .line 2407
    iget-object v7, v6, Landroid/app/AppOpsUtils;->MMS_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->MMS_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v8, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string v9, "android.permission.READ_SMS"

    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    .line 2408
    iget-object v7, v4, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->SMS_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2409
    iget-object v7, v4, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->MMS_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2411
    :cond_b
    iget-object v7, v6, Landroid/app/AppOpsUtils;->SMS_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->SMS_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v8, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string v9, "android.permission.READ_SMS"

    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    .line 2412
    iget-object v7, v6, Landroid/app/AppOpsUtils;->MMS_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->MMS_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v8, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string v9, "android.permission.READ_SMS"

    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    goto/16 :goto_1

    .line 2427
    :cond_c
    const-string v7, "android.permission.SEND_SMS"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2428
    const/4 v7, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2429
    const/4 v7, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2430
    iget-object v7, v6, Landroid/app/AppOpsUtils;->SEND_SMS_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->SEND_SMS_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v8, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string v9, "android.permission.SEND_SMS"

    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    .line 2431
    iget-object v7, v6, Landroid/app/AppOpsUtils;->SEND_MMS_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->SEND_MMS_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v8, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string v9, "android.permission.SEND_SMS"

    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    .line 2432
    iget-object v7, v4, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->SEND_SMS_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2433
    iget-object v7, v4, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->SEND_MMS_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2437
    :cond_d
    const-string v7, "android.permission.CALL_PHONE"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    const-string v7, "android.permission.READ_CONTACTS"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    const-string v7, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    const-string v7, "android.permission.READ_CALL_LOG"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    const-string v7, "android.permission.WRITE_CALL_LOG"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 2438
    :cond_e
    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    .line 2439
    const/4 v7, 0x4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2440
    iget-object v7, v6, Landroid/app/AppOpsUtils;->ALL_PHONE_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->ALL_PHONE_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v8, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    invoke-static {v8, v3}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    .line 2441
    iget-object v7, v4, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->ALL_PHONE_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2443
    :cond_f
    iget-object v7, v6, Landroid/app/AppOpsUtils;->ALL_PHONE_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->ALL_PHONE_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v8, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    invoke-static {v8, v3}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    goto/16 :goto_1

    .line 2445
    :cond_10
    const-string v7, "android.permission.READ_SMS"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    const-string v7, "android.permission.SEND_SMS"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2446
    :cond_11
    const/4 v7, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_12

    .line 2447
    const/4 v7, 0x7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2448
    iget-object v7, v6, Landroid/app/AppOpsUtils;->ALL_SMS_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->ALL_SMS_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v8, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    invoke-static {v8, v3}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    .line 2449
    iget-object v7, v4, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->ALL_SMS_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 2451
    :cond_12
    iget-object v7, v6, Landroid/app/AppOpsUtils;->ALL_SMS_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->ALL_SMS_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v8, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    invoke-static {v8, v3}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    goto/16 :goto_1

    .line 2465
    :cond_13
    iget-object v7, v6, Landroid/app/AppOpsUtils;->LOCATION_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->LOCATION_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v8, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string v9, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    goto/16 :goto_2

    .line 2468
    :cond_14
    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 2469
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_15

    .line 2470
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2471
    iget-object v7, v6, Landroid/app/AppOpsUtils;->LOCATION_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->LOCATION_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v8, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string v9, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    .line 2474
    iget-object v7, v4, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->LOCATION_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2476
    :cond_15
    iget-object v7, v6, Landroid/app/AppOpsUtils;->LOCATION_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->LOCATION_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v8, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string v9, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    goto/16 :goto_2

    .line 2480
    :cond_16
    const-string v7, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    .line 2481
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_17

    .line 2482
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2483
    iget-object v7, v6, Landroid/app/AppOpsUtils;->LOCATION_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->LOCATION_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v8, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string v9, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    .line 2486
    iget-object v7, v4, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->LOCATION_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2488
    :cond_17
    iget-object v7, v6, Landroid/app/AppOpsUtils;->LOCATION_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->LOCATION_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v8, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string v9, "android.permission.ACCESS_WIFI_STATE"

    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    goto/16 :goto_2

    .line 2522
    :cond_18
    const-string v7, "android.permission.CHANGE_WIFI_STATE"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    .line 2523
    const/16 v7, 0xc

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2524
    const/16 v7, 0xc

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2525
    iget-object v7, v6, Landroid/app/AppOpsUtils;->WIFI_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->WIFI_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v8, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string v9, "android.permission.CHANGE_WIFI_STATE"

    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    .line 2527
    iget-object v7, v4, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->WIFI_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2530
    :cond_19
    const-string v7, "android.permission.BLUETOOTH"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1a

    .line 2531
    const/16 v7, 0xd

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2532
    const/16 v7, 0xd

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2533
    iget-object v7, v6, Landroid/app/AppOpsUtils;->BLUETOOTH_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->BLUETOOTH_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v8, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string v9, "android.permission.BLUETOOTH"

    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    .line 2535
    iget-object v7, v4, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->BLUETOOTH_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2538
    :cond_1a
    const-string v7, "android.permission.CHANGE_NETWORK_STATE"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b

    .line 2539
    const/16 v7, 0xe

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2540
    const/16 v7, 0xe

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2541
    iget-object v7, v6, Landroid/app/AppOpsUtils;->DATACONNECT_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->DATACONNECT_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v8, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string v9, "android.permission.CHANGE_NETWORK_STATE"

    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    .line 2543
    iget-object v7, v4, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->DATACONNECT_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2546
    :cond_1b
    const-string v7, "android.permission.NFC"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 2547
    const/16 v7, 0x10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2548
    const/16 v7, 0x10

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2549
    iget-object v7, v6, Landroid/app/AppOpsUtils;->NFC_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->NFC_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v8, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string v9, "android.permission.NFC"

    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    .line 2551
    iget-object v7, v4, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->NFC_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2610
    :cond_1c
    const-string v7, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 2611
    const/16 v7, 0x15

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2612
    const/16 v7, 0x15

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2613
    iget-object v7, v6, Landroid/app/AppOpsUtils;->SYSTEM_ALERT_WINDOW_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->SYSTEM_ALERT_WINDOW_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v8, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string v9, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    .line 2615
    iget-object v7, v4, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->SYSTEM_ALERT_WINDOW_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2622
    :cond_1d
    const-string v7, "android.permission.CAMERA"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1e

    .line 2623
    const/16 v7, 0xa

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2624
    const/16 v7, 0xa

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2625
    iget-object v7, v6, Landroid/app/AppOpsUtils;->CAMERA_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->CAMERA_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v8, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string v9, "android.permission.CAMERA"

    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    .line 2627
    iget-object v7, v4, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->CAMERA_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2629
    :cond_1e
    const-string v7, "android.permission.RECORD_AUDIO"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 2630
    const/16 v7, 0xb

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2631
    const/16 v7, 0xb

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2632
    iget-object v7, v6, Landroid/app/AppOpsUtils;->RECORD_AUDIO_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->RECORD_AUDIO_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v8, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string v9, "android.permission.RECORD_AUDIO"

    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    .line 2634
    iget-object v7, v4, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->RECORD_AUDIO_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2641
    :cond_1f
    const-string v7, "android.permission.RECEIVE_BOOT_COMPLETED"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 2642
    const/16 v7, 0xf

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 2643
    const/16 v7, 0xf

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2644
    iget-object v7, v6, Landroid/app/AppOpsUtils;->AUTOBOOT_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->AUTOBOOT_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    iget-object v8, v8, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    const-string v9, "android.permission.RECEIVE_BOOT_COMPLETED"

    invoke-static {v8, v9}, Landroid/app/AppOpsManager;->insert([Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v7, Landroid/app/AppOpsUtils$AppOpsItem;->perms:[Ljava/lang/String;

    .line 2646
    iget-object v7, v4, Landroid/app/AppOpsManager$PermissionInstallResult;->items:Ljava/util/List;

    iget-object v8, v6, Landroid/app/AppOpsUtils;->AUTOBOOT_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2659
    :cond_20
    iget-object v7, v4, Landroid/app/AppOpsManager$PermissionInstallResult;->noPassPerms:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 2663
    .end local v3    # "perm":Ljava/lang/String;
    :cond_21
    return-object v4
.end method

.method public getTrustBgAppList()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v14, 0x7d0

    const/16 v13, 0x4c

    .line 2710
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 2711
    .local v8, "packagenames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, 0x0

    aput v13, v11, v12

    invoke-virtual {p0, v11}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v7

    .line 2712
    .local v7, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$PackageOps;>;"
    if-eqz v7, :cond_7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_7

    .line 2713
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$PackageOps;

    .line 2714
    .local v5, "item":Landroid/app/AppOpsManager$PackageOps;
    # getter for: Landroid/app/AppOpsManager$PackageOps;->mPackageName:Ljava/lang/String;
    invoke-static {v5}, Landroid/app/AppOpsManager$PackageOps;->access$200(Landroid/app/AppOpsManager$PackageOps;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "com.android.cts"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_1

    # getter for: Landroid/app/AppOpsManager$PackageOps;->mPackageName:Ljava/lang/String;
    invoke-static {v5}, Landroid/app/AppOpsManager$PackageOps;->access$200(Landroid/app/AppOpsManager$PackageOps;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "com.google.android.xts"

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 2716
    :cond_1
    # getter for: Landroid/app/AppOpsManager$PackageOps;->mPackageName:Ljava/lang/String;
    invoke-static {v5}, Landroid/app/AppOpsManager$PackageOps;->access$200(Landroid/app/AppOpsManager$PackageOps;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2718
    :cond_2
    invoke-virtual {v5}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v2

    .line 2719
    .local v2, "entry":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$OpEntry;

    .line 2720
    .local v1, "e":Landroid/app/AppOpsManager$OpEntry;
    invoke-virtual {v1}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v11

    if-ne v13, v11, :cond_3

    invoke-virtual {v1}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v11

    if-eqz v11, :cond_4

    const/4 v11, 0x2

    invoke-virtual {v1}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v12

    if-ne v11, v12, :cond_3

    .line 2723
    :cond_4
    # getter for: Landroid/app/AppOpsManager$PackageOps;->mUid:I
    invoke-static {v5}, Landroid/app/AppOpsManager$PackageOps;->access$100(Landroid/app/AppOpsManager$PackageOps;)I

    move-result v11

    if-ne v11, v14, :cond_6

    .line 2724
    iget-object v11, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    invoke-virtual {v11, v14}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v9

    .line 2725
    .local v9, "packages":[Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 2726
    move-object v0, v9

    .local v0, "arr$":[Ljava/lang/String;
    array-length v6, v0

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v6, :cond_0

    aget-object v10, v0, v4

    .line 2727
    .local v10, "pkg":Ljava/lang/String;
    const-string v11, "com.android.shell"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_5

    .line 2728
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2726
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2733
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v6    # "len$":I
    .end local v9    # "packages":[Ljava/lang/String;
    .end local v10    # "pkg":Ljava/lang/String;
    .local v4, "i$":Ljava/util/Iterator;
    :cond_6
    # getter for: Landroid/app/AppOpsManager$PackageOps;->mPackageName:Ljava/lang/String;
    invoke-static {v5}, Landroid/app/AppOpsManager$PackageOps;->access$200(Landroid/app/AppOpsManager$PackageOps;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v8, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2741
    .end local v1    # "e":Landroid/app/AppOpsManager$OpEntry;
    .end local v2    # "entry":Ljava/util/List;, "Ljava/util/List<Landroid/app/AppOpsManager$OpEntry;>;"
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v5    # "item":Landroid/app/AppOpsManager$PackageOps;
    :cond_7
    return-object v8
.end method

.method public isControlAllowed(ILjava/lang/String;)Z
    .locals 2
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2281
    const/4 v0, 0x1

    .line 2283
    .local v0, "isShow":Z
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/app/IAppOpsService;->isControlAllowed(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2286
    :goto_0
    return v0

    .line 2284
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public noteOp(I)I
    .locals 2
    .param p1, "op"    # I

    .prologue
    .line 2160
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteOp(IILjava/lang/String;)I
    .locals 3
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2092
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;)I

    move-result v0

    .line 2093
    .local v0, "mode":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2094
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2097
    .end local v0    # "mode":I
    :catch_0
    move-exception v1

    .line 2099
    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public noteOp(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1911
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteOpForBinder(I)I
    .locals 3
    .param p1, "op"    # I

    .prologue
    .line 2313
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {v1, v2}, Landroid/app/AppOpsManager;->getPackageName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteOpNoThrow(IILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2152
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2155
    :goto_0
    return v0

    .line 2153
    :catch_0
    move-exception v0

    .line 2155
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1919
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteProxyOp(ILjava/lang/String;)I
    .locals 4
    .param p1, "op"    # I
    .param p2, "proxiedPackageName"    # Ljava/lang/String;

    .prologue
    .line 2121
    invoke-virtual {p0, p1, p2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILjava/lang/String;)I

    move-result v0

    .line 2122
    .local v0, "mode":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2123
    new-instance v1, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proxy package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " or calling package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not allowed to perform "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2128
    :cond_0
    return v0
.end method

.method public noteProxyOp(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedPackageName"    # Ljava/lang/String;

    .prologue
    .line 1938
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/app/AppOpsManager;->noteProxyOp(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public noteProxyOpNoThrow(ILjava/lang/String;)I
    .locals 3
    .param p1, "op"    # I
    .param p2, "proxiedPackageName"    # Ljava/lang/String;

    .prologue
    .line 2138
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-interface {v0, p1, v1, v2, p2}, Lcom/android/internal/app/IAppOpsService;->noteProxyOperation(ILjava/lang/String;ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2142
    :goto_0
    return v0

    .line 2140
    :catch_0
    move-exception v0

    .line 2142
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "proxiedPackageName"    # Ljava/lang/String;

    .prologue
    .line 1946
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public resetAllModes()V
    .locals 3

    .prologue
    .line 1775
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IAppOpsService;->resetAllModes(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1778
    :goto_0
    return-void

    .line 1776
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setMode(IILjava/lang/String;I)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .prologue
    .line 1739
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/app/IAppOpsService;->setMode(IILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1742
    :goto_0
    return-void

    .line 1740
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setMode(Landroid/app/AppOpsUtils$AppOpsItem;ILjava/lang/String;I)V
    .locals 4
    .param p1, "item"    # Landroid/app/AppOpsUtils$AppOpsItem;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;
    .param p4, "mode"    # I

    .prologue
    .line 1746
    iget-object v0, p1, Landroid/app/AppOpsUtils$AppOpsItem;->ops:[I

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v1, v0, v2

    .line 1747
    .local v1, "code":I
    invoke-virtual {p0, v1, p2, p3, p4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 1746
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1750
    .end local v1    # "code":I
    :cond_0
    return-void
.end method

.method public setRestriction(III[Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "usage"    # I
    .param p3, "mode"    # I
    .param p4, "exceptionPackages"    # [Ljava/lang/String;

    .prologue
    .line 1766
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1767
    .local v3, "uid":I
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    move v1, p1

    move v2, p2

    move v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IAppOpsService;->setAudioRestriction(IIII[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1770
    .end local v3    # "uid":I
    :goto_0
    return-void

    .line 1768
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setUidMode(III)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "uid"    # I
    .param p3, "mode"    # I

    .prologue
    .line 1731
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->setUidMode(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1734
    :goto_0
    return-void

    .line 1732
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startOp(I)I
    .locals 2
    .param p1, "op"    # I

    .prologue
    .line 2222
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iget-object v1, p0, Landroid/app/AppOpsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startOp(IILjava/lang/String;)I
    .locals 3
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2197
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v2, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v2}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I

    move-result v0

    .line 2198
    .local v0, "mode":I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2199
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {p0, p1, p2, p3}, Landroid/app/AppOpsManager;->buildSecurityExceptionMsg(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2202
    .end local v0    # "mode":I
    :catch_0
    move-exception v1

    .line 2204
    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public startOp(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1966
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->startOp(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startOpNoThrow(IILjava/lang/String;)I
    .locals 2
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2214
    :try_start_0
    iget-object v0, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v1}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 2217
    :goto_0
    return v0

    .line 2215
    :catch_0
    move-exception v0

    .line 2217
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public startOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    .line 1974
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 3
    .param p1, "op"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .prologue
    .line 1815
    iget-object v2, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 1816
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IAppOpsCallback;

    .line 1817
    .local v0, "cb":Lcom/android/internal/app/IAppOpsCallback;
    if-nez v0, :cond_0

    .line 1818
    new-instance v0, Landroid/app/AppOpsManager$1;

    .end local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    invoke-direct {v0, p0, p3}, Landroid/app/AppOpsManager$1;-><init>(Landroid/app/AppOpsManager;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 1828
    .restart local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    iget-object v1, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1831
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, p1, p2, v0}, Lcom/android/internal/app/IAppOpsService;->startWatchingMode(ILjava/lang/String;Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1834
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 1835
    return-void

    .line 1834
    .end local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1832
    .restart local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public startWatchingMode(Ljava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 1
    .param p1, "op"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .prologue
    .line 1804
    invoke-static {p1}, Landroid/app/AppOpsManager;->strOpToOp(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0, p2, p3}, Landroid/app/AppOpsManager;->startWatchingMode(ILjava/lang/String;Landroid/app/AppOpsManager$OnOpChangedListener;)V

    .line 1805
    return-void
.end method

.method public stopWatchingMode(Landroid/app/AppOpsManager$OnOpChangedListener;)V
    .locals 3
    .param p1, "callback"    # Landroid/app/AppOpsManager$OnOpChangedListener;

    .prologue
    .line 1842
    iget-object v2, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    monitor-enter v2

    .line 1843
    :try_start_0
    iget-object v1, p0, Landroid/app/AppOpsManager;->mModeWatchers:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/IAppOpsCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1844
    .local v0, "cb":Lcom/android/internal/app/IAppOpsCallback;
    if-eqz v0, :cond_0

    .line 1846
    :try_start_1
    iget-object v1, p0, Landroid/app/AppOpsManager;->mService:Lcom/android/internal/app/IAppOpsService;

    invoke-interface {v1, v0}, Lcom/android/internal/app/IAppOpsService;->stopWatchingMode(Lcom/android/internal/app/IAppOpsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1850
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v2

    .line 1851
    return-void

    .line 1850
    .end local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1847
    .restart local v0    # "cb":Lcom/android/internal/app/IAppOpsCallback;
    :catch_0
    move-exception v1

    goto :goto_0
.end method
