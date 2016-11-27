.class public Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;
.super Landroid/os/Handler;
.source "LeuiNotificationHelper.java"


# static fields
.field private static DISABLE_TURN_ON_SCREEN_FOR_ZENMODE:Z = false

.field private static final ENABLE_NOTIFICATION_TURNING_ON:Z = true

.field private static final ENABLE_THIRD_PART_APP_STATISTICAL:Z = true

.field private static final LETV_CLONE:Ljava/lang/String; = ".LetvClone"

.field private static final MESSAGE_SEND_BROADCAST:I = 0x1

.field private static final SAVE_TO_FILE_DELAY:J = 0x7d0L

.field private static mBootCompleted:Z

.field private static notificationOnKeyguardDefaultEnableRegionMap:Ljava/util/HashMap;
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

.field private static notificationOnKeyguardDefaultValueCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private TAG:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private mDisableProximityRunnable:Ljava/lang/Runnable;

.field private mNotificationByStatistical:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mNotificationHeadsUpNeedSave:Z

.field private mNotificationOnKeyguardNeedSave:Z

.field private mNotificationSubscriptNeedSave:Z

.field private mNotificationSubscriptSettingsNeedSave:Z

.field private mPM:Landroid/os/PowerManager;

.field private mProximityListener:Landroid/hardware/SensorEventListener;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field mProximitySensorEnabled:Z

.field private mProximityThreshold:F

.field private mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mSaveNotificationHeadsUpRunnable:Ljava/lang/Runnable;

.field private mSaveNotificationOnKeyguardRunnable:Ljava/lang/Runnable;

.field private mSaveNotificationSubscriptRunnable:Ljava/lang/Runnable;

.field private mSaveNotificationSubscriptSettingRunnable:Ljava/lang/Runnable;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeUpScreenRunnable:Ljava/lang/Runnable;

.field private mXmlIntegerHelper:Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;

.field private mXmlStringHelper:Lbase/core/java/com/letv/leui/notification/XmlStringHelper;

.field private notificationHeadsUpEnableMap:Ljava/util/HashMap;
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

.field private notificationOnKeyguardEnableMap:Ljava/util/HashMap;
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

.field private notificationSubscriptLinkMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private notificationSubscriptMap:Ljava/util/HashMap;
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

.field private notificationSubscriptPkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private notificationSubscriptSettingMap:Ljava/util/HashMap;
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

