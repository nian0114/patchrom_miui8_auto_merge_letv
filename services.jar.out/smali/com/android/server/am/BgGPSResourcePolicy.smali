.class final Lcom/android/server/am/BgGPSResourcePolicy;
.super Lcom/android/server/am/BgResourcePolicy;
.source "BackAppResourcePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;,
        Lcom/android/server/am/BgGPSResourcePolicy$BgGPSSettingsObserver;
    }
.end annotation


# static fields
.field private static final BG_ACTION_SCREEN_ON:I = 0x65

.field private static final BG_SCREEN_OFF_STEP_END:I = 0x67

.field private static final BG_SCREEN_OFF_STEP_START:I = 0x66

.field private static final BG_SCREEN_OFF_STEP_TIME_OUT:I = 0x68

.field private static final TAG:Ljava/lang/String; = "BgGPSResourcePolicy"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mBgGPSSettingsObserver:Lcom/android/server/am/BgGPSResourcePolicy$BgGPSSettingsObserver;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCheckGpsState:I

.field private mContext:Landroid/content/Context;

.field private mCurrSteps:I

.field private mHandler:Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;

.field private mLastLocation:Landroid/location/Location;

.field private mLastSteps:I

.field private final mListener:Landroid/hardware/SensorEventListener;

.field private final mLocationListener:Landroid/location/LocationListener;

.field private mLocationListenerEnabled:Z

.field private mLocationManager:Landroid/location/LocationManager;

.field private mLocationService:Landroid/location/ILocationManager;

.field private mMoving:Z

.field private mRestoreGpsState:I

.field private mSampleStationaryTime:I

.field private mSamplingInProgress:Z

