.class public Lcom/android/internal/telephony/logdigger/Constant;
.super Ljava/lang/Object;
.source "Constant.java"


# static fields
.field public static final BASEBAND_VERION:Ljava/lang/String; = "gsm.version.baseband"

.field public static final CATEGORY_TELEPHONY_CALL:I = 0x2

.field public static final CATEGORY_TELEPHONY_DATA:I = 0x3

.field public static final CATEGORY_TELEPHONY_NETWORK:I = 0x1

.field public static LOG_FILE_NAME:Ljava/lang/String; = null

.field public static final LOG_HEAD_STYLE:Ljava/lang/String; = "------------------------MODEM KEY INFORMATION-----------------------------"

.field public static final LOG_PROPERTY_HEAD_STYLE:Ljava/lang/String; = "------------------------MODEM PROPERTY-----------------------------"

.field public static LOG_SAVE_FILE_NAME:Ljava/lang/String; = null

.field public static LOG_SAVE_FILE_PLUS_PATH:Ljava/lang/String; = null

.field public static LOG_SAVE_FILE_ROOT_PATH:Ljava/lang/String; = null

.field public static LOG_SAVE_PATH_MODEM:Ljava/lang/String; = null

.field public static final LOG_TAG_KEY_INFO:Ljava/lang/String; = "[KEY INFO]"

.field public static final LOG_TAG_MBN:Ljava/lang/String; = "[MBN]"

.field public static final LOG_TAG_MODEM_PROP:Ljava/lang/String; = "[MODEM PROPERTY]"

.field public static final LOG_TAG_RADIO_INFO:Ljava/lang/String; = "[RADIO INFO]"

.field public static final LOG_TAG_STUB:Ljava/lang/String; = "[STUB]"

.field public static MAX_SIZE:J = 0x0L

.field public static final MSIM_STACKID_0:Ljava/lang/String; = "persist.radio.msim.stackid_0"

.field public static final MSIM_STACKID_1:Ljava/lang/String; = "persist.radio.msim.stackid_1"

.field public static M_UNIT:J = 0x0L

.field public static final NETWORK_TYPE:Ljava/lang/String; = "gsm.network.type"

.field public static final OPERATOR_ALPHA:Ljava/lang/String; = "gsm.operator.alpha"

.field public static final SEPARATOR:Ljava/lang/String;

.field public static final SIM_STATE:Ljava/lang/String; = "gsm.sim.state"

.field public static final TYPE_CALL_FAIL:I = 0xc9

.field public static final TYPE_DATA_ALLOW_DATA_FAIL:I = 0x12f

.field public static final TYPE_DATA_DETECT_STALL:I = 0x12e

.field public static final TYPE_DATA_NOT_SETUP:I = 0x130

.field public static final TYPE_DATA_SETUP_FAIL:I = 0x12d

.field public static final TYPE_DATA_UNKNOWN:I = 0x12c

.field public static final TYPE_LOST_NETWORK:I = 0x65

.field public static final UNKNOWN:Ljava/lang/String; = "unknown"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/logdigger/Constant;->SEPARATOR:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/ModemKeyInfo.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/logdigger/Constant;->LOG_FILE_NAME:Ljava/lang/String;

    .line 29
    const-string v0, "ModemKeyInfo.txt"

    sput-object v0, Lcom/android/internal/telephony/logdigger/Constant;->LOG_SAVE_FILE_NAME:Ljava/lang/String;

    .line 30
    const-string v0, "sdcard/logs/"

    sput-object v0, Lcom/android/internal/telephony/logdigger/Constant;->LOG_SAVE_FILE_ROOT_PATH:Ljava/lang/String;

    .line 31
    const-string v0, "modemlog/"

    sput-object v0, Lcom/android/internal/telephony/logdigger/Constant;->LOG_SAVE_FILE_PLUS_PATH:Ljava/lang/String;

    .line 32
    const-string v0, "/data/modemlog/"

    sput-object v0, Lcom/android/internal/telephony/logdigger/Constant;->LOG_SAVE_PATH_MODEM:Ljava/lang/String;

    .line 35
    const-wide/32 v0, 0x100000

    sput-wide v0, Lcom/android/internal/telephony/logdigger/Constant;->M_UNIT:J

    .line 36
    const-wide/16 v0, 0x2

    sput-wide v0, Lcom/android/internal/telephony/logdigger/Constant;->MAX_SIZE:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
