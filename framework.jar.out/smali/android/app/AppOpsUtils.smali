.class public Landroid/app/AppOpsUtils;
.super Ljava/lang/Object;
.source "AppOpsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppOpsUtils$AppOpsItem;
    }
.end annotation


# static fields
.field public static APPOPS_FEATURE:Ljava/lang/String; = null

.field public static final CTA_SYSTEM_BLACK_APPS:[Ljava/lang/String;

.field public static final GROUP_TYPE_EIGHT:I = 0x8

.field public static final GROUP_TYPE_FIFTH:I = 0x5

.field public static final GROUP_TYPE_FIRST:I = 0x1

.field public static final GROUP_TYPE_FOURTH:I = 0x4

.field public static final GROUP_TYPE_SECOND:I = 0x2

.field public static final GROUP_TYPE_SEVENTH:I = 0x7

.field public static final GROUP_TYPE_SIXTH:I = 0x6

.field public static final GROUP_TYPE_THIRD:I = 0x3

.field public static final GROUP_TYPE_ZERO:I = 0x0

.field public static final ORDER_TYPE_EIGHTH:I = 0x8

.field public static final ORDER_TYPE_FIFTH:I = 0x5

.field public static final ORDER_TYPE_FIRST:I = 0x1

.field public static final ORDER_TYPE_FOURTH:I = 0x4

.field public static final ORDER_TYPE_SECOND:I = 0x2

.field public static final ORDER_TYPE_SEVENTH:I = 0x7

.field public static final ORDER_TYPE_SIXTH:I = 0x6

.field public static final ORDER_TYPE_THIRD:I = 0x3

.field public static final SYSTEM_BLACK_APPS:[Ljava/lang/String;

.field public static final SYSTEM_WHITE_APPS:[Ljava/lang/String;

.field public static final TYPE_ACCESS_NOTIFICATION:I = 0x9

.field public static TYPE_ACCESS_NOTIFICATION_OPS:[I = null

.field public static TYPE_ACCESS_NOTIFICATION_PERMS:[Ljava/lang/String; = null

.field public static TYPE_ALL_PHONE_OPS:[I = null

.field public static TYPE_ALL_SMS_OPS:[I = null

.field public static final TYPE_AUTOBOOT:I = 0xf

.field public static final TYPE_CALENDAR:I = 0x3

.field public static TYPE_CALENDAR_OPS:[I = null

.field public static TYPE_CALENDAR_PERMS:[Ljava/lang/String; = null

.field public static final TYPE_CALL_LOG:I = 0x2

.field public static TYPE_CALL_LOG_OPS:[I = null

.field public static TYPE_CALL_LOG_PERMS:[Ljava/lang/String; = null

.field public static final TYPE_CALL_PHONE:I = 0x4

.field public static TYPE_CALL_PHONE_OPS:[I = null

.field public static TYPE_CALL_PHONE_PERMS:[Ljava/lang/String; = null

.field public static final TYPE_CAMERA:I = 0xa

.field public static TYPE_CAMERA_OPS:[I = null

.field public static TYPE_CAMERA_PERMS:[Ljava/lang/String; = null

.field public static TYPE_CHANGE_BLUETOOTH_OPS:[I = null

.field public static TYPE_CHANGE_BLUETOOTH_PERMS:[Ljava/lang/String; = null

.field public static TYPE_CHANGE_DATACONNECT_OPS:[I = null

.field public static TYPE_CHANGE_DATACONNECT_PERMS:[Ljava/lang/String; = null

.field public static TYPE_CHANGE_WIFI_OPS:[I = null

.field public static TYPE_CHANGE_WIFI_PERMS:[Ljava/lang/String; = null

.field public static final TYPE_CLIPBOARD:I = 0x14

.field public static TYPE_CLIPBOARD_OPS:[I = null

.field public static TYPE_CLIPBOARD_PERMS:[Ljava/lang/String; = null

.field public static final TYPE_CONTACT_LOG:I = 0x1

.field public static TYPE_CONTACT_LOG_OPS:[I = null

.field public static TYPE_CONTACT_LOG_PERMS:[Ljava/lang/String; = null

.field public static final TYPE_LOCATION:I = 0x0

.field public static TYPE_LOCATION_OPS:[I = null

.field public static TYPE_LOCATION_PERMS:[Ljava/lang/String; = null

.field public static final TYPE_MMS_LOG:I = 0x13

.field public static TYPE_MMS_LOG_OPS:[I = null

.field public static TYPE_MMS_LOG_PERMS:[Ljava/lang/String; = null

.field public static TYPE_NFC_OPS:[I = null

.field public static TYPE_NFC_PERMS:[Ljava/lang/String; = null

.field public static final TYPE_PHONE_INFO:I = 0x11

.field public static TYPE_PHONE_INFO_OPS:[I = null

.field public static TYPE_PHONE_INFO_PERMS:[Ljava/lang/String; = null

.field public static TYPE_RECEIVE_BOOT_COMPLETED_OPS:[I = null

.field public static TYPE_RECEIVE_BOOT_COMPLETED_PERMS:[Ljava/lang/String; = null

.field public static final TYPE_RECEIVE_SMS:I = 0x6

.field public static TYPE_RECEIVE_SMS_OPS:[I = null

.field public static TYPE_RECEIVE_SMS_PERMS:[Ljava/lang/String; = null

.field public static final TYPE_RECORD_AUDIO:I = 0xb

.field public static TYPE_RECORD_AUDIO_OPS:[I = null

.field public static TYPE_RECORD_AUDIO_PERMS:[Ljava/lang/String; = null

.field public static final TYPE_SEND_MMS:I = 0x12

.field public static TYPE_SEND_MMS_OPS:[I = null

.field public static TYPE_SEND_MMS_PERMS:[Ljava/lang/String; = null

.field public static final TYPE_SEND_SMS:I = 0x7

.field public static TYPE_SEND_SMS_OPS:[I = null

.field public static TYPE_SEND_SMS_PERMS:[Ljava/lang/String; = null

.field public static final TYPE_SMS_LOG:I = 0x5

.field public static TYPE_SMS_LOG_OPS:[I = null

.field public static TYPE_SMS_LOG_PERMS:[Ljava/lang/String; = null

.field public static final TYPE_SYSTEM_ALERT_WINDOW:I = 0x15

.field public static TYPE_SYSTEM_ALERT_WINDOW_OPS:[I = null

.field public static TYPE_SYSTEM_ALERT_WINDOW_PERMS:[Ljava/lang/String; = null

.field public static final TYPE_THREE_WAY_CALLING:I = 0x16

.field public static TYPE_THREE_WAY_CALLING_OPS:[I = null

.field public static final TYPE_TURN_ONOFF_BLUETOOTH:I = 0xd

.field public static final TYPE_TURN_ONOFF_DATACONNECT:I = 0xe

.field public static final TYPE_TURN_ONOFF_NFC:I = 0x10

.field public static final TYPE_TURN_ONOFF_WIFI:I = 0xc

.field public static final TYPE_WRITE_SETTINGS:I = 0x8

.field public static TYPE_WRITE_SETTINGS_OPS:[I

.field public static TYPE_WRITE_SETTINGS_PERMS:[Ljava/lang/String;


# instance fields
.field public ACCESS_NOTIFICATION_GORUP_DESC:Ljava/lang/String;

.field public ACCESS_NOTIFICATION_GROUP_NAME:Ljava/lang/String;

.field public ACCESS_NOTIFICATION_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public ALL_PHONE_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public ALL_SMS_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public AUTOBOOT_GROUP_DESC:Ljava/lang/String;

.field public AUTOBOOT_GROUP_NAME:Ljava/lang/String;

.field public AUTOBOOT_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public BLUETOOTH_GROUP_DESC:Ljava/lang/String;

.field public BLUETOOTH_GROUP_NAME:Ljava/lang/String;

.field public BLUETOOTH_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public CALENDAR_GROUP_DESC:Ljava/lang/String;

.field public CALENDAR_GROUP_NAME:Ljava/lang/String;

.field public CALENDAR_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public CALL_LOG_GROUP_DESC:Ljava/lang/String;

.field public CALL_LOG_GROUP_NAME:Ljava/lang/String;

.field public CALL_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public CALL_PHONE_GROUP_DESC:Ljava/lang/String;

.field public CALL_PHONE_GROUP_NAME:Ljava/lang/String;

.field public CALL_PHONE_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public CAMERA_GROUP_DESC:Ljava/lang/String;

.field public CAMERA_GROUP_NAME:Ljava/lang/String;

.field public CAMERA_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public CLIPBOARD_GROUP_DESC:Ljava/lang/String;

.field public CLIPBOARD_GROUP_NAME:Ljava/lang/String;

.field public CONTACT_LOG_GROUP_DESC:Ljava/lang/String;

.field public CONTACT_LOG_GROUP_NAME:Ljava/lang/String;

.field public CONTACT_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public DATACONNECT_GROUP_DESC:Ljava/lang/String;

.field public DATACONNECT_GROUP_NAME:Ljava/lang/String;

.field public DATACONNECT_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public LOCATION_GROUP_DESC:Ljava/lang/String;

.field public LOCATION_GROUP_NAME:Ljava/lang/String;

.field public LOCATION_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public MMS_LOG_GROUP_DESC:Ljava/lang/String;

.field public MMS_LOG_GROUP_NAME:Ljava/lang/String;

.field public MMS_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public NFC_GROUP_DESC:Ljava/lang/String;

.field public NFC_GROUP_NAME:Ljava/lang/String;

.field public NFC_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public PHONE_INFO_GROUP_DESC:Ljava/lang/String;

.field public PHONE_INFO_GROUP_NAME:Ljava/lang/String;

.field public PHONE_INFO_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public RECEIVE_SMS_GROUP_DESC:Ljava/lang/String;

.field public RECEIVE_SMS_GROUP_NAME:Ljava/lang/String;

.field public RECEIVE_SMS_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public RECORD_AUDIO_GROUP_DESC:Ljava/lang/String;

.field public RECORD_AUDIO_GROUP_NAME:Ljava/lang/String;

.field public RECORD_AUDIO_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public SEND_MMS_GROUP_DESC:Ljava/lang/String;

.field public SEND_MMS_GROUP_NAME:Ljava/lang/String;

.field public SEND_MMS_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public SEND_SMS_GROUP_DESC:Ljava/lang/String;

.field public SEND_SMS_GROUP_NAME:Ljava/lang/String;

.field public SEND_SMS_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public SMS_LOG_GROUP_DESC:Ljava/lang/String;

.field public SMS_LOG_GROUP_NAME:Ljava/lang/String;

.field public SMS_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public SYSTEM_ALERT_WINDOW_GROUP_DESC:Ljava/lang/String;

.field public SYSTEM_ALERT_WINDOW_GROUP_NAME:Ljava/lang/String;

.field public SYSTEM_ALERT_WINDOW_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public THREE_WAY_CALLING_GROUP_DESC:Ljava/lang/String;

.field public THREE_WAY_CALLING_GROUP_NAME:Ljava/lang/String;

.field public THREE_WAY_CALLING_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public WIFI_GROUP_DESC:Ljava/lang/String;

.field public WIFI_GROUP_NAME:Ljava/lang/String;

.field public WIFI_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public WRITE_SETTINGS_GROUP_DESC:Ljava/lang/String;

.field public WRITE_SETTINGS_GROUP_NAME:Ljava/lang/String;

.field public WRITE_SETTINGS_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

.field public aom:Landroid/app/AppOpsManager;

.field public isFirst:Z

.field private mContext:Landroid/content/Context;

.field public packageName:Ljava/lang/String;

.field pm:Landroid/content/pm/PackageManager;

.field res:Landroid/content/res/Resources;

.field public uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "com.letv.leui.safe_show_phone_and_sms_permisson_detail"

    sput-object v0, Landroid/app/AppOpsUtils;->APPOPS_FEATURE:Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "sina.mobile.tianqitongletv"

    aput-object v1, v0, v3

    sput-object v0, Landroid/app/AppOpsUtils;->SYSTEM_WHITE_APPS:[Ljava/lang/String;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "cn.wps.moffice_eng"

    aput-object v1, v0, v3

    const-string v1, "com.letv.letvshop"

    aput-object v1, v0, v4

    const-string v1, "com.baidu.BaiduMap"

    aput-object v1, v0, v5

    const-string v1, "com.letv.android.account"

    aput-object v1, v0, v7

    const-string v1, "com.baidu.input_letv"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "com.letv.android.client"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.sina.weibo"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.letv.lesophoneclient"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.lesports.glivesports"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.letv.games"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.letv.android.letvlive"

    aput-object v2, v0, v1

    sput-object v0, Landroid/app/AppOpsUtils;->SYSTEM_BLACK_APPS:[Ljava/lang/String;

    const/16 v0, 0x29

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "com.baidu.input_letv"

    aput-object v1, v0, v3

    const-string v1, "com.letv.android.sports"

    aput-object v1, v0, v4

    const-string v1, "com.sina.weibo"

    aput-object v1, v0, v5

    const-string v1, "com.letv.app.appstore"

    aput-object v1, v0, v7

    const-string v1, "com.letv.android.wallpaperonline"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "com.letv.android.voiceassistant"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.baidu.android.speechengine"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.letv.letvshop"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "cn.wps.moffice_eng"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.letv.android.weather"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.letv.android.ota"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "com.mtk.telephony"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.mediatek.mtklogger"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.letv.android.account"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "com.letv.tracker"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "com.letv.android.LetvShareProvider"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "com.letv.android.note"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "com.mediatek.voiceextension"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "com.mediatek.apst.target"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "com.mediatek.engineermode"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "com.letv.android.recorder"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "com.letv.android.remotecontrol"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "com.letv.android.setupwizard"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "com.letv.android.filemanager"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "com.mediatek.dataprotection"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "com.mediatek.schpwronoff"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "com.letv.android.wallpaper"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "com.letv.android.cloudservice"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "com.letv.android.push"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "com.letv.bsp.crashhandler"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "com.mediatek.mco"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "com.mediatek.calendarimporter"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "com.mediatek.batterywarning"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "com.letv.android.bugreporter"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "com.mediatek.floatmenu"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "com.letv.android.voiceassistant"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "com.letv.android.theme"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "com.mediatek.thermalmanager"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "com.mediatek.connectivity"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "com.android.calendar"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "com.android.contacts"

    aput-object v2, v0, v1

    sput-object v0, Landroid/app/AppOpsUtils;->CTA_SYSTEM_BLACK_APPS:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v1, v0, v3

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v1, v0, v4

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    aput-object v1, v0, v5

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_LOCATION_PERMS:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_LOCATION_OPS:[I

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "android.permission.READ_CONTACTS"

    aput-object v1, v0, v3

    const-string v1, "android.permission.WRITE_CONTACTS"

    aput-object v1, v0, v4

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_CONTACT_LOG_PERMS:[Ljava/lang/String;

    new-array v0, v5, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_CONTACT_LOG_OPS:[I

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "android.permission.READ_CALL_LOG"

    aput-object v1, v0, v3

    const-string v1, "android.permission.WRITE_CALL_LOG"

    aput-object v1, v0, v4

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_CALL_LOG_PERMS:[Ljava/lang/String;

    new-array v0, v5, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_CALL_LOG_OPS:[I

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "android.permission.READ_CALENDAR"

    aput-object v1, v0, v3

    const-string v1, "android.permission.WRITE_CALENDAR"

    aput-object v1, v0, v4

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_CALENDAR_PERMS:[Ljava/lang/String;

    new-array v0, v5, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_CALENDAR_OPS:[I

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.CALL_PHONE"

    aput-object v1, v0, v3

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_CALL_PHONE_PERMS:[Ljava/lang/String;

    new-array v0, v4, [I

    const/16 v1, 0xd

    aput v1, v0, v3

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_CALL_PHONE_OPS:[I

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "android.permission.READ_SMS"

    aput-object v1, v0, v3

    const-string v1, "android.permission.WRITE_SMS"

    aput-object v1, v0, v4

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_SMS_LOG_PERMS:[Ljava/lang/String;

    new-array v0, v6, [I

    fill-array-data v0, :array_4

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_SMS_LOG_OPS:[I

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "android.permission.READ_SMS"

    aput-object v1, v0, v3

    const-string v1, "android.permission.WRITE_SMS"

    aput-object v1, v0, v4

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_MMS_LOG_PERMS:[Ljava/lang/String;

    new-array v0, v5, [I

    fill-array-data v0, :array_5

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_MMS_LOG_OPS:[I

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "android.permission.RECEIVE_SMS"

    aput-object v1, v0, v3

    const-string v1, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    aput-object v1, v0, v4

    const-string v1, "android.permission.RECEIVE_MMS"

    aput-object v1, v0, v5

    const-string v1, "android.permission.RECEIVE_WAP_PUSH"

    aput-object v1, v0, v7

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_RECEIVE_SMS_PERMS:[Ljava/lang/String;

    new-array v0, v6, [I

    fill-array-data v0, :array_6

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_RECEIVE_SMS_OPS:[I

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.SEND_SMS"

    aput-object v1, v0, v3

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_SEND_SMS_PERMS:[Ljava/lang/String;

    new-array v0, v4, [I

    const/16 v1, 0x14

    aput v1, v0, v3

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_SEND_SMS_OPS:[I

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.SEND_SMS"

    aput-object v1, v0, v3

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_SEND_MMS_PERMS:[Ljava/lang/String;

    new-array v0, v4, [I

    const/16 v1, 0x43

    aput v1, v0, v3

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_SEND_MMS_OPS:[I

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.WRITE_SETTINGS"

    aput-object v1, v0, v3

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_WRITE_SETTINGS_PERMS:[Ljava/lang/String;

    new-array v0, v4, [I

    const/16 v1, 0x17

    aput v1, v0, v3

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_WRITE_SETTINGS_OPS:[I

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_NOTIFICATIONS"

    aput-object v1, v0, v3

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_ACCESS_NOTIFICATION_PERMS:[Ljava/lang/String;

    new-array v0, v4, [I

    const/16 v1, 0x19

    aput v1, v0, v3

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_ACCESS_NOTIFICATION_OPS:[I

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.CAMERA"

    aput-object v1, v0, v3

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_CAMERA_PERMS:[Ljava/lang/String;

    new-array v0, v4, [I

    const/16 v1, 0x1a

    aput v1, v0, v3

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_CAMERA_OPS:[I

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.RECORD_AUDIO"

    aput-object v1, v0, v3

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_RECORD_AUDIO_PERMS:[Ljava/lang/String;

    new-array v0, v4, [I

    const/16 v1, 0x1b

    aput v1, v0, v3

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_RECORD_AUDIO_OPS:[I

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    aput-object v1, v0, v3

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_CHANGE_WIFI_PERMS:[Ljava/lang/String;

    new-array v0, v4, [I

    const/16 v1, 0x3f

    aput v1, v0, v3

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_CHANGE_WIFI_OPS:[I

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.BLUETOOTH"

    aput-object v1, v0, v3

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_CHANGE_BLUETOOTH_PERMS:[Ljava/lang/String;

    new-array v0, v4, [I

    const/16 v1, 0x40

    aput v1, v0, v3

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_CHANGE_BLUETOOTH_OPS:[I

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    aput-object v1, v0, v3

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_CHANGE_DATACONNECT_PERMS:[Ljava/lang/String;

    new-array v0, v4, [I

    const/16 v1, 0x41

    aput v1, v0, v3

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_CHANGE_DATACONNECT_OPS:[I

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.RECEIVE_BOOT_COMPLETED"

    aput-object v1, v0, v3

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_RECEIVE_BOOT_COMPLETED_PERMS:[Ljava/lang/String;

    new-array v0, v4, [I

    const/16 v1, 0x46

    aput v1, v0, v3

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_RECEIVE_BOOT_COMPLETED_OPS:[I

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.NFC"

    aput-object v1, v0, v3

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_NFC_PERMS:[Ljava/lang/String;

    new-array v0, v4, [I

    const/16 v1, 0x47

    aput v1, v0, v3

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_NFC_OPS:[I

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.READ_PHONE_STATE"

    aput-object v1, v0, v3

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_PHONE_INFO_PERMS:[Ljava/lang/String;

    new-array v0, v4, [I

    const/16 v1, 0x33

    aput v1, v0, v3

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_PHONE_INFO_OPS:[I

    new-array v0, v3, [Ljava/lang/String;

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_CLIPBOARD_PERMS:[Ljava/lang/String;

    new-array v0, v5, [I

    fill-array-data v0, :array_7

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_CLIPBOARD_OPS:[I

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.SYSTEM_ALERT_WINDOW"

    aput-object v1, v0, v3

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_SYSTEM_ALERT_WINDOW_PERMS:[Ljava/lang/String;

    new-array v0, v4, [I

    const/16 v1, 0x18

    aput v1, v0, v3

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_SYSTEM_ALERT_WINDOW_OPS:[I

    new-array v0, v4, [I

    const/16 v1, 0x4a

    aput v1, v0, v3

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_THREE_WAY_CALLING_OPS:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_ALL_PHONE_OPS:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_9

    sput-object v0, Landroid/app/AppOpsUtils;->TYPE_ALL_SMS_OPS:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0xa
        0xc
        0x29
        0x2a
    .end array-data

    :array_1
    .array-data 4
        0x4
        0x5
    .end array-data

    :array_2
    .array-data 4
        0x6
        0x7
    .end array-data

    :array_3
    .array-data 4
        0x8
        0x9
    .end array-data

    :array_4
    .array-data 4
        0xe
        0x15
        0xf
        0x16
    .end array-data

    :array_5
    .array-data 4
        0x44
        0x45
    .end array-data

    :array_6
    .array-data 4
        0x10
        0x11
        0x12
        0x13
    .end array-data

    :array_7
    .array-data 4
        0x1d
        0x1e
    .end array-data

    :array_8
    .array-data 4
        0xd
        0x4a
        0x4
        0x5
        0x6
        0x7
    .end array-data

    :array_9
    .array-data 4
        0x14
        0x43
        0xe
        0xf
        0x44
        0x45
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/lang/String;)V
    .locals 24
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "uid"    # I
    .param p3, "packageName"    # Ljava/lang/String;

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/AppOpsUtils;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const-string v2, "appops"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->aom:Landroid/app/AppOpsManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->pm:Landroid/content/pm/PackageManager;

    if-gez p2, :cond_0

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/app/AppOpsUtils;->isFirst:Z

    :goto_0
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/app/AppOpsUtils;->uid:I

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/app/AppOpsUtils;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x1040696

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    .local v17, "communicate_title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x1040697

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    .local v19, "internet_title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x1040698

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v20

    .local v20, "media_title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x1040699

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v23

    .local v23, "tool_title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x104069a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    .local v18, "device_title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x104069b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v22

    .local v22, "system_title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x104069c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v21

    .local v21, "other_title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x104069d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .local v5, "privacy_title":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x104069e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->LOCATION_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x104069f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->LOCATION_GROUP_DESC:Ljava/lang/String;

    new-instance v2, Landroid/app/AppOpsUtils$AppOpsItem;

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Landroid/app/AppOpsUtils;->LOCATION_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/app/AppOpsUtils;->LOCATION_GROUP_DESC:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v9, v3, [Ljava/lang/String;

    sget-object v10, Landroid/app/AppOpsUtils;->TYPE_LOCATION_OPS:[I

    const/4 v11, 0x0

    const/4 v3, 0x7

    new-array v12, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    sget-object v13, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/4 v14, 0x0

    aget-object v13, v13, v14

    aput-object v13, v12, v3

    const/4 v3, 0x1

    sget-object v13, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/4 v14, 0x1

    aget-object v13, v13, v14

    aput-object v13, v12, v3

    const/4 v3, 0x2

    sget-object v13, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/4 v14, 0x2

    aget-object v13, v13, v14

    aput-object v13, v12, v3

    const/4 v3, 0x3

    sget-object v13, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v14, 0xa

    aget-object v13, v13, v14

    aput-object v13, v12, v3

    const/4 v3, 0x4

    sget-object v13, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v14, 0xc

    aget-object v13, v13, v14

    aput-object v13, v12, v3

    const/4 v3, 0x5

    sget-object v13, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v14, 0x29

    aget-object v13, v13, v14

    aput-object v13, v12, v3

    const/4 v3, 0x6

    sget-object v13, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v14, 0x2a

    aget-object v13, v13, v14

    aput-object v13, v12, v3

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v12}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->LOCATION_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406a0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->CONTACT_LOG_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406a1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->CONTACT_LOG_GROUP_DESC:Ljava/lang/String;

    new-instance v6, Landroid/app/AppOpsUtils$AppOpsItem;

    const/4 v8, 0x1

    const/4 v10, 0x3

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/AppOpsUtils;->CONTACT_LOG_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/AppOpsUtils;->CONTACT_LOG_GROUP_DESC:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    sget-object v14, Landroid/app/AppOpsUtils;->TYPE_CONTACT_LOG_OPS:[I

    const/4 v15, 0x0

    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    aput-object v3, v16, v2

    const/4 v2, 0x1

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    aput-object v3, v16, v2

    move-object/from16 v7, p0

    move-object/from16 v9, v17

    invoke-direct/range {v6 .. v16}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/app/AppOpsUtils;->CONTACT_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406a2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->CALL_LOG_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->CALL_LOG_GROUP_DESC:Ljava/lang/String;

    new-instance v6, Landroid/app/AppOpsUtils$AppOpsItem;

    const/4 v8, 0x1

    const/4 v10, 0x2

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/AppOpsUtils;->CALL_LOG_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/AppOpsUtils;->CALL_LOG_GROUP_DESC:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    sget-object v14, Landroid/app/AppOpsUtils;->TYPE_CALL_LOG_OPS:[I

    const/4 v15, 0x0

    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    aput-object v3, v16, v2

    const/4 v2, 0x1

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    aput-object v3, v16, v2

    move-object/from16 v7, p0

    move-object/from16 v9, v17

    invoke-direct/range {v6 .. v16}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/app/AppOpsUtils;->CALL_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406a4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->CALENDAR_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406a5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->CALENDAR_GROUP_DESC:Ljava/lang/String;

    new-instance v6, Landroid/app/AppOpsUtils$AppOpsItem;

    const/4 v8, 0x4

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/AppOpsUtils;->CALENDAR_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/AppOpsUtils;->CALENDAR_GROUP_DESC:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    sget-object v14, Landroid/app/AppOpsUtils;->TYPE_CALENDAR_OPS:[I

    const/4 v15, 0x0

    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    aput-object v3, v16, v2

    const/4 v2, 0x1

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v4, 0x9

    aget-object v3, v3, v4

    aput-object v3, v16, v2

    move-object/from16 v7, p0

    move-object/from16 v9, v23

    invoke-direct/range {v6 .. v16}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/app/AppOpsUtils;->CALENDAR_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->CALL_PHONE_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406a7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->CALL_PHONE_GROUP_DESC:Ljava/lang/String;

    new-instance v6, Landroid/app/AppOpsUtils$AppOpsItem;

    const/4 v8, 0x1

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/AppOpsUtils;->CALL_PHONE_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/AppOpsUtils;->CALL_PHONE_GROUP_DESC:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    sget-object v14, Landroid/app/AppOpsUtils;->TYPE_CALL_PHONE_OPS:[I

    const/4 v15, 0x1

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v4, 0xd

    aget-object v3, v3, v4

    aput-object v3, v16, v2

    move-object/from16 v7, p0

    move-object/from16 v9, v17

    invoke-direct/range {v6 .. v16}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/app/AppOpsUtils;->CALL_PHONE_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    new-instance v6, Landroid/app/AppOpsUtils$AppOpsItem;

    const/4 v8, 0x1

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/AppOpsUtils;->CALL_PHONE_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/AppOpsUtils;->CALL_PHONE_GROUP_DESC:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    sget-object v14, Landroid/app/AppOpsUtils;->TYPE_ALL_PHONE_OPS:[I

    const/4 v15, 0x1

    const/4 v2, 0x6

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v4, 0xd

    aget-object v3, v3, v4

    aput-object v3, v16, v2

    const/4 v2, 0x1

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    aput-object v3, v16, v2

    const/4 v2, 0x2

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    aput-object v3, v16, v2

    const/4 v2, 0x3

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/4 v4, 0x6

    aget-object v3, v3, v4

    aput-object v3, v16, v2

    const/4 v2, 0x4

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/4 v4, 0x7

    aget-object v3, v3, v4

    aput-object v3, v16, v2

    const/4 v2, 0x5

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v4, 0x3c

    aget-object v3, v3, v4

    aput-object v3, v16, v2

    move-object/from16 v7, p0

    move-object/from16 v9, v17

    invoke-direct/range {v6 .. v16}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/app/AppOpsUtils;->ALL_PHONE_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406a8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->SMS_LOG_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406a9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->SMS_LOG_GROUP_DESC:Ljava/lang/String;

    new-instance v6, Landroid/app/AppOpsUtils$AppOpsItem;

    const/4 v8, 0x1

    const/4 v10, 0x5

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/AppOpsUtils;->SMS_LOG_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/AppOpsUtils;->SMS_LOG_GROUP_DESC:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    sget-object v14, Landroid/app/AppOpsUtils;->TYPE_SMS_LOG_OPS:[I

    const/4 v15, 0x0

    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v4, 0xe

    aget-object v3, v3, v4

    aput-object v3, v16, v2

    const/4 v2, 0x1

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v4, 0xf

    aget-object v3, v3, v4

    aput-object v3, v16, v2

    move-object/from16 v7, p0

    move-object/from16 v9, v17

    invoke-direct/range {v6 .. v16}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/app/AppOpsUtils;->SMS_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->MMS_LOG_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->MMS_LOG_GROUP_DESC:Ljava/lang/String;

    new-instance v6, Landroid/app/AppOpsUtils$AppOpsItem;

    const/4 v8, 0x1

    const/4 v10, 0x7

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/AppOpsUtils;->MMS_LOG_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/AppOpsUtils;->MMS_LOG_GROUP_DESC:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    sget-object v14, Landroid/app/AppOpsUtils;->TYPE_MMS_LOG_OPS:[I

    const/4 v15, 0x0

    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v4, 0x35

    aget-object v3, v3, v4

    aput-object v3, v16, v2

    const/4 v2, 0x1

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v4, 0x36

    aget-object v3, v3, v4

    aput-object v3, v16, v2

    move-object/from16 v7, p0

    move-object/from16 v9, v17

    invoke-direct/range {v6 .. v16}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/app/AppOpsUtils;->MMS_LOG_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406ac

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->RECEIVE_SMS_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406ad

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->RECEIVE_SMS_GROUP_DESC:Ljava/lang/String;

    new-instance v6, Landroid/app/AppOpsUtils$AppOpsItem;

    const/4 v8, 0x1

    const/16 v10, 0x8

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/AppOpsUtils;->RECEIVE_SMS_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/AppOpsUtils;->RECEIVE_SMS_GROUP_DESC:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    sget-object v14, Landroid/app/AppOpsUtils;->TYPE_RECEIVE_SMS_OPS:[I

    const/4 v15, 0x0

    const/4 v2, 0x4

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v4, 0x10

    aget-object v3, v3, v4

    aput-object v3, v16, v2

    const/4 v2, 0x1

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v4, 0x11

    aget-object v3, v3, v4

    aput-object v3, v16, v2

    const/4 v2, 0x2

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v4, 0x12

    aget-object v3, v3, v4

    aput-object v3, v16, v2

    const/4 v2, 0x3

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v4, 0x13

    aget-object v3, v3, v4

    aput-object v3, v16, v2

    move-object/from16 v7, p0

    move-object/from16 v9, v17

    invoke-direct/range {v6 .. v16}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/app/AppOpsUtils;->RECEIVE_SMS_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406ae

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->SEND_SMS_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->SEND_SMS_GROUP_DESC:Ljava/lang/String;

    new-instance v6, Landroid/app/AppOpsUtils$AppOpsItem;

    const/4 v8, 0x1

    const/4 v10, 0x4

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/AppOpsUtils;->SEND_SMS_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/AppOpsUtils;->SEND_SMS_GROUP_DESC:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    sget-object v14, Landroid/app/AppOpsUtils;->TYPE_SEND_SMS_OPS:[I

    const/4 v15, 0x1

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v4, 0x14

    aget-object v3, v3, v4

    aput-object v3, v16, v2

    move-object/from16 v7, p0

    move-object/from16 v9, v17

    invoke-direct/range {v6 .. v16}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/app/AppOpsUtils;->SEND_SMS_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    new-instance v6, Landroid/app/AppOpsUtils$AppOpsItem;

    const/4 v8, 0x1

    const/4 v10, 0x2

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/AppOpsUtils;->SEND_SMS_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/AppOpsUtils;->SEND_SMS_GROUP_DESC:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    sget-object v14, Landroid/app/AppOpsUtils;->TYPE_ALL_SMS_OPS:[I

    const/4 v15, 0x1

    const/16 v2, 0xa

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v4, 0x34

    aget-object v3, v3, v4

    aput-object v3, v16, v2

    const/4 v2, 0x1

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v4, 0x14

    aget-object v3, v3, v4

    aput-object v3, v16, v2

    const/4 v2, 0x2

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v4, 0x10

    aget-object v3, v3, v4

    aput-object v3, v16, v2

    const/4 v2, 0x3

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v4, 0x11

    aget-object v3, v3, v4

    aput-object v3, v16, v2

    const/4 v2, 0x4

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v4, 0x12

    aget-object v3, v3, v4

    aput-object v3, v16, v2

    const/4 v2, 0x5

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v4, 0x13

    aget-object v3, v3, v4

    aput-object v3, v16, v2

    const/4 v2, 0x6

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v4, 0x35

    aget-object v3, v3, v4

    aput-object v3, v16, v2

    const/4 v2, 0x7

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v4, 0x36

    aget-object v3, v3, v4

    aput-object v3, v16, v2

    const/16 v2, 0x8

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v4, 0xe

    aget-object v3, v3, v4

    aput-object v3, v16, v2

    const/16 v2, 0x9

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v4, 0xf

    aget-object v3, v3, v4

    aput-object v3, v16, v2

    move-object/from16 v7, p0

    move-object/from16 v9, v17

    invoke-direct/range {v6 .. v16}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/app/AppOpsUtils;->ALL_SMS_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406b0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->SEND_MMS_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->SEND_MMS_GROUP_DESC:Ljava/lang/String;

    new-instance v6, Landroid/app/AppOpsUtils$AppOpsItem;

    const/4 v8, 0x1

    const/4 v10, 0x6

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/AppOpsUtils;->SEND_MMS_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/AppOpsUtils;->SEND_MMS_GROUP_DESC:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    sget-object v14, Landroid/app/AppOpsUtils;->TYPE_SEND_MMS_OPS:[I

    const/4 v15, 0x1

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v4, 0x34

    aget-object v3, v3, v4

    aput-object v3, v16, v2

    move-object/from16 v7, p0

    move-object/from16 v9, v17

    invoke-direct/range {v6 .. v16}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/app/AppOpsUtils;->SEND_MMS_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406b2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->WRITE_SETTINGS_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->WRITE_SETTINGS_GROUP_DESC:Ljava/lang/String;

    new-instance v6, Landroid/app/AppOpsUtils$AppOpsItem;

    const/4 v8, 0x6

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/AppOpsUtils;->WRITE_SETTINGS_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/AppOpsUtils;->WRITE_SETTINGS_GROUP_DESC:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    sget-object v14, Landroid/app/AppOpsUtils;->TYPE_WRITE_SETTINGS_OPS:[I

    const/4 v15, 0x0

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v4, 0x17

    aget-object v3, v3, v4

    aput-object v3, v16, v2

    move-object/from16 v7, p0

    move-object/from16 v9, v22

    invoke-direct/range {v6 .. v16}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/app/AppOpsUtils;->WRITE_SETTINGS_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406b4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->ACCESS_NOTIFICATION_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406b5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->ACCESS_NOTIFICATION_GORUP_DESC:Ljava/lang/String;

    new-instance v6, Landroid/app/AppOpsUtils$AppOpsItem;

    const/4 v8, 0x7

    const-string v9, ""

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/AppOpsUtils;->ACCESS_NOTIFICATION_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/AppOpsUtils;->ACCESS_NOTIFICATION_GORUP_DESC:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    sget-object v14, Landroid/app/AppOpsUtils;->TYPE_ACCESS_NOTIFICATION_OPS:[I

    const/4 v15, 0x0

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v4, 0x19

    aget-object v3, v3, v4

    aput-object v3, v16, v2

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v16}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/app/AppOpsUtils;->ACCESS_NOTIFICATION_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406b6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->CAMERA_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406b7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->CAMERA_GROUP_DESC:Ljava/lang/String;

    new-instance v6, Landroid/app/AppOpsUtils$AppOpsItem;

    const/4 v8, 0x3

    const/4 v10, 0x2

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/AppOpsUtils;->CAMERA_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/AppOpsUtils;->CAMERA_GROUP_DESC:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    sget-object v14, Landroid/app/AppOpsUtils;->TYPE_CAMERA_OPS:[I

    const/4 v15, 0x0

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v4, 0x1a

    aget-object v3, v3, v4

    aput-object v3, v16, v2

    move-object/from16 v7, p0

    move-object/from16 v9, v20

    invoke-direct/range {v6 .. v16}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/app/AppOpsUtils;->CAMERA_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->RECORD_AUDIO_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406b9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->RECORD_AUDIO_GROUP_DESC:Ljava/lang/String;

    new-instance v6, Landroid/app/AppOpsUtils$AppOpsItem;

    const/4 v8, 0x3

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/AppOpsUtils;->RECORD_AUDIO_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/AppOpsUtils;->RECORD_AUDIO_GROUP_DESC:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    sget-object v14, Landroid/app/AppOpsUtils;->TYPE_RECORD_AUDIO_OPS:[I

    const/4 v15, 0x0

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v4, 0x1b

    aget-object v3, v3, v4

    aput-object v3, v16, v2

    move-object/from16 v7, p0

    move-object/from16 v9, v20

    invoke-direct/range {v6 .. v16}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/app/AppOpsUtils;->RECORD_AUDIO_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406ba

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->WIFI_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->WIFI_GROUP_DESC:Ljava/lang/String;

    new-instance v6, Landroid/app/AppOpsUtils$AppOpsItem;

    const/4 v8, 0x2

    const/4 v10, 0x2

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/AppOpsUtils;->WIFI_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/AppOpsUtils;->WIFI_GROUP_DESC:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    sget-object v14, Landroid/app/AppOpsUtils;->TYPE_CHANGE_WIFI_OPS:[I

    const/4 v15, 0x0

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v4, 0x30

    aget-object v3, v3, v4

    aput-object v3, v16, v2

    move-object/from16 v7, p0

    move-object/from16 v9, v19

    invoke-direct/range {v6 .. v16}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/app/AppOpsUtils;->WIFI_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406bc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->BLUETOOTH_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406bd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->BLUETOOTH_GROUP_DESC:Ljava/lang/String;

    new-instance v6, Landroid/app/AppOpsUtils$AppOpsItem;

    const/4 v8, 0x2

    const/4 v10, 0x3

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/AppOpsUtils;->BLUETOOTH_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/AppOpsUtils;->BLUETOOTH_GROUP_DESC:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    sget-object v14, Landroid/app/AppOpsUtils;->TYPE_CHANGE_BLUETOOTH_OPS:[I

    const/4 v15, 0x0

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v4, 0x31

    aget-object v3, v3, v4

    aput-object v3, v16, v2

    move-object/from16 v7, p0

    move-object/from16 v9, v19

    invoke-direct/range {v6 .. v16}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/app/AppOpsUtils;->BLUETOOTH_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406be

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->DATACONNECT_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406bf

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->DATACONNECT_GROUP_DESC:Ljava/lang/String;

    new-instance v6, Landroid/app/AppOpsUtils$AppOpsItem;

    const/4 v8, 0x2

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/AppOpsUtils;->DATACONNECT_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/AppOpsUtils;->DATACONNECT_GROUP_DESC:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    sget-object v14, Landroid/app/AppOpsUtils;->TYPE_CHANGE_DATACONNECT_OPS:[I

    const/4 v15, 0x1

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v4, 0x32

    aget-object v3, v3, v4

    aput-object v3, v16, v2

    move-object/from16 v7, p0

    move-object/from16 v9, v19

    invoke-direct/range {v6 .. v16}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/app/AppOpsUtils;->DATACONNECT_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406c0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->AUTOBOOT_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406c1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->AUTOBOOT_GROUP_DESC:Ljava/lang/String;

    new-instance v6, Landroid/app/AppOpsUtils$AppOpsItem;

    const/4 v8, 0x0

    const-string v9, ""

    const/4 v10, 0x2

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/AppOpsUtils;->AUTOBOOT_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/AppOpsUtils;->AUTOBOOT_GROUP_DESC:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    sget-object v14, Landroid/app/AppOpsUtils;->TYPE_RECEIVE_BOOT_COMPLETED_OPS:[I

    const/4 v15, 0x0

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v4, 0x37

    aget-object v3, v3, v4

    aput-object v3, v16, v2

    move-object/from16 v7, p0

    invoke-direct/range {v6 .. v16}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/app/AppOpsUtils;->AUTOBOOT_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->NFC_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406c3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->NFC_GROUP_DESC:Ljava/lang/String;

    new-instance v6, Landroid/app/AppOpsUtils$AppOpsItem;

    const/4 v8, 0x2

    const/4 v10, 0x4

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/AppOpsUtils;->NFC_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/AppOpsUtils;->NFC_GROUP_DESC:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    sget-object v14, Landroid/app/AppOpsUtils;->TYPE_NFC_OPS:[I

    const/4 v15, 0x1

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v4, 0x38

    aget-object v3, v3, v4

    aput-object v3, v16, v2

    move-object/from16 v7, p0

    move-object/from16 v9, v19

    invoke-direct/range {v6 .. v16}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/app/AppOpsUtils;->NFC_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406c4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->PHONE_INFO_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406c5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->PHONE_INFO_GROUP_DESC:Ljava/lang/String;

    new-instance v6, Landroid/app/AppOpsUtils$AppOpsItem;

    const/4 v8, 0x5

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/AppOpsUtils;->PHONE_INFO_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/AppOpsUtils;->PHONE_INFO_GROUP_DESC:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    sget-object v14, Landroid/app/AppOpsUtils;->TYPE_PHONE_INFO_OPS:[I

    const/4 v15, 0x0

    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v7, p0

    move-object/from16 v9, v18

    invoke-direct/range {v6 .. v16}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/app/AppOpsUtils;->PHONE_INFO_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->SYSTEM_ALERT_WINDOW_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406cb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->SYSTEM_ALERT_WINDOW_GROUP_DESC:Ljava/lang/String;

    new-instance v6, Landroid/app/AppOpsUtils$AppOpsItem;

    const/16 v8, 0x8

    const/4 v10, 0x1

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/AppOpsUtils;->SYSTEM_ALERT_WINDOW_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/AppOpsUtils;->SYSTEM_ALERT_WINDOW_GROUP_DESC:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    sget-object v14, Landroid/app/AppOpsUtils;->TYPE_SYSTEM_ALERT_WINDOW_OPS:[I

    const/4 v15, 0x0

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v4, 0x18

    aget-object v3, v3, v4

    aput-object v3, v16, v2

    move-object/from16 v7, p0

    move-object/from16 v9, v21

    invoke-direct/range {v6 .. v16}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/app/AppOpsUtils;->SYSTEM_ALERT_WINDOW_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406cc

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->THREE_WAY_CALLING_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/app/AppOpsUtils;->res:Landroid/content/res/Resources;

    const v3, 0x10406cd

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Landroid/app/AppOpsUtils;->THREE_WAY_CALLING_GROUP_DESC:Ljava/lang/String;

    new-instance v6, Landroid/app/AppOpsUtils$AppOpsItem;

    const/16 v8, 0x8

    const/4 v10, 0x2

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/app/AppOpsUtils;->THREE_WAY_CALLING_GROUP_NAME:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/app/AppOpsUtils;->THREE_WAY_CALLING_GROUP_DESC:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v13, v2, [Ljava/lang/String;

    sget-object v14, Landroid/app/AppOpsUtils;->TYPE_THREE_WAY_CALLING_OPS:[I

    const/4 v15, 0x0

    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    const/4 v2, 0x0

    sget-object v3, Landroid/app/AppOpsManager;->sOpNames:[Ljava/lang/String;

    const/16 v4, 0x3c

    aget-object v3, v3, v4

    aput-object v3, v16, v2

    move-object/from16 v7, p0

    move-object/from16 v9, v21

    invoke-direct/range {v6 .. v16}, Landroid/app/AppOpsUtils$AppOpsItem;-><init>(Landroid/app/AppOpsUtils;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[IZ[Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v6, v0, Landroid/app/AppOpsUtils;->THREE_WAY_CALLING_ITEM:Landroid/app/AppOpsUtils$AppOpsItem;

    return-void

    .end local v5    # "privacy_title":Ljava/lang/String;
    .end local v17    # "communicate_title":Ljava/lang/String;
    .end local v18    # "device_title":Ljava/lang/String;
    .end local v19    # "internet_title":Ljava/lang/String;
    .end local v20    # "media_title":Ljava/lang/String;
    .end local v21    # "other_title":Ljava/lang/String;
    .end local v22    # "system_title":Ljava/lang/String;
    .end local v23    # "tool_title":Ljava/lang/String;
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/app/AppOpsUtils;->isFirst:Z

    goto/16 :goto_0
.end method

.method public static has([II)Z
    .locals 5
    .param p0, "ints"    # [I
    .param p1, "target"    # I

    .prologue
    move-object v0, p0

    .local v0, "arr$":[I
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, v0, v2

    .local v1, "i":I
    if-ne v1, p1, :cond_0

    const/4 v4, 0x1

    .end local v1    # "i":I
    :goto_1
    return v4

    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "i":I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