.field private systemPriorityMap:Ljava/util/HashMap;
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


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 54
    sput-boolean v2, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->DISABLE_TURN_ON_SCREEN_FOR_ZENMODE:Z

    .line 55
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationOnKeyguardDefaultValueCache:Ljava/util/HashMap;

    .line 270
    sput-boolean v2, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mBootCompleted:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/util/HashMap;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "Looper"    # Landroid/os/Looper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "priorityMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 318
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 51
    iput-boolean v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mProximitySensorEnabled:Z

    .line 52
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mProximityThreshold:F

    .line 130
    new-instance v0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$1;

    invoke-direct {v0, p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$1;-><init>(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)V

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 203
    new-instance v0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$2;

    invoke-direct {v0, p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$2;-><init>(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)V

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mDisableProximityRunnable:Ljava/lang/Runnable;

    .line 212
    new-instance v0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$3;

    invoke-direct {v0, p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$3;-><init>(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)V

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mWakeUpScreenRunnable:Ljava/lang/Runnable;

    .line 255
    const-class v0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->TAG:Ljava/lang/String;

    .line 256
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationByStatistical:Ljava/util/HashMap;

    .line 257
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptPkgMap:Ljava/util/HashMap;

    .line 264
    new-instance v0, Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;

    invoke-direct {v0}, Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;-><init>()V

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mXmlIntegerHelper:Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;

    .line 265
    new-instance v0, Lbase/core/java/com/letv/leui/notification/XmlStringHelper;

    invoke-direct {v0}, Lbase/core/java/com/letv/leui/notification/XmlStringHelper;-><init>()V

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mXmlStringHelper:Lbase/core/java/com/letv/leui/notification/XmlStringHelper;

    .line 271
    iput-boolean v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationSubscriptNeedSave:Z

    .line 272
    iput-boolean v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationSubscriptSettingsNeedSave:Z

    .line 273
    iput-boolean v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationOnKeyguardNeedSave:Z

    .line 274
    iput-boolean v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationHeadsUpNeedSave:Z

    .line 285
    new-instance v0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$4;

    invoke-direct {v0, p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$4;-><init>(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)V

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mSaveNotificationSubscriptRunnable:Ljava/lang/Runnable;

    .line 293
    new-instance v0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$5;

    invoke-direct {v0, p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$5;-><init>(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)V

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mSaveNotificationSubscriptSettingRunnable:Ljava/lang/Runnable;

    .line 301
    new-instance v0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$6;

    invoke-direct {v0, p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$6;-><init>(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)V

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mSaveNotificationOnKeyguardRunnable:Ljava/lang/Runnable;

    .line 309
    new-instance v0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$7;

    invoke-direct {v0, p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$7;-><init>(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)V

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mSaveNotificationHeadsUpRunnable:Ljava/lang/Runnable;

    .line 319
    iput-object p1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->context:Landroid/content/Context;

    .line 320
    iput-object p3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->systemPriorityMap:Ljava/util/HashMap;

    .line 321
    new-instance v0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$8;

    invoke-direct {v0, p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$8;-><init>(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)V

    invoke-virtual {p0, v0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->post(Ljava/lang/Runnable;)Z

    .line 330
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "notification.disable_turn_on_screen_for_zenmod"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->DISABLE_TURN_ON_SCREEN_FOR_ZENMODE:Z

    .line 332
    return-void
.end method

.method static synthetic access$000(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)F
    .locals 1
    .param p0, "x0"    # Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    .prologue
    .line 43
    iget v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mProximityThreshold:F

    return v0
.end method

.method static synthetic access$100(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;Z)V
    .locals 0
    .param p0, "x0"    # Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->proximityChangedLocked(Z)V

    return-void
.end method

.method static synthetic access$1002(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationHeadsUpNeedSave:Z

    return p1
.end method

.method static synthetic access$1100(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)V
    .locals 0
    .param p0, "x0"    # Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    .prologue
    .line 43
    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->saveNotificationHeadsUpMapToFile()V

    return-void
.end method

.method static synthetic access$1200(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)V
    .locals 0
    .param p0, "x0"    # Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    .prologue
    .line 43
    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->readNotificationSubscriptMapFromFile()V

    return-void
.end method

.method static synthetic access$1300(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)V
    .locals 0
    .param p0, "x0"    # Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    .prologue
    .line 43
    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->readNotificationSubscriptSettingMapFromFile()V

    return-void
.end method

.method static synthetic access$1400(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)V
    .locals 0
    .param p0, "x0"    # Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    .prologue
    .line 43
    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->readNotificationOnKeyguardEnableMapFromFile()V

    return-void
.end method

.method static synthetic access$1500(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)V
    .locals 0
    .param p0, "x0"    # Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    .prologue
    .line 43
    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->readNotificationHeadsUpEnableMapFromFile()V

    return-void
.end method

.method static synthetic access$1600(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    .prologue
    .line 43
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1700(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    .prologue
    .line 43
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptPkgMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1800(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    .prologue
    .line 43
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mSaveNotificationSubscriptRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1900(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0
    .param p0, "x0"    # Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # I
    .param p4, "x4"    # Z

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->broadcastSubscriptChange(Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic access$200(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)V
    .locals 0
    .param p0, "x0"    # Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    .prologue
    .line 43
    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->disableProximityLockLocked()V

    return-void
.end method

.method static synthetic access$2000(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->getLinkPkg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    .prologue
    .line 43
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptSettingMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2200(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    .prologue
    .line 43
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mSaveNotificationSubscriptSettingRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2300(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    .prologue
    .line 43
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationOnKeyguardEnableMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2400(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    .prologue
    .line 43
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mSaveNotificationOnKeyguardRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2500(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    .prologue
    .line 43
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationHeadsUpEnableMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$2600(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    .prologue
    .line 43
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mSaveNotificationHeadsUpRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$300(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)V
    .locals 0
    .param p0, "x0"    # Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    .prologue
    .line 43
    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->wakeUpScreen()V

    return-void
.end method

.method static synthetic access$402(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationSubscriptNeedSave:Z

    return p1
.end method

.method static synthetic access$500(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)V
    .locals 0
    .param p0, "x0"    # Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    .prologue
    .line 43
    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->saveNotificationSubscriptMapToFile()V

    return-void
.end method

.method static synthetic access$602(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationSubscriptSettingsNeedSave:Z

    return p1
.end method

.method static synthetic access$700(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)V
    .locals 0
    .param p0, "x0"    # Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    .prologue
    .line 43
    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->saveNotificationSubscriptSettingMapToFile()V

    return-void
.end method

.method static synthetic access$802(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;
    .param p1, "x1"    # Z

    .prologue
    .line 43
    iput-boolean p1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationOnKeyguardNeedSave:Z

    return p1
.end method

.method static synthetic access$900(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;)V
    .locals 0
    .param p0, "x0"    # Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;

    .prologue
    .line 43
    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->saveNotificationOnKeyguardMapToFile()V

    return-void
.end method

.method private broadcastSubscriptChange(Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 5
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "count"    # I
    .param p4, "isClone"    # Z

    .prologue
    const/4 v4, 0x1

    .line 490
    sget-boolean v2, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mBootCompleted:Z

    if-nez v2, :cond_0

    .line 491
    const-string v2, "1"

    const-string v3, "sys.boot_completed"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    sput-boolean v2, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mBootCompleted:Z

    .line 493
    :cond_0
    sget-boolean v2, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mBootCompleted:Z

    if-nez v2, :cond_1

    .line 494
    iget-object v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "broadcastSubscriptChange(),reject sendBroadcast before  completed. action:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :goto_0
    return-void

    .line 497
    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 498
    .local v0, "i":Landroid/content/Intent;
    const-string v2, "key"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 499
    const-string v2, "value"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 500
    if-eqz p4, :cond_2

    .line 501
    const-string v2, ".LetvClone"

    invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 502
    :cond_2
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    .line 503
    .local v1, "msg":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 504
    iput v4, v1, Landroid/os/Message;->what:I

    .line 505
    invoke-virtual {p0, v1}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private disableProximityLockLocked()V
    .locals 4

    .prologue
    .line 173
    iget-boolean v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mProximitySensorEnabled:Z

    if-eqz v2, :cond_1

    .line 175
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 177
    .local v0, "identity":J
    :try_start_0
    iget-object v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mProximityListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 183
    const-wide/16 v2, 0xa

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 186
    :goto_0
    iget-object v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 187
    iget-object v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 188
    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mProximitySensorEnabled:Z

    .line 190
    .end local v0    # "identity":J
    :cond_1
    return-void

    .line 179
    .restart local v0    # "identity":J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 184
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private enableProximityLockLocked()V
    .locals 6

    .prologue
    .line 148
    iget-boolean v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mProximitySensorEnabled:Z

    if-nez v2, :cond_1

    .line 149
    const/4 v2, 0x1

    iput-boolean v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mProximitySensorEnabled:Z

    .line 150
    iget-object v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 152
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 153
    .local v0, "identity":J
    iget-object v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v2, :cond_0

    .line 154
    iget-object v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mProximitySensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v2

    iput v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mProximityThreshold:F

    .line 157
    :cond_0
    :try_start_0
    iget-object v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mProximityListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 164
    iget-object v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mWakeUpScreenRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x12c

    invoke-virtual {p0, v2, v4, v5}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 165
    iget-object v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mDisableProximityRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0xbb8

    invoke-virtual {p0, v2, v4, v5}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 167
    .end local v0    # "identity":J
    :cond_1
    return-void

    .line 160
    .restart local v0    # "identity":J
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private getDefaultNotificationPriorityMap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 380
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mXmlIntegerHelper:Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;

    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1100007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;->read(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultNotificationSubscriptLinkMap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 384
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mXmlStringHelper:Lbase/core/java/com/letv/leui/notification/XmlStringHelper;

    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x110000a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbase/core/java/com/letv/leui/notification/XmlStringHelper;->read(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultNotificationSubscriptMap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 376
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mXmlIntegerHelper:Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;

    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1100009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;->read(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private getLinkPkg(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 665
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptLinkMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptLinkMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private getNotificationHeadsUpEnableSaveFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 347
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "notificationHeadsUpSettings.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getNotificationOnKeyguardDefaultValue(Landroid/content/Context;I)Z
    .locals 9
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 60
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "userKey":Ljava/lang/String;
    sget-object v6, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationOnKeyguardDefaultValueCache:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 62
    sget-object v4, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationOnKeyguardDefaultValueCache:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 78
    :cond_0
    :goto_0
    return v2

    .line 65
    :cond_1
    sget-object v6, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationOnKeyguardDefaultEnableRegionMap:Ljava/util/HashMap;

    if-nez v6, :cond_2

    .line 66
    new-instance v6, Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;

    invoke-direct {v6}, Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1100008

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v7

    invoke-virtual {v6, v7}, Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;->read(Ljava/io/InputStream;)Ljava/util/HashMap;

    move-result-object v6

    sput-object v6, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationOnKeyguardDefaultEnableRegionMap:Ljava/util/HashMap;

    .line 70
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "leui_country_area_region_settings"

    invoke-static {v6, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "regionValue":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    sget-object v6, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationOnKeyguardDefaultEnableRegionMap:Ljava/util/HashMap;

    invoke-virtual {v6, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v2, v4

    .line 74
    .local v2, "result":Z
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "device_provisioned"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_4

    move v0, v4

    .line 76
    .local v0, "provisioned":Z
    :goto_2
    if-eqz v0, :cond_0

    .line 77
    sget-object v4, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationOnKeyguardDefaultValueCache:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .end local v0    # "provisioned":Z
    .end local v2    # "result":Z
    :cond_3
    move v2, v5

    .line 71
    goto :goto_1

    .restart local v2    # "result":Z
    :cond_4
    move v0, v5

    .line 74
    goto :goto_2
.end method

.method private getNotificationOnKeyguardEnableSaveFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 343
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "notificationOnKeyguardSettings.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getNotificationSubscriptSaveFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 335
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "notificationSubscript.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private getNotificationSubscriptSettingSaveFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 339
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "notificationSubscriptSettings.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static isInternalApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 233
    const/4 v2, 0x0

    .line 234
    .local v2, "result":Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 236
    const-string v4, "com.android.vending"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "com.google."

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 250
    :cond_0
    :goto_0
    return v2

    .line 241
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 243
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_2

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    const/4 v2, 0x1

    :goto_1
    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    .line 245
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 246
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private onPackageDataCleared(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 670
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 671
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_3

    .line 672
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    .line 673
    .local v4, "pkg":Ljava/lang/String;
    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPackageDataCleared(), pkg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 675
    .local v3, "packageStartKey":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x2

    if-le v5, v6, :cond_1

    .line 676
    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptMap:Ljava/util/HashMap;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 677
    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 678
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 679
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 681
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 683
    const/4 v5, 0x0

    invoke-virtual {p0, v2, v5}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->setNotificationSubscript(Ljava/lang/String;I)Z

    goto :goto_0

    .line 688
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "key":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPackageDataCleared(),pkg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    .end local v3    # "packageStartKey":Ljava/lang/String;
    .end local v4    # "pkg":Ljava/lang/String;
    :cond_2
    :goto_1
    return-void

    .line 691
    :cond_3
    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPackageDataCleared(),data:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private proximityChangedLocked(Z)V
    .locals 1
    .param p1, "coverBySomething"    # Z

    .prologue
    .line 193
    iget-boolean v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mProximitySensorEnabled:Z

    if-nez v0, :cond_0

    .line 201
    :goto_0
    return-void

    .line 196
    :cond_0
    if-eqz p1, :cond_1

    .line 197
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mWakeUpScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 199
    :cond_1
    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->disableProximityLockLocked()V

    .line 200
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mDisableProximityRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private readNotificationHeadsUpEnableMapFromFile()V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mXmlIntegerHelper:Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;

    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->getNotificationHeadsUpEnableSaveFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;->read(Ljava/io/File;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationHeadsUpEnableMap:Ljava/util/HashMap;

    .line 399
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationHeadsUpEnableMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 400
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->systemPriorityMap:Ljava/util/HashMap;

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationHeadsUpEnableMap:Ljava/util/HashMap;

    .line 401
    :cond_0
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationHeadsUpEnableMap:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 402
    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->getDefaultNotificationPriorityMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationHeadsUpEnableMap:Ljava/util/HashMap;

    .line 403
    :cond_1
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationHeadsUpEnableMap:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 404
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationHeadsUpEnableMap:Ljava/util/HashMap;

    .line 405
    :cond_2
    return-void
.end method

.method private readNotificationOnKeyguardEnableMapFromFile()V
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mXmlIntegerHelper:Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;

    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->getNotificationOnKeyguardEnableSaveFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;->read(Ljava/io/File;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationOnKeyguardEnableMap:Ljava/util/HashMap;

    .line 389
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationOnKeyguardEnableMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 390
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->systemPriorityMap:Ljava/util/HashMap;

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationOnKeyguardEnableMap:Ljava/util/HashMap;

    .line 391
    :cond_0
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationOnKeyguardEnableMap:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 392
    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->getDefaultNotificationPriorityMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationOnKeyguardEnableMap:Ljava/util/HashMap;

    .line 393
    :cond_1
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationOnKeyguardEnableMap:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 394
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationOnKeyguardEnableMap:Ljava/util/HashMap;

    .line 395
    :cond_2
    return-void
.end method

.method private readNotificationSubscriptMapFromFile()V
    .locals 2

    .prologue
    .line 367
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mXmlIntegerHelper:Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;

    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->getNotificationSubscriptSaveFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;->read(Ljava/io/File;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptMap:Ljava/util/HashMap;

    .line 368
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 369
    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->getDefaultNotificationSubscriptMap()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptMap:Ljava/util/HashMap;

    .line 370
    :cond_0
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptMap:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 371
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptMap:Ljava/util/HashMap;

    .line 372
    :cond_1
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptMap:Ljava/util/HashMap;

    invoke-direct {p0, v0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->resolveNotificationSubscriptPkgFromMap(Ljava/util/HashMap;)V

    .line 373
    return-void
.end method

.method private readNotificationSubscriptSettingMapFromFile()V
    .locals 6

    .prologue
    .line 408
    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->getDefaultNotificationSubscriptLinkMap()Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptLinkMap:Ljava/util/HashMap;

    .line 409
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptLinkMap:Ljava/util/HashMap;

    if-nez v3, :cond_0

    .line 410
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptLinkMap:Ljava/util/HashMap;

    .line 412
    :cond_0
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mXmlIntegerHelper:Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;

    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->getNotificationSubscriptSettingSaveFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;->read(Ljava/io/File;)Ljava/util/HashMap;

    move-result-object v3

    iput-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptSettingMap:Ljava/util/HashMap;

    .line 413
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptSettingMap:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 414
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptSettingMap:Ljava/util/HashMap;

    .line 416
    :cond_1
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->TAG:Ljava/lang/String;

    const-string v4, "readNotificationSubscriptSettingMapFromFile()"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptSettingMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptLinkMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 419
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptLinkMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 420
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 421
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 422
    .local v2, "pkg":Ljava/lang/String;
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptLinkMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 423
    .local v1, "linkPkg":Ljava/lang/String;
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptSettingMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 424
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "link key:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to linkPkg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptSettingMap:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptSettingMap:Ljava/util/HashMap;

    iget-object v4, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptSettingMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 429
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "linkPkg":Ljava/lang/String;
    .end local v2    # "pkg":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private resolveNotificationSubscriptPkgFromMap(Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 432
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 433
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 434
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 435
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 436
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 437
    .local v2, "val":I
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptPkgMap:Ljava/util/HashMap;

    const/4 v4, 0x0

    const-string v5, "_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v1, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 440
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "val":I
    :cond_0
    return-void
.end method

.method private saveNotificationHeadsUpMapToFile()V
    .locals 3

    .prologue
    .line 363
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mXmlIntegerHelper:Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;

    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationHeadsUpEnableMap:Ljava/util/HashMap;

    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->getNotificationHeadsUpEnableSaveFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;->save(Ljava/util/HashMap;Ljava/io/File;)Ljava/lang/Boolean;

    .line 364
    return-void
.end method

.method private saveNotificationOnKeyguardMapToFile()V
    .locals 3

    .prologue
    .line 359
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mXmlIntegerHelper:Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;

    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationOnKeyguardEnableMap:Ljava/util/HashMap;

    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->getNotificationOnKeyguardEnableSaveFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;->save(Ljava/util/HashMap;Ljava/io/File;)Ljava/lang/Boolean;

    .line 360
    return-void
.end method

.method private saveNotificationSubscriptMapToFile()V
    .locals 3

    .prologue
    .line 351
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mXmlIntegerHelper:Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;

    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptMap:Ljava/util/HashMap;

    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->getNotificationSubscriptSaveFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;->save(Ljava/util/HashMap;Ljava/io/File;)Ljava/lang/Boolean;

    .line 352
    return-void
.end method

.method private saveNotificationSubscriptSettingMapToFile()V
    .locals 3

    .prologue
    .line 355
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mXmlIntegerHelper:Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;

    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptSettingMap:Ljava/util/HashMap;

    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->getNotificationSubscriptSettingSaveFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;->save(Ljava/util/HashMap;Ljava/io/File;)Ljava/lang/Boolean;

    .line 356
    return-void
.end method

.method private shutdown()V
    .locals 1

    .prologue
    .line 444
    iget-boolean v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationSubscriptNeedSave:Z

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mSaveNotificationSubscriptRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 446
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mSaveNotificationSubscriptRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 448
    :cond_0
    iget-boolean v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationSubscriptSettingsNeedSave:Z

    if-eqz v0, :cond_1

    .line 449
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mSaveNotificationSubscriptSettingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 450
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mSaveNotificationSubscriptSettingRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 452
    :cond_1
    iget-boolean v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationOnKeyguardNeedSave:Z

    if-eqz v0, :cond_2

    .line 453
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mSaveNotificationOnKeyguardRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 454
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mSaveNotificationOnKeyguardRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 456
    :cond_2
    iget-boolean v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationHeadsUpNeedSave:Z

    if-eqz v0, :cond_3

    .line 457
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mSaveNotificationHeadsUpRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 458
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mSaveNotificationHeadsUpRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 460
    :cond_3
    return-void
.end method

.method private wakeUpScreen()V
    .locals 4

    .prologue
    .line 223
    monitor-enter p0

    .line 224
    :try_start_0
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 227
    :cond_0
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 228
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mPM:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 229
    monitor-exit p0

    .line 230
    return-void

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public dumpNotificationSubscript(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 727
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mBootCompleted:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mBootCompleted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 728
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptMap:Ljava/util/HashMap;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 729
    const-string v3, "print notificationSubscriptMap data start ~"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 730
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 731
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 732
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 733
    .local v1, "key":Ljava/lang/String;
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 734
    .local v2, "val":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 736
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "val":I
    :cond_0
    const-string v3, "notificationSubscriptMap data end"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 740
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mXmlIntegerHelper:Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;

    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->getNotificationSubscriptSaveFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;->dump(Ljava/io/PrintWriter;Ljava/io/File;)V

    .line 741
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 742
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptPkgMap:Ljava/util/HashMap;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptPkgMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 743
    const-string v3, "print notificationSubscriptPkgMap data start ~"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 744
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptPkgMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 745
    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 746
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 747
    .restart local v1    # "key":Ljava/lang/String;
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptPkgMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 748
    .local v2, "val":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t pkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " userID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 738
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "val":Ljava/lang/String;
    :cond_1
    const-string v3, "notificationSubscriptMap is empty."

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 750
    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_2
    const-string v3, "notificationSubscriptPkgMap data end"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 755
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 756
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptLinkMap:Ljava/util/HashMap;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptLinkMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 757
    const-string v3, "print notificationSubscriptLinkMap data start ~"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 758
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptLinkMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 759
    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 760
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 761
    .restart local v1    # "key":Ljava/lang/String;
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptLinkMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 762
    .restart local v2    # "val":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t pkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to PKG:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    .line 752
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "val":Ljava/lang/String;
    :cond_3
    const-string v3, "notificationSubscriptPkgMap is empty."

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 764
    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_4
    const-string v3, "notificationSubscriptLinkMap data end"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 769
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_5
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 770
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationByStatistical:Ljava/util/HashMap;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationByStatistical:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_8

    .line 771
    const-string v3, "print mNotificationByStatistical data start ~"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 772
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationByStatistical:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 773
    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 774
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 775
    .restart local v1    # "key":Ljava/lang/String;
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationByStatistical:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 776
    .local v2, "val":Ljava/util/HashMap;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t pkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " count:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .end local v2    # "val":Ljava/util/HashMap;
    :cond_5
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 766
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    :cond_6
    const-string v3, "notificationSubscriptLinkMap is empty."

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    .line 778
    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_7
    const-string v3, "mNotificationByStatistical data end"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 782
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_7
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 784
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptSettingMap:Ljava/util/HashMap;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptSettingMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_a

    .line 785
    const-string v3, "print notificationSubscriptSettingMap data start ~"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 786
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptSettingMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 787
    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 788
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 789
    .restart local v1    # "key":Ljava/lang/String;
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptSettingMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 790
    .local v2, "val":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 780
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "val":I
    :cond_8
    const-string v3, "mNotificationByStatistical is empty."

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 792
    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_9
    const-string v3, "notificationSubscriptSettingMap data end"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 796
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_9
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mXmlIntegerHelper:Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;

    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->getNotificationSubscriptSettingSaveFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;->dump(Ljava/io/PrintWriter;Ljava/io/File;)V

    .line 797
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 798
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationOnKeyguardEnableMap:Ljava/util/HashMap;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationOnKeyguardEnableMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_c

    .line 799
    const-string v3, "print notificationOnKeyguardEnableMap data start ~"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 800
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationOnKeyguardEnableMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 801
    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 802
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 803
    .restart local v1    # "key":Ljava/lang/String;
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationOnKeyguardEnableMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 804
    .restart local v2    # "val":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a

    .line 794
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "val":I
    :cond_a
    const-string v3, "notificationSubscriptSettingMap is empty."

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9

    .line 806
    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_b
    const-string v3, "notificationOnKeyguardEnableMap data end"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 810
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_b
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mXmlIntegerHelper:Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;

    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->getNotificationOnKeyguardEnableSaveFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;->dump(Ljava/io/PrintWriter;Ljava/io/File;)V

    .line 811
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 812
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationHeadsUpEnableMap:Ljava/util/HashMap;

    if-eqz v3, :cond_e

    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationHeadsUpEnableMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_e

    .line 813
    const-string v3, "print notificationHeadsUpEnableMap data start ~"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 814
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationHeadsUpEnableMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 815
    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 816
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 817
    .restart local v1    # "key":Ljava/lang/String;
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationHeadsUpEnableMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 818
    .restart local v2    # "val":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c

    .line 808
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "val":I
    :cond_c
    const-string v3, "notificationOnKeyguardEnableMap is empty."

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b

    .line 820
    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_d
    const-string v3, "notificationHeadsUpEnableMap data end"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 824
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_d
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mXmlIntegerHelper:Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;

    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->getNotificationHeadsUpEnableSaveFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lbase/core/java/com/letv/leui/notification/XmlIntegerHelper;->dump(Ljava/io/PrintWriter;Ljava/io/File;)V

    .line 825
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->systemPriorityMap:Ljava/util/HashMap;

    if-eqz v3, :cond_10

    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->systemPriorityMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    if-lez v3, :cond_10

    .line 826
    const-string v3, "print systemPriorityMap data start ~"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 827
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->systemPriorityMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 828
    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 829
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 830
    .restart local v1    # "key":Ljava/lang/String;
    iget-object v3, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->systemPriorityMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 831
    .restart local v2    # "val":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e

    .line 822
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "key":Ljava/lang/String;
    .end local v2    # "val":I
    :cond_e
    const-string v3, "notificationHeadsUpEnableMap is empty."

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d

    .line 833
    .restart local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_f
    const-string v3, "systemPriorityMap data end"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 837
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_f
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 838
    return-void

    .line 835
    :cond_10
    const-string v3, "systemPriorityMap is empty."

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f
.end method

.method public getNotificationHeadsUpEnable(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 651
    invoke-direct {p0, p1}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->getLinkPkg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 652
    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationHeadsUpEnableMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationHeadsUpEnableMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationHeadsUpEnableMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationHeadsUpEnableMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 657
    .local v0, "value":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_2

    :goto_1
    return v2

    .line 652
    .end local v0    # "value":Ljava/lang/Integer;
    :cond_0
    if-eqz p2, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_0

    .restart local v0    # "value":Ljava/lang/Integer;
    :cond_2
    move v2, v3

    .line 657
    goto :goto_1
.end method

.method public getNotificationHeadsUpEnableMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationHeadsUpEnableMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getNotificationOnKeyguardEnable(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 614
    invoke-direct {p0, p1}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->getLinkPkg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 615
    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationOnKeyguardEnableMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationOnKeyguardEnableMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationOnKeyguardEnableMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationOnKeyguardEnableMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 620
    .local v0, "value":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_2

    :goto_1
    return v2

    .line 615
    .end local v0    # "value":Ljava/lang/Integer;
    :cond_0
    if-eqz p2, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_0

    .restart local v0    # "value":Ljava/lang/Integer;
    :cond_2
    move v2, v3

    .line 620
    goto :goto_1
.end method

.method public getNotificationOnKeyguardEnableMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationOnKeyguardEnableMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getNotificationSubscript(Ljava/lang/String;)I
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 529
    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    move-object v0, v1

    .line 530
    .local v0, "value":Ljava/lang/Integer;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_1
    return v1

    .line 529
    .end local v0    # "value":Ljava/lang/Integer;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 530
    .restart local v0    # "value":Ljava/lang/Integer;
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public getNotificationSubscriptEnable(Ljava/lang/String;Z)Z
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 577
    invoke-direct {p0, p1}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->getLinkPkg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 578
    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptSettingMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptSettingMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptSettingMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptSettingMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 583
    .local v0, "value":Ljava/lang/Integer;
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_2

    :goto_1
    return v2

    .line 578
    .end local v0    # "value":Ljava/lang/Integer;
    :cond_0
    if-eqz p2, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_0

    .restart local v0    # "value":Ljava/lang/Integer;
    :cond_2
    move v2, v3

    .line 583
    goto :goto_1
.end method

.method public getNotificationSubscriptEnableMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptSettingMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getNotificationSubscriptMap()Ljava/util/Map;
    .locals 9

    .prologue
    .line 534
    iget-object v7, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    .line 535
    .local v4, "tmpMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v7, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationByStatistical:Ljava/util/HashMap;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationByStatistical:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_1

    .line 536
    iget-object v7, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationByStatistical:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 537
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 538
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 539
    .local v3, "key":Ljava/lang/String;
    iget-object v7, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationByStatistical:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 540
    .local v6, "val":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v7

    if-lez v7, :cond_0

    .line 541
    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 542
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 543
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 544
    .local v2, "k":Ljava/lang/String;
    invoke-virtual {v6, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 545
    .local v5, "userId":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 550
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2    # "k":Ljava/lang/String;
    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "userId":I
    .end local v6    # "val":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_1
    return-object v4
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 278
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 283
    :goto_0
    return-void

    .line 280
    :pswitch_0
    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->context:Landroid/content/Context;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    new-instance v2, Landroid/os/UserHandle;

    const/4 v3, -0x2

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 278
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onReceive(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 696
    const/4 v0, 0x0

    .line 697
    .local v0, "result":Z
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 698
    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->shutdown()V

    .line 699
    const/4 v0, 0x1

    .line 704
    :cond_0
    :goto_0
    return v0

    .line 700
    :cond_1
    const-string v1, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 701
    invoke-direct {p0, p2}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->onPackageDataCleared(Landroid/content/Intent;)V

    .line 702
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public registerReceiver(Landroid/content/BroadcastReceiver;)V
    .locals 11
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;

    .prologue
    const/16 v6, 0x15

    const/4 v4, 0x0

    .line 708
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 710
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 711
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v6, :cond_0

    .line 712
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->context:Landroid/content/Context;

    invoke-virtual {v0, p1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 716
    :goto_0
    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    .line 718
    .local v8, "pkgFilter":Landroid/content/IntentFilter;
    const-string v0, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 719
    const-string v0, "package"

    invoke-virtual {v8, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 720
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v0, v6, :cond_1

    .line 721
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->context:Landroid/content/Context;

    invoke-virtual {v0, p1, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 724
    :goto_1
    return-void

    .line 714
    .end local v8    # "pkgFilter":Landroid/content/IntentFilter;
    :cond_0
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->context:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_0

    .line 723
    .restart local v8    # "pkgFilter":Landroid/content/IntentFilter;
    :cond_1
    iget-object v5, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->context:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v6, p1

    move-object v9, v4

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public setNotificationHeadsUpEnable(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 628
    new-instance v0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$12;

    invoke-direct {v0, p0, p1, p2}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$12;-><init>(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->post(Ljava/lang/Runnable;)Z

    .line 648
    return-void
.end method

.method public setNotificationOnKeyguardEnable(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 591
    new-instance v0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$11;

    invoke-direct {v0, p0, p1, p2}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$11;-><init>(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->post(Ljava/lang/Runnable;)Z

    .line 611
    return-void
.end method

.method public setNotificationSubscript(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "count"    # I

    .prologue
    .line 509
    new-instance v0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$9;

    invoke-direct {v0, p0, p1, p2}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$9;-><init>(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->post(Ljava/lang/Runnable;)Z

    .line 525
    const/4 v0, 0x1

    return v0
.end method

.method public setNotificationSubscriptEnable(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 554
    new-instance v0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$10;

    invoke-direct {v0, p0, p1, p2}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper$10;-><init>(Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->post(Ljava/lang/Runnable;)Z

    .line 574
    return-void
.end method

.method public updateNotificationScreenTurningOn(Landroid/app/Notification;ZI)V
    .locals 4
    .param p1, "n"    # Landroid/app/Notification;
    .param p2, "screenOn"    # Z
    .param p3, "mInterruptionFilter"    # I

    .prologue
    const/4 v3, 0x0

    .line 105
    sget-boolean v0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->DISABLE_TURN_ON_SCREEN_FOR_ZENMODE:Z

    if-eqz v0, :cond_0

    if-nez p3, :cond_1

    :cond_0
    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "leui.enableNotificationTurningON"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 125
    :cond_1
    :goto_0
    return-void

    .line 108
    :cond_2
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mPM:Landroid/os/PowerManager;

    if-nez v0, :cond_3

    .line 109
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->context:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mPM:Landroid/os/PowerManager;

    .line 110
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mPM:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "NotificationManagerService.mProximityWakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 111
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 112
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mPM:Landroid/os/PowerManager;

    const v1, 0x3000001a

    iget-object v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 115
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 116
    new-instance v0, Landroid/hardware/SystemSensorManager;

    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 117
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mProximitySensor:Landroid/hardware/Sensor;

    .line 120
    :cond_3
    if-nez p2, :cond_4

    .line 121
    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->enableProximityLockLocked()V

    goto :goto_0

    .line 123
    :cond_4
    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->wakeUpScreen()V

    goto :goto_0
.end method

.method public updateNotificationScreenTurningOn(Ljava/lang/String;ZI)V
    .locals 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "screenOn"    # Z
    .param p3, "mInterruptionFilter"    # I

    .prologue
    const/4 v3, 0x0

    .line 82
    sget-boolean v0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->DISABLE_TURN_ON_SCREEN_FOR_ZENMODE:Z

    if-eqz v0, :cond_0

    if-nez p3, :cond_1

    :cond_0
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->isInternalApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 102
    :cond_1
    :goto_0
    return-void

    .line 85
    :cond_2
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mPM:Landroid/os/PowerManager;

    if-nez v0, :cond_3

    .line 86
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->context:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mPM:Landroid/os/PowerManager;

    .line 87
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mPM:Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "NotificationManagerService.mProximityWakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 88
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 89
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mPM:Landroid/os/PowerManager;

    const v1, 0x3000001a

    iget-object v2, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 92
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 93
    new-instance v0, Landroid/hardware/SystemSensorManager;

    iget-object v1, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/hardware/SystemSensorManager;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mSensorManager:Landroid/hardware/SensorManager;

    .line 94
    iget-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mProximitySensor:Landroid/hardware/Sensor;

    .line 97
    :cond_3
    if-nez p2, :cond_4

    .line 98
    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->enableProximityLockLocked()V

    goto :goto_0

    .line 100
    :cond_4
    invoke-direct {p0}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->wakeUpScreen()V

    goto :goto_0
.end method

.method public updateNotificationSubscriptByStatistical(ZLandroid/service/notification/StatusBarNotification;Z)V
    .locals 9
    .param p1, "isPost"    # Z
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p3, "isShadow"    # Z

    .prologue
    .line 465
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p3, :cond_1

    const-string v6, ".LetvClone"

    :goto_0
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 466
    .local v5, "pkg":Ljava/lang/String;
    iget-object v6, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->notificationSubscriptPkgMap:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 487
    :cond_0
    :goto_1
    return-void

    .line 465
    .end local v5    # "pkg":Ljava/lang/String;
    :cond_1
    const-string v6, ""

    goto :goto_0

    .line 468
    .restart local v5    # "pkg":Ljava/lang/String;
    :cond_2
    iget-object v6, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationByStatistical:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 469
    .local v1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 470
    .local v2, "needInsert":Z
    if-nez v1, :cond_3

    .line 471
    new-instance v1, Ljava/util/HashMap;

    .end local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 472
    .restart local v1    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v2, 0x1

    .line 474
    :cond_3
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v4

    .line 475
    .local v4, "oldSize":I
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 476
    .local v0, "key":Ljava/lang/String;
    if-eqz p1, :cond_5

    .line 477
    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    :goto_2
    if-eqz v2, :cond_4

    .line 481
    iget-object v6, p0, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->mNotificationByStatistical:Ljava/util/HashMap;

    invoke-virtual {v6, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    :cond_4
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v3

    .line 484
    .local v3, "newSize":I
    if-eq v4, v3, :cond_0

    .line 485
    const-string v6, "android.os.action.ACTION_NOTIFICATION_SUBSCRIPT_CHANGED"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, "_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7, v3, p3}, Lbase/core/java/com/letv/leui/notification/LeuiNotificationHelper;->broadcastSubscriptChange(Ljava/lang/String;Ljava/lang/String;IZ)V

    goto :goto_1

    .line 479
    .end local v3    # "newSize":I
    :cond_5
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method