.field private mSamplingTimes:I

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/os/Looper;)V
    .locals 4
    .param p1, "service"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 1003
    invoke-direct {p0}, Lcom/android/server/am/BgResourcePolicy;-><init>()V

    .line 987
    iput v3, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mSamplingTimes:I

    .line 988
    iput v3, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mSampleStationaryTime:I

    .line 989
    iput-object v1, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mLastLocation:Landroid/location/Location;

    .line 990
    iput v2, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mRestoreGpsState:I

    .line 991
    iput v2, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mCheckGpsState:I

    .line 992
    iput v3, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mCurrSteps:I

    .line 993
    iput v3, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mLastSteps:I

    .line 994
    iput-object v1, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mSensorManager:Landroid/hardware/SensorManager;

    .line 995
    iput-object v1, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mSensor:Landroid/hardware/Sensor;

    .line 997
    iput-boolean v3, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mMoving:Z

    .line 998
    iput-boolean v3, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mLocationListenerEnabled:Z

    .line 1160
    new-instance v1, Lcom/android/server/am/BgGPSResourcePolicy$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/BgGPSResourcePolicy$1;-><init>(Lcom/android/server/am/BgGPSResourcePolicy;)V

    iput-object v1, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1218
    new-instance v1, Lcom/android/server/am/BgGPSResourcePolicy$2;

    invoke-direct {v1, p0}, Lcom/android/server/am/BgGPSResourcePolicy$2;-><init>(Lcom/android/server/am/BgGPSResourcePolicy;)V

    iput-object v1, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mListener:Landroid/hardware/SensorEventListener;

    .line 1310
    new-instance v1, Lcom/android/server/am/BgGPSResourcePolicy$3;

    invoke-direct {v1, p0}, Lcom/android/server/am/BgGPSResourcePolicy$3;-><init>(Lcom/android/server/am/BgGPSResourcePolicy;)V

    iput-object v1, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mLocationListener:Landroid/location/LocationListener;

    .line 1004
    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object v1, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mContext:Landroid/content/Context;

    .line 1005
    new-instance v1, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;-><init>(Lcom/android/server/am/BgGPSResourcePolicy;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mHandler:Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;

    .line 1006
    const-string v1, "location"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/location/ILocationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/ILocationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mLocationService:Landroid/location/ILocationManager;

    .line 1009
    iget-object v1, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mContext:Landroid/content/Context;

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mSensorManager:Landroid/hardware/SensorManager;

    .line 1011
    iget-object v1, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mSensor:Landroid/hardware/Sensor;

    .line 1012
    iget-object v1, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mContext:Landroid/content/Context;

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1013
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1014
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1015
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1016
    iget-object v1, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1017
    iput-boolean v3, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mSamplingInProgress:Z

    .line 1019
    new-instance v1, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSSettingsObserver;

    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSSettingsObserver;-><init>(Lcom/android/server/am/BgGPSResourcePolicy;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mBgGPSSettingsObserver:Lcom/android/server/am/BgGPSResourcePolicy$BgGPSSettingsObserver;

    .line 1021
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/BgGPSResourcePolicy;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BgGPSResourcePolicy;

    .prologue
    .line 975
    invoke-direct {p0}, Lcom/android/server/am/BgGPSResourcePolicy;->getCurrentGpsState()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/am/BgGPSResourcePolicy;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BgGPSResourcePolicy;

    .prologue
    .line 975
    iget v0, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mRestoreGpsState:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/BgGPSResourcePolicy;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BgGPSResourcePolicy;

    .prologue
    .line 975
    iget-object v0, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/am/BgGPSResourcePolicy;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/BgGPSResourcePolicy;
    .param p1, "x1"    # I

    .prologue
    .line 975
    iput p1, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mRestoreGpsState:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/am/BgGPSResourcePolicy;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BgGPSResourcePolicy;

    .prologue
    .line 975
    iget v0, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mSamplingTimes:I

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/am/BgGPSResourcePolicy;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/BgGPSResourcePolicy;
    .param p1, "x1"    # I

    .prologue
    .line 975
    iput p1, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mSamplingTimes:I

    return p1
.end method

.method static synthetic access$1108(Lcom/android/server/am/BgGPSResourcePolicy;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/BgGPSResourcePolicy;

    .prologue
    .line 975
    iget v0, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mSamplingTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mSamplingTimes:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/am/BgGPSResourcePolicy;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BgGPSResourcePolicy;

    .prologue
    .line 975
    iget v0, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mSampleStationaryTime:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/server/am/BgGPSResourcePolicy;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/BgGPSResourcePolicy;
    .param p1, "x1"    # I

    .prologue
    .line 975
    iput p1, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mSampleStationaryTime:I

    return p1
.end method

.method static synthetic access$1208(Lcom/android/server/am/BgGPSResourcePolicy;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/am/BgGPSResourcePolicy;

    .prologue
    .line 975
    iget v0, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mSampleStationaryTime:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mSampleStationaryTime:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/am/BgGPSResourcePolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/BgGPSResourcePolicy;

    .prologue
    .line 975
    invoke-direct {p0}, Lcom/android/server/am/BgGPSResourcePolicy;->scduleNextSample()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/am/BgGPSResourcePolicy;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BgGPSResourcePolicy;

    .prologue
    .line 975
    iget v0, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mCurrSteps:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/am/BgGPSResourcePolicy;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/BgGPSResourcePolicy;
    .param p1, "x1"    # I

    .prologue
    .line 975
    iput p1, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mCurrSteps:I

    return p1
.end method

.method static synthetic access$1412(Lcom/android/server/am/BgGPSResourcePolicy;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BgGPSResourcePolicy;
    .param p1, "x1"    # I

    .prologue
    .line 975
    iget v0, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mCurrSteps:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mCurrSteps:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/am/BgGPSResourcePolicy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BgGPSResourcePolicy;

    .prologue
    .line 975
    invoke-direct {p0}, Lcom/android/server/am/BgGPSResourcePolicy;->isUsingGps()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/am/BgGPSResourcePolicy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BgGPSResourcePolicy;

    .prologue
    .line 975
    iget-boolean v0, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mMoving:Z

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/am/BgGPSResourcePolicy;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BgGPSResourcePolicy;

    .prologue
    .line 975
    iget v0, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mLastSteps:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/am/BgGPSResourcePolicy;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/BgGPSResourcePolicy;
    .param p1, "x1"    # I

    .prologue
    .line 975
    iput p1, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mLastSteps:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/am/BgGPSResourcePolicy;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BgGPSResourcePolicy;

    .prologue
    .line 975
    iget-object v0, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/am/BgGPSResourcePolicy;Landroid/location/Location;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/BgGPSResourcePolicy;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 975
    invoke-direct {p0, p1}, Lcom/android/server/am/BgGPSResourcePolicy;->updateLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/BgGPSResourcePolicy;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/BgGPSResourcePolicy;

    .prologue
    .line 975
    invoke-direct {p0}, Lcom/android/server/am/BgGPSResourcePolicy;->resetSample()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/am/BgGPSResourcePolicy;)Lcom/android/server/am/BgGPSResourcePolicy$BgGPSSettingsObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BgGPSResourcePolicy;

    .prologue
    .line 975
    iget-object v0, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mBgGPSSettingsObserver:Lcom/android/server/am/BgGPSResourcePolicy$BgGPSSettingsObserver;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/BgGPSResourcePolicy;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BgGPSResourcePolicy;

    .prologue
    .line 975
    iget-object v0, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/am/BgGPSResourcePolicy;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BgGPSResourcePolicy;

    .prologue
    .line 975
    iget v0, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mCheckGpsState:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/am/BgGPSResourcePolicy;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/BgGPSResourcePolicy;
    .param p1, "x1"    # I

    .prologue
    .line 975
    iput p1, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mCheckGpsState:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/am/BgGPSResourcePolicy;)Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BgGPSResourcePolicy;

    .prologue
    .line 975
    iget-object v0, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mHandler:Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/am/BgGPSResourcePolicy;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BgGPSResourcePolicy;

    .prologue
    .line 975
    iget-boolean v0, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mSamplingInProgress:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/am/BgGPSResourcePolicy;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/BgGPSResourcePolicy;
    .param p1, "x1"    # Z

    .prologue
    .line 975
    iput-boolean p1, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mSamplingInProgress:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/am/BgGPSResourcePolicy;)Landroid/hardware/SensorEventListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BgGPSResourcePolicy;

    .prologue
    .line 975
    iget-object v0, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mListener:Landroid/hardware/SensorEventListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/am/BgGPSResourcePolicy;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/am/BgGPSResourcePolicy;

    .prologue
    .line 975
    iget-object v0, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method private getCurrentGpsState()I
    .locals 3

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private static hasMoved(Landroid/location/Location;Landroid/location/Location;)Z
    .locals 6
    .param p0, "from"    # Landroid/location/Location;
    .param p1, "to"    # Landroid/location/Location;

    .prologue
    const/4 v1, 0x0

    .line 1253
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 1272
    :cond_0
    :goto_0
    return v1

    .line 1258
    :cond_1
    invoke-virtual {p1}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    .line 1263
    invoke-virtual {p0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    .line 1264
    .local v0, "distance":F
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v2, :cond_2

    const-string v2, "BgGPSResourcePolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "moved distance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    :cond_2
    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private isUsingGps()Z
    .locals 5

    .prologue
    .line 1239
    const/4 v1, 0x0

    .line 1241
    .local v1, "gpsPkg":[Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mLocationService:Landroid/location/ILocationManager;

    invoke-interface {v2}, Landroid/location/ILocationManager;->getGpsUpdatePackages()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1245
    :goto_0
    if-eqz v1, :cond_0

    .line 1246
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v2, :cond_0

    const-string v2, "BgGPSResourcePolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LIMIT_APP: pkg gpsPkg.length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1248
    :cond_0
    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 1242
    :catch_0
    move-exception v0

    .line 1243
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "BgGPSResourcePolicy"

    const-string v3, "RemoteException in getGpsUpdatePackages: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1248
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private resetSample()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1149
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v0, :cond_0

    const-string v0, "BgGPSResourcePolicy"

    const-string v1, "LIMIT_APP: reset Sample all params, SCREEN_ON or timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mHandler:Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->removeMessages(I)V

    .line 1151
    iget-object v0, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mHandler:Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;

    const/16 v1, 0x67

    invoke-virtual {v0, v1}, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->removeMessages(I)V

    .line 1152
    iget-object v0, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mHandler:Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;

    const/16 v1, 0x68

    invoke-virtual {v0, v1}, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->removeMessages(I)V

    .line 1153
    iget-object v0, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1154
    iput v2, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mCurrSteps:I

    .line 1155
    iput v2, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mLastSteps:I

    .line 1156
    iput-boolean v2, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mSamplingInProgress:Z

    .line 1157
    iput v2, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mSamplingTimes:I

    .line 1158
    return-void
.end method

.method private scduleNextSample()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1197
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mHandler:Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;

    const/16 v4, 0x66

    invoke-virtual {v3, v4}, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1198
    .local v1, "msgStart":Landroid/os/Message;
    invoke-virtual {v1, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1199
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mHandler:Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;

    const-wide/32 v4, 0x2bf20

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1201
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mHandler:Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;

    const/16 v4, 0x67

    invoke-virtual {v3, v4}, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1202
    .local v0, "msgEnd":Landroid/os/Message;
    invoke-virtual {v0, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1203
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mHandler:Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;

    const-wide/32 v4, 0x2de60

    invoke-virtual {v3, v0, v4, v5}, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1205
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mHandler:Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;

    const/16 v4, 0x68

    invoke-virtual {v3, v4}, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1206
    .local v2, "msgTimeout":Landroid/os/Message;
    invoke-virtual {v2, v6}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1207
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mHandler:Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;

    const-wide/32 v4, 0x2e630

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1208
    return-void
.end method

.method private startRequestLocation()V
    .locals 7

    .prologue
    .line 1287
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mLastLocation:Landroid/location/Location;

    .line 1288
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mMoving:Z

    .line 1290
    iget-boolean v0, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mLocationListenerEnabled:Z

    if-nez v0, :cond_1

    .line 1291
    iget-object v0, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "passive"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1292
    iget-object v0, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "passive"

    const-wide/16 v2, 0x0

    const/high16 v4, 0x41200000    # 10.0f

    iget-object v5, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mLocationListener:Landroid/location/LocationListener;

    iget-object v6, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mHandler:Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;

    invoke-virtual {v6}, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 1295
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mLocationListenerEnabled:Z

    .line 1297
    :cond_1
    return-void
.end method

.method private stopRequestLocation()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1301
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mLastLocation:Landroid/location/Location;

    .line 1302
    iput-boolean v2, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mMoving:Z

    .line 1304
    iget-boolean v0, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mLocationListenerEnabled:Z

    if-eqz v0, :cond_0

    .line 1305
    iget-object v0, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1306
    iput-boolean v2, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mLocationListenerEnabled:Z

    .line 1308
    :cond_0
    return-void
.end method

.method private updateLocation(Landroid/location/Location;)V
    .locals 3
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 1276
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v0, :cond_0

    const-string v0, "BgGPSResourcePolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLocation location: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mLastLocation:Landroid/location/Location;

    invoke-static {v0, p1}, Lcom/android/server/am/BgGPSResourcePolicy;->hasMoved(Landroid/location/Location;Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1278
    invoke-direct {p0}, Lcom/android/server/am/BgGPSResourcePolicy;->stopRequestLocation()V

    .line 1279
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mMoving:Z

    .line 1283
    :goto_0
    return-void

    .line 1281
    :cond_1
    iput-object p1, p0, Lcom/android/server/am/BgGPSResourcePolicy;->mLastLocation:Landroid/location/Location;

    goto :goto_0
.end method
