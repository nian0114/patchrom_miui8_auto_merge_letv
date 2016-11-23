.class Lcom/android/server/display/AutomaticBrightnessController;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;,
        Lcom/android/server/display/AutomaticBrightnessController$Callbacks;,
        Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;
    }
.end annotation


# static fields
.field private static final ADJ_BRIGHTEN:I = 0x1

.field private static final ADJ_DARKEN:I = 0x2

.field private static final ADJ_NONE:I = 0x0

.field private static final AMBIENT_LIGHT_HORIZON:I = 0x2710

.field private static final AMBIENT_LIGHT_PREDICTION_TIME_MILLIS:J = 0x64L

.field private static final BRIGHTENING_LIGHT_HYSTERESIS:F = 0.2f

.field private static final BRIGHTNESS_ADJUSTMENT_SAMPLE_DEBOUNCE_MILLIS:I = 0x2710

.field private static final DARKENING_LIGHT_HYSTERESIS:F = 0.3f

.field private static final DARK_LUX_THRESHOLD:I = 0x32

.field private static final DEBUG:Z = true

.field private static final DEBUG_PRETEND_LIGHT_SENSOR_ABSENT:Z = false

.field private static final DELAY_ADJUST_MILLIS:I = 0x2710

.field private static final DELAY_BRIGHTEN_THRESHOLD:I

.field private static final DELAY_DARKEN_THRESHOLD:I

.field private static final FAST_SAMPLE_COUNT:I = 0xa

.field private static final LE_AUTO_BRIGHTNESS_GAMMA_SHIT:F = 0.02f

.field private static final LE_AUTO_BRIGHTNESS_GAMMA_SLOPE:F = 0.2f

.field private static final MSG_BRIGHTNESS_ADJUSTMENT_SAMPLE:I = 0x2

.field private static final MSG_DELAY_ADJUST:I = 0x3

.field private static final MSG_FIRST_DATA_DELAY:I = 0x4

.field private static final MSG_UPDATE_AMBIENT_LUX:I = 0x1

.field private static final SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT_MAX_GAMMA:F = 2.0f

.field private static final TAG:Ljava/lang/String; = "AutomaticBrightnessController"

.field private static final TWILIGHT_ADJUSTMENT_MAX_GAMMA:F = 1.5f

.field private static final TWILIGHT_ADJUSTMENT_TIME:J = 0x6ddd00L

.field private static final USE_SCREEN_AUTO_BRIGHTNESS_ADJUSTMENT:Z = true

.field private static final USE_TWILIGHT_ADJUSTMENT:Z

.field private static final WEIGHTING_INTERCEPT:I = 0x2710


# instance fields
.field private mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

.field private mAmbientLux:F

.field private mAmbientLuxValid:Z

.field private final mBrighteningLightDebounceConfig:J

.field private mBrighteningLuxThreshold:F

.field private mBrightnessAdjustmentSampleOldAdjustment:F

.field private mBrightnessAdjustmentSampleOldBrightness:I

.field private mBrightnessAdjustmentSampleOldGamma:F

.field private mBrightnessAdjustmentSampleOldLux:F

.field private mBrightnessAdjustmentSamplePending:Z

.field private mBrightnessMode:Lcom/android/server/display/BrightnessMode;

.field private final mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

.field private mContext:Landroid/content/Context;

.field private final mDarkeningLightDebounceConfig:J

.field private mDarkeningLuxThreshold:F

.field private mDoubleCheckSampleCount:I

.field private mDoubleCheckSampleSum:F

.field private mDoubleCheckSampleTime:J

.field private mDoubleCheckStartTime:J

.field private final mDozeScaleFactor:F

.field private mDozing:Z

.field private mFirstAutoBrightnessUpdate:Z

.field private mFirstSensorData:Z

.field private mForceAdjust:Z

.field private final mGammaCallback:Lcom/android/server/display/BrightnessMode$ResetAdjustGammaCallbacks;

.field private mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

.field private mLastObservedLux:F

.field private mLastObservedLuxTime:J

.field private mLastScreenAutoBrightnessGamma:F

.field private final mLightSensor:Landroid/hardware/Sensor;

.field private mLightSensorEnableTime:J

.field private mLightSensorEnabled:Z

.field private final mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private final mLightSensorRate:I

.field private mLightSensorWarmUpTimeConfig:I

.field private mPendingAdjust:I

.field private mRecentLightSamples:I

.field private final mResetAmbientLuxAfterWarmUpConfig:Z

.field private mRuntimeSensorModeChanged:Z

.field private mScreenAutoBrightness:I

.field private mScreenAutoBrightnessAdjustment:F

.field private mScreenAutoBrightnessGamma:F

.field private mScreenAutoBrightnessOverrideFromSetting:Z

.field private final mScreenAutoBrightnessSpline:Landroid/util/Spline;

.field private final mScreenBrightnessRangeMaximum:I

.field private final mScreenBrightnessRangeMinimum:I

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private final mTwilight:Lcom/android/server/twilight/TwilightManager;

.field private final mTwilightListener:Lcom/android/server/twilight/TwilightListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Landroid/os/PowerManager;->useTwilightAdjustmentFeature()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/display/AutomaticBrightnessController;->USE_TWILIGHT_ADJUSTMENT:Z

    .line 930
    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    div-int/lit16 v0, v0, 0xff

    mul-int/lit8 v0, v0, 0xc

    sput v0, Lcom/android/server/display/AutomaticBrightnessController;->DELAY_DARKEN_THRESHOLD:I

    .line 931
    sget v0, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    div-int/lit16 v0, v0, 0xff

    mul-int/lit8 v0, v0, 0x8

    sput v0, Lcom/android/server/display/AutomaticBrightnessController;->DELAY_BRIGHTEN_THRESHOLD:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/AutomaticBrightnessController$Callbacks;Landroid/os/Looper;Landroid/hardware/SensorManager;Landroid/util/Spline;IIIFIJJZ)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callbacks"    # Lcom/android/server/display/AutomaticBrightnessController$Callbacks;
    .param p3, "looper"    # Landroid/os/Looper;
    .param p4, "sensorManager"    # Landroid/hardware/SensorManager;
    .param p5, "autoBrightnessSpline"    # Landroid/util/Spline;
    .param p6, "lightSensorWarmUpTime"    # I
    .param p7, "brightnessMin"    # I
    .param p8, "brightnessMax"    # I
    .param p9, "dozeScaleFactor"    # F
    .param p10, "lightSensorRate"    # I
    .param p11, "brighteningLightDebounceConfig"    # J
    .param p13, "darkeningLightDebounceConfig"    # J
    .param p15, "resetAmbientLuxAfterWarmUpConfig"    # Z

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 186
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 189
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    .line 190
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessGamma:F

    .line 193
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    .line 206
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessOverrideFromSetting:Z

    .line 208
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRuntimeSensorModeChanged:Z

    .line 209
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFirstAutoBrightnessUpdate:Z

    .line 245
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController$1;

    invoke-direct {v2, p0}, Lcom/android/server/display/AutomaticBrightnessController$1;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mGammaCallback:Lcom/android/server/display/BrightnessMode$ResetAdjustGammaCallbacks;

    .line 754
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController$2;

    invoke-direct {v2, p0}, Lcom/android/server/display/AutomaticBrightnessController$2;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    .line 782
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController$3;

    invoke-direct {v2, p0}, Lcom/android/server/display/AutomaticBrightnessController$3;-><init>(Lcom/android/server/display/AutomaticBrightnessController;)V

    iput-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    .line 942
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingAdjust:I

    .line 943
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFirstSensorData:Z

    .line 944
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForceAdjust:Z

    .line 949
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDoubleCheckStartTime:J

    .line 950
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDoubleCheckSampleTime:J

    .line 951
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDoubleCheckSampleCount:I

    .line 952
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDoubleCheckSampleSum:F

    .line 216
    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    .line 217
    iput-object p2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    .line 218
    const-class v2, Lcom/android/server/twilight/TwilightManager;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/twilight/TwilightManager;

    iput-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    .line 219
    iput-object p4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 220
    iput-object p5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    .line 221
    iput p7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:I

    .line 222
    iput p8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:I

    .line 223
    iput p6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    .line 224
    move/from16 v0, p9

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozeScaleFactor:F

    .line 225
    move/from16 v0, p10

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorRate:I

    .line 226
    move-wide/from16 v0, p11

    iput-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    .line 227
    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    .line 228
    move/from16 v0, p15

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    .line 230
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-direct {v2, p0, p3}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;-><init>(Lcom/android/server/display/AutomaticBrightnessController;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    .line 231
    new-instance v2, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorRate:I

    int-to-long v4, v3

    invoke-direct {v2, v4, v5}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;-><init>(J)V

    iput-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    .line 234
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    .line 237
    sget-boolean v2, Lcom/android/server/display/AutomaticBrightnessController;->USE_TWILIGHT_ADJUSTMENT:Z

    if-eqz v2, :cond_0

    .line 238
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilightListener:Lcom/android/server/twilight/TwilightListener;

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-interface {v2, v3, v4}, Lcom/android/server/twilight/TwilightManager;->registerListener(Lcom/android/server/twilight/TwilightListener;Landroid/os/Handler;)V

    .line 241
    :cond_0
    new-instance v2, Lcom/android/server/display/BrightnessMode;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mGammaCallback:Lcom/android/server/display/BrightnessMode$ResetAdjustGammaCallbacks;

    invoke-direct {v2, v3, v4}, Lcom/android/server/display/BrightnessMode;-><init>(Landroid/content/Context;Lcom/android/server/display/BrightnessMode$ResetAdjustGammaCallbacks;)V

    iput-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMode:Lcom/android/server/display/BrightnessMode;

    .line 242
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMode:Lcom/android/server/display/BrightnessMode;

    invoke-virtual {v2}, Lcom/android/server/display/BrightnessMode;->getAutoBrightnessGamma()F

    move-result v2

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessGamma:F

    .line 243
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/display/AutomaticBrightnessController;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # F

    .prologue
    .line 44
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessGamma:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/display/AutomaticBrightnessController;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorRate:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/display/AutomaticBrightnessController;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->collectBrightnessAdjustmentSample()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/server/display/AutomaticBrightnessController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mForceAdjust:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/server/display/AutomaticBrightnessController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # I

    .prologue
    .line 44
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingAdjust:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/display/AutomaticBrightnessController;JF)V
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # J
    .param p3, "x2"    # F

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController;->handleLightSensorEvent(JF)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/display/AutomaticBrightnessController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFirstSensorData:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/display/AutomaticBrightnessController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;
    .param p1, "x1"    # Z

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFirstSensorData:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/display/AutomaticBrightnessController;)Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/AutomaticBrightnessController;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    return-object v0
.end method

.method private applyLightSensorMeasurement(JF)V
    .locals 5
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    .line 398
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    .line 399
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    const-wide/16 v2, 0x2710

    sub-long v2, p1, v2

    invoke-virtual {v0, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->prune(J)V

    .line 400
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->push(JF)V

    .line 403
    iput p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    .line 404
    iput-wide p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLuxTime:J

    .line 405
    return-void
.end method

.method private calculateAdjust(F)I
    .locals 17
    .param p1, "lux"    # F

    .prologue
    .line 985
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mForceAdjust:Z

    if-eqz v4, :cond_1

    .line 986
    const-string v4, "AutomaticBrightnessController"

    const-string v5, "calculateAdjust delay timeout should force change!"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    const/4 v14, 0x3

    .line 1067
    :cond_0
    :goto_0
    return v14

    .line 990
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/util/Spline;->interpolate(F)F

    move-result v16

    .line 994
    .local v16, "value":F
    const/high16 v11, 0x3f800000    # 1.0f

    .line 995
    .local v11, "gamma":F
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_2

    .line 997
    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    neg-float v7, v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Landroid/util/MathUtils;->pow(FF)F

    move-result v8

    .line 999
    .local v8, "adjGamma":F
    mul-float/2addr v11, v8

    .line 1001
    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calculateAdjust: adjGamma="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    .end local v8    # "adjGamma":F
    :cond_2
    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessController;->USE_TWILIGHT_ADJUSTMENT:Z

    if-eqz v4, :cond_3

    .line 1006
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v4}, Lcom/android/server/twilight/TwilightManager;->getCurrentState()Lcom/android/server/twilight/TwilightState;

    move-result-object v15

    .line 1007
    .local v15, "state":Lcom/android/server/twilight/TwilightState;
    if-eqz v15, :cond_3

    invoke-virtual {v15}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1008
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1009
    .local v2, "now":J
    invoke-virtual {v15}, Lcom/android/server/twilight/TwilightState;->getYesterdaySunset()J

    move-result-wide v4

    invoke-virtual {v15}, Lcom/android/server/twilight/TwilightState;->getTodaySunrise()J

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Lcom/android/server/display/AutomaticBrightnessController;->getTwilightGamma(JJJ)F

    move-result v10

    .line 1011
    .local v10, "earlyGamma":F
    invoke-virtual {v15}, Lcom/android/server/twilight/TwilightState;->getTodaySunset()J

    move-result-wide v4

    invoke-virtual {v15}, Lcom/android/server/twilight/TwilightState;->getTomorrowSunrise()J

    move-result-wide v6

    invoke-static/range {v2 .. v7}, Lcom/android/server/display/AutomaticBrightnessController;->getTwilightGamma(JJJ)F

    move-result v13

    .line 1013
    .local v13, "lateGamma":F
    mul-float v4, v10, v13

    mul-float/2addr v11, v4

    .line 1015
    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calculateAdjust: earlyGamma="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", lateGamma="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    .end local v2    # "now":J
    .end local v10    # "earlyGamma":F
    .end local v13    # "lateGamma":F
    .end local v15    # "state":Lcom/android/server/twilight/TwilightState;
    :cond_3
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessGamma:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_4

    .line 1030
    move/from16 v12, v16

    .line 1031
    .local v12, "in":F
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->computeNewValue(F)F

    move-result v16

    .line 1034
    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calculateAdjust: gamma="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessGamma:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", in="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", out="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    .end local v12    # "in":F
    :cond_4
    const/4 v14, 0x0

    .line 1040
    .local v14, "ret":I
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    sget v5, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    int-to-float v5, v5

    mul-float v5, v5, v16

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/display/AutomaticBrightnessController;->clampScreenBrightness(I)I

    move-result v5

    sub-int v9, v4, v5

    .line 1042
    .local v9, "dis":I
    sget v4, Lcom/android/server/display/AutomaticBrightnessController;->DELAY_DARKEN_THRESHOLD:I

    if-le v9, v4, :cond_5

    .line 1043
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/AutomaticBrightnessController;->removePendingDelay()V

    .line 1044
    const/4 v14, 0x2

    .line 1045
    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calculateAdjust darken with dis = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1046
    :cond_5
    if-lez v9, :cond_6

    .line 1047
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingAdjust:I

    if-eq v4, v5, :cond_0

    .line 1048
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/AutomaticBrightnessController;->removePendingDelay()V

    .line 1049
    const/4 v4, 0x2

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingAdjust:I

    .line 1050
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v5, 0x3

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1051
    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calculateAdjust delay darken since dis = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1053
    :cond_6
    if-nez v9, :cond_7

    .line 1054
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/AutomaticBrightnessController;->removePendingDelay()V

    goto/16 :goto_0

    .line 1055
    :cond_7
    sget v4, Lcom/android/server/display/AutomaticBrightnessController;->DELAY_BRIGHTEN_THRESHOLD:I

    neg-int v4, v4

    if-lt v9, v4, :cond_8

    .line 1056
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingAdjust:I

    if-eq v4, v5, :cond_0

    .line 1057
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/AutomaticBrightnessController;->removePendingDelay()V

    .line 1058
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingAdjust:I

    .line 1059
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v5, 0x3

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1060
    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calculateAdjust delay brighten since dis = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    neg-int v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1063
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/AutomaticBrightnessController;->removePendingDelay()V

    .line 1064
    const/4 v14, 0x1

    .line 1065
    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "calculateAdjust brighten with dis = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    neg-int v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private calculateAmbientLux(J)F
    .locals 13
    .param p1, "now"    # J

    .prologue
    .line 426
    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v10}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 427
    .local v0, "N":I
    if-nez v0, :cond_0

    .line 428
    const-string v10, "AutomaticBrightnessController"

    const-string v11, "calculateAmbientLux: No ambient light readings available"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const/high16 v10, -0x40800000    # -1.0f

    .line 451
    :goto_0
    return v10

    .line 431
    :cond_0
    const/4 v5, 0x0

    .line 432
    .local v5, "sum":F
    const/4 v8, 0x0

    .line 433
    .local v8, "totalWeight":F
    const-wide/16 v2, 0x64

    .line 434
    .local v2, "endTime":J
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_1

    .line 435
    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v10, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v10

    sub-long v6, v10, p1

    .line 436
    .local v6, "startTime":J
    invoke-static {v6, v7, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController;->calculateWeight(JJ)F

    move-result v9

    .line 437
    .local v9, "weight":F
    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v10, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    .line 443
    .local v4, "lux":F
    add-float/2addr v8, v9

    .line 444
    iget-object v10, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v10, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v10

    mul-float/2addr v10, v9

    add-float/2addr v5, v10

    .line 445
    move-wide v2, v6

    .line 434
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 448
    .end local v4    # "lux":F
    .end local v6    # "startTime":J
    .end local v9    # "weight":F
    :cond_1
    const-string v10, "AutomaticBrightnessController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "calculateAmbientLux: totalWeight="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", newAmbientLux="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    div-float v12, v5, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    div-float v10, v5, v8

    goto :goto_0
.end method

.method private calculateAmbientLux(JI)F
    .locals 17
    .param p1, "now"    # J
    .param p3, "count"    # I

    .prologue
    .line 955
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v13}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v2

    .line 956
    .local v2, "N":I
    if-nez v2, :cond_0

    .line 957
    const-string v13, "AutomaticBrightnessController"

    const-string v14, "calculateAmbientLux: No ambient light readings available"

    invoke-static {v13, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    const/high16 v13, -0x40800000    # -1.0f

    .line 981
    :goto_0
    return v13

    .line 960
    :cond_0
    const/4 v10, 0x0

    .line 961
    .local v10, "sum":F
    const/4 v11, 0x0

    .line 962
    .local v11, "totalWeight":F
    const-wide/16 v4, 0x64

    .line 963
    .local v4, "endTime":J
    move/from16 v0, p3

    if-le v2, v0, :cond_1

    sub-int v3, v2, p3

    .line 964
    .local v3, "cnt":I
    :goto_1
    add-int/lit8 v6, v2, -0x1

    .local v6, "i":I
    :goto_2
    if-lt v6, v3, :cond_2

    .line 965
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v13, v6}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v14

    sub-long v8, v14, p1

    .line 966
    .local v8, "startTime":J
    invoke-static {v8, v9, v4, v5}, Lcom/android/server/display/AutomaticBrightnessController;->calculateWeight(JJ)F

    move-result v12

    .line 967
    .local v12, "weight":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v13, v6}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v7

    .line 973
    .local v7, "lux":F
    add-float/2addr v11, v12

    .line 974
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v13, v6}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v13

    mul-float/2addr v13, v12

    add-float/2addr v10, v13

    .line 975
    move-wide v4, v8

    .line 964
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 963
    .end local v3    # "cnt":I
    .end local v6    # "i":I
    .end local v7    # "lux":F
    .end local v8    # "startTime":J
    .end local v12    # "weight":F
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 978
    .restart local v3    # "cnt":I
    .restart local v6    # "i":I
    :cond_2
    const-string v13, "AutomaticBrightnessController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "calculateAmbientLux: totalWeight="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", newAmbientLux="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    div-float v15, v10, v11

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    div-float v13, v10, v11

    goto :goto_0
.end method

.method private calculateNewAdjustGamma(I)I
    .locals 22
    .param p1, "brightness"    # I

    .prologue
    .line 1133
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 1134
    .local v14, "time":J
    const/16 v18, 0x0

    sget v19, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    move/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v6

    .line 1135
    .local v6, "brightnessFromUser":I
    int-to-float v0, v6

    move/from16 v18, v0

    sget v19, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v17, v18, v19

    .line 1136
    .local v17, "valueFromUser":F
    const/high16 v8, 0x3f800000    # 1.0f

    .line 1138
    .local v8, "gamma":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    move-object/from16 v18, v0

    const-wide/16 v20, 0x2710

    sub-long v20, v14, v20

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->prune(J)V

    .line 1140
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightBrighteningTransition(J)J

    move-result-wide v10

    .line 1141
    .local v10, "nextBrightenTransition":J
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransition(J)J

    move-result-wide v12

    .line 1142
    .local v12, "nextDarkenTransition":J
    const/high16 v4, -0x40800000    # -1.0f

    .line 1143
    .local v4, "ambientLux":F
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(J)F

    move-result v9

    .line 1144
    .local v9, "normalAmbientLux":F
    const/high16 v18, 0x42c80000    # 100.0f

    cmpg-float v18, v9, v18

    if-gez v18, :cond_3

    move v7, v9

    .line 1147
    .local v7, "fastAmbientLux":F
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    move/from16 v18, v0

    cmpl-float v18, v7, v18

    if-gez v18, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    move/from16 v18, v0

    cmpl-float v18, v9, v18

    if-ltz v18, :cond_1

    :cond_0
    cmp-long v18, v10, v14

    if-lez v18, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    move/from16 v18, v0

    cmpg-float v18, v7, v18

    if-gtz v18, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    move/from16 v18, v0

    cmpg-float v18, v9, v18

    if-gtz v18, :cond_4

    cmp-long v18, v12, v14

    if-gtz v18, :cond_4

    .line 1151
    :cond_2
    invoke-static {v7, v9}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 1156
    :goto_1
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 1157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/util/Spline;->interpolate(F)F

    move-result v16

    .line 1158
    .local v16, "valueFromSpline":F
    sget v18, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v16

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->round(F)I

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->clampScreenBrightness(I)I

    move-result v5

    .line 1161
    .local v5, "brightnessFromSpline":I
    const-string v18, "AutomaticBrightnessController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "valueFromUser="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "; valueFromSpline="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "; mAmbientLux="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/AutomaticBrightnessController;->computeGammaFromUser(FF)F

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessGamma:F

    .line 1166
    const-string v18, "AutomaticBrightnessController"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "The final gamma is "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessGamma:F

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessMode:Lcom/android/server/display/BrightnessMode;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessGamma:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/server/display/BrightnessMode;->setAutoBrightnessGamma(F)V

    .line 1169
    const/16 v18, 0x0

    return v18

    .line 1144
    .end local v5    # "brightnessFromSpline":I
    .end local v7    # "fastAmbientLux":F
    .end local v16    # "valueFromSpline":F
    :cond_3
    const/16 v18, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v14, v15, v1}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(JI)F

    move-result v7

    goto/16 :goto_0

    .line 1153
    .restart local v7    # "fastAmbientLux":F
    :cond_4
    move v4, v9

    goto/16 :goto_1
.end method

.method private static calculateWeight(JJ)F
    .locals 2
    .param p0, "startDelta"    # J
    .param p2, "endDelta"    # J

    .prologue
    .line 455
    invoke-static {p2, p3}, Lcom/android/server/display/AutomaticBrightnessController;->weightIntegral(J)F

    move-result v0

    invoke-static {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->weightIntegral(J)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method private cancelBrightnessAdjustmentSample()V
    .locals 2

    .prologue
    .line 671
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    if-eqz v0, :cond_0

    .line 672
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    .line 673
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 675
    :cond_0
    return-void
.end method

.method private clampScreenBrightness(I)I
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 651
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:I

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:I

    invoke-static {p1, v0, v1}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method private collectBrightnessAdjustmentSample()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 678
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    if-eqz v0, :cond_0

    .line 679
    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    .line 680
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    if-ltz v0, :cond_0

    .line 682
    const-string v0, "AutomaticBrightnessController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto-brightness adjustment changed by user: adj="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lux="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", brightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", gamma="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ring="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const v0, 0x88b8

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/Object;

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldAdjustment:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldLux:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldBrightness:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldGamma:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x6

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x7

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 701
    :cond_0
    return-void
.end method

.method private computeGammaFromUser(FF)F
    .locals 6
    .param p1, "valueFromUser"    # F
    .param p2, "valueFromSpline"    # F

    .prologue
    const v5, 0x3f9c28f6    # 1.22f

    const v4, 0x3ca3d70a    # 0.02f

    .line 1181
    add-float v3, p1, v4

    div-float v0, v3, v5

    .line 1183
    .local v0, "a":F
    add-float v3, p2, v4

    div-float v1, v3, v5

    .line 1185
    .local v1, "b":F
    invoke-static {v0}, Landroid/util/MathUtils;->log(F)F

    move-result v3

    invoke-static {v1}, Landroid/util/MathUtils;->log(F)F

    move-result v4

    div-float v2, v3, v4

    .line 1186
    .local v2, "gamma":F
    const-string v3, "AutomaticBrightnessController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "computeGammaFromUser: gamma="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    return v2
.end method

.method private computeNewValue(F)F
    .locals 6
    .param p1, "valueFromSpline"    # F

    .prologue
    const v5, 0x3f9c28f6    # 1.22f

    const v4, 0x3ca3d70a    # 0.02f

    .line 1192
    add-float v3, p1, v4

    div-float v0, v3, v5

    .line 1194
    .local v0, "a":F
    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessGamma:F

    invoke-static {v0, v3}, Landroid/util/MathUtils;->pow(FF)F

    move-result v1

    .line 1195
    .local v1, "b":F
    mul-float v3, v1, v5

    sub-float v2, v3, v4

    .line 1197
    .local v2, "value":F
    const-string v3, "AutomaticBrightnessController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "computeNewValue: value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    return v2
.end method

.method private doubleCheckDarken(F)Z
    .locals 12
    .param p1, "lux"    # F

    .prologue
    const/4 v6, 0x0

    .line 1078
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v7}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 1079
    .local v0, "N":I
    if-gtz v0, :cond_1

    .line 1101
    :cond_0
    :goto_0
    return v6

    .line 1081
    :cond_1
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v7, v8}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v1

    .line 1082
    .local v1, "topLux":F
    iget-object v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    add-int/lit8 v8, v0, -0x1

    invoke-virtual {v7, v8}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v4

    .line 1083
    .local v4, "sampleTime":J
    iget-wide v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDoubleCheckSampleTime:J

    cmp-long v7, v4, v8

    if-eqz v7, :cond_2

    .line 1084
    iget v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDoubleCheckSampleCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDoubleCheckSampleCount:I

    .line 1085
    iget v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDoubleCheckSampleSum:F

    add-float/2addr v7, v1

    iput v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDoubleCheckSampleSum:F

    .line 1086
    iput-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDoubleCheckSampleTime:J

    .line 1089
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 1090
    .local v2, "now":J
    iget-wide v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDoubleCheckStartTime:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gez v7, :cond_3

    .line 1091
    iput-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDoubleCheckStartTime:J

    goto :goto_0

    .line 1093
    :cond_3
    iget-wide v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDoubleCheckStartTime:J

    const-wide/16 v10, 0x2710

    add-long/2addr v8, v10

    cmp-long v7, v2, v8

    if-ltz v7, :cond_0

    .line 1094
    iget v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDoubleCheckSampleSum:F

    iget v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDoubleCheckSampleCount:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    iput v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDoubleCheckSampleSum:F

    .line 1095
    const-string v7, "AutomaticBrightnessController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doubleCheckDarken avg_lux = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDoubleCheckSampleSum:F

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    iget v7, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDoubleCheckSampleSum:F

    iget v8, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_4

    .line 1097
    const/4 v6, 0x1

    goto :goto_0

    .line 1099
    :cond_4
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->removeDoubleCheck()V

    goto :goto_0
.end method

.method private static getTwilightGamma(JJJ)F
    .locals 10
    .param p0, "now"    # J
    .param p2, "lastSunset"    # J
    .param p4, "nextSunrise"    # J

    .prologue
    const-wide/32 v8, 0x6ddd00

    const-wide/16 v6, 0x0

    const v4, 0x4adbba00    # 7200000.0f

    const/high16 v0, 0x3fc00000    # 1.5f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 704
    cmp-long v2, p2, v6

    if-ltz v2, :cond_0

    cmp-long v2, p4, v6

    if-ltz v2, :cond_0

    cmp-long v2, p0, p2

    if-ltz v2, :cond_0

    cmp-long v2, p0, p4

    if-lez v2, :cond_2

    :cond_0
    move v0, v1

    .line 719
    :cond_1
    :goto_0
    return v0

    .line 709
    :cond_2
    add-long v2, p2, v8

    cmp-long v2, p0, v2

    if-gez v2, :cond_3

    .line 710
    sub-long v2, p0, p2

    long-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v1, v0, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    goto :goto_0

    .line 714
    :cond_3
    sub-long v2, p4, v8

    cmp-long v2, p0, v2

    if-lez v2, :cond_1

    .line 715
    sub-long v2, p4, p0

    long-to-float v2, v2

    div-float/2addr v2, v4

    invoke-static {v1, v0, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v0

    goto :goto_0
.end method

.method private handleLightSensorEvent(JF)V
    .locals 3
    .param p1, "time"    # J
    .param p3, "lux"    # F

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 393
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/AutomaticBrightnessController;->applyLightSensorMeasurement(JF)V

    .line 394
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux(J)V

    .line 395
    return-void
.end method

.method private nextAmbientLightBrighteningTransition(J)J
    .locals 7
    .param p1, "time"    # J

    .prologue
    .line 465
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 466
    .local v0, "N":I
    move-wide v2, p1

    .line 467
    .local v2, "earliestValidTime":J
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 468
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_1

    .line 473
    :cond_0
    iget-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    add-long/2addr v4, v2

    return-wide v4

    .line 471
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v2

    .line 467
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private nextAmbientLightDarkeningTransition(J)J
    .locals 7
    .param p1, "time"    # J

    .prologue
    .line 477
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->size()I

    move-result v0

    .line 478
    .local v0, "N":I
    move-wide v2, p1

    .line 479
    .local v2, "earliestValidTime":J
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    .line 480
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    .line 482
    add-int/lit8 v4, v0, -0x1

    if-ne v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getLux(I)F

    move-result v4

    float-to-int v4, v4

    if-nez v4, :cond_0

    .line 484
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v2

    .line 491
    :cond_0
    iget-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    add-long/2addr v4, v2

    return-wide v4

    .line 489
    :cond_1
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v4, v1}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->getTime(I)J

    move-result-wide v2

    .line 479
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private prepareBrightnessAdjustmentSample()V
    .locals 4

    .prologue
    const/4 v1, 0x2

    .line 656
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    if-nez v0, :cond_1

    .line 657
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSamplePending:Z

    .line 658
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldAdjustment:F

    .line 659
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    :goto_0
    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldLux:F

    .line 660
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldBrightness:I

    .line 661
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrightnessAdjustmentSampleOldGamma:F

    .line 666
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 668
    return-void

    .line 659
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    .line 663
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    goto :goto_1
.end method

.method private removeDoubleCheck()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 1105
    iget-wide v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDoubleCheckStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 1106
    iput-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDoubleCheckStartTime:J

    .line 1107
    iput-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDoubleCheckSampleTime:J

    .line 1108
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDoubleCheckSampleCount:I

    .line 1109
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDoubleCheckSampleSum:F

    .line 1111
    :cond_0
    return-void
.end method

.method private removePendingDelay()V
    .locals 2

    .prologue
    .line 1071
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingAdjust:I

    if-eqz v0, :cond_0

    .line 1072
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mPendingAdjust:I

    .line 1073
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 1075
    :cond_0
    return-void
.end method

.method private setAmbientLux(F)V
    .locals 3
    .param p1, "lux"    # F

    .prologue
    .line 416
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    .line 420
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    const/high16 v2, 0x41400000    # 12.0f

    add-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    .line 421
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    const v1, 0x3f333333    # 0.7f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    const/high16 v2, 0x41a00000    # 20.0f

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    .line 423
    return-void
.end method

.method private setLightSensorEnabled(Z)Z
    .locals 7
    .param p1, "enable"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 355
    if-eqz p1, :cond_0

    .line 356
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-nez v0, :cond_1

    .line 358
    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFirstSensorData:Z

    .line 360
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessOverrideFromSetting:Z

    .line 361
    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    .line 362
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    .line 363
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorRate:I

    mul-int/lit16 v5, v5, 0x3e8

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 365
    iput-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRuntimeSensorModeChanged:Z

    .line 366
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFirstAutoBrightnessUpdate:Z

    .line 387
    :goto_0
    return v1

    .line 370
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    if-eqz v0, :cond_1

    .line 371
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    .line 372
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessOverrideFromSetting:Z

    .line 373
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 374
    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    .line 375
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->clear()V

    .line 376
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 377
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 378
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRuntimeSensorModeChanged:Z

    .line 379
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFirstAutoBrightnessUpdate:Z

    .line 380
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->removeMessages(I)V

    .line 382
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->removePendingDelay()V

    .line 383
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->removeDoubleCheck()V

    :cond_1
    move v1, v2

    .line 387
    goto :goto_0

    :cond_2
    move v0, v2

    .line 373
    goto :goto_1
.end method

.method private setScreenAutoBrightnessAdjustment(F)Z
    .locals 1
    .param p1, "adjustment"    # F

    .prologue
    .line 408
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 409
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    .line 410
    const/4 v0, 0x1

    .line 412
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldAdjust(F)Z
    .locals 4
    .param p1, "ambientLux"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1114
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, p1, v2

    if-nez v2, :cond_1

    .line 1115
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->removePendingDelay()V

    .line 1116
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->removeDoubleCheck()V

    move v0, v1

    .line 1129
    :cond_0
    :goto_0
    return v0

    .line 1118
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, p1, v2

    if-gez v2, :cond_2

    .line 1119
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->removePendingDelay()V

    .line 1120
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->removeDoubleCheck()V

    goto :goto_0

    .line 1122
    :cond_2
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    const/high16 v3, 0x42480000    # 50.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpl-float v2, v2, p1

    if-lez v2, :cond_3

    .line 1124
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->removePendingDelay()V

    .line 1125
    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->doubleCheckDarken(F)Z

    move-result v0

    goto :goto_0

    .line 1128
    :cond_3
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->removeDoubleCheck()V

    .line 1129
    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAdjust(F)I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private updateAmbientLux()V
    .locals 6

    .prologue
    .line 495
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 496
    .local v0, "time":J
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    const-wide/16 v4, 0x2710

    sub-long v4, v0, v4

    invoke-virtual {v2, v4, v5}, Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;->prune(J)V

    .line 497
    invoke-direct {p0, v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->updateAmbientLux(J)V

    .line 498
    return-void
.end method

.method private updateAmbientLux(J)V
    .locals 21
    .param p1, "time"    # J

    .prologue
    .line 503
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-nez v13, :cond_1

    .line 504
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    int-to-long v0, v13

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    move-wide/from16 v18, v0

    add-long v14, v16, v18

    .line 506
    .local v14, "timeWhenSensorWarmedUp":J
    cmp-long v13, p1, v14

    if-gez v13, :cond_0

    .line 508
    const-string v13, "AutomaticBrightnessController"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "updateAmbientLux: Sensor not  ready yet: time="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", timeWhenSensorWarmedUp="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v13, v0, v14, v15}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    .line 571
    .end local v14    # "timeWhenSensorWarmedUp":J
    :goto_0
    return-void

    .line 516
    .restart local v14    # "timeWhenSensorWarmedUp":J
    :cond_0
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(J)F

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 517
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    .line 519
    const-string v13, "AutomaticBrightnessController"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "updateAmbientLux: Initializing: mAmbientLightRingBuffer="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", mAmbientLux="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    .line 526
    .end local v14    # "timeWhenSensorWarmedUp":J
    :cond_1
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightBrighteningTransition(J)J

    move-result-wide v6

    .line 527
    .local v6, "nextBrightenTransition":J
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransition(J)J

    move-result-wide v8

    .line 530
    .local v8, "nextDarkenTransition":J
    const/high16 v4, -0x40800000    # -1.0f

    .line 531
    .local v4, "ambientLux":F
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(J)F

    move-result v12

    .line 532
    .local v12, "normalAmbientLux":F
    const/high16 v13, 0x42c80000    # 100.0f

    cmpg-float v13, v12, v13

    if-gez v13, :cond_7

    move v5, v12

    .line 535
    .local v5, "fastAmbientLux":F
    :goto_1
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    cmpl-float v13, v5, v13

    if-gez v13, :cond_2

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    cmpl-float v13, v12, v13

    if-ltz v13, :cond_3

    :cond_2
    cmp-long v13, v6, p1

    if-lez v13, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    cmpg-float v13, v5, v13

    if-gtz v13, :cond_5

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    cmpg-float v13, v12, v13

    if-gtz v13, :cond_5

    cmp-long v13, v8, p1

    if-gtz v13, :cond_5

    .line 539
    :cond_4
    invoke-static {v5, v12}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 543
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/display/AutomaticBrightnessController;->shouldAdjust(F)Z

    move-result v13

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessOverrideFromSetting:Z

    if-nez v13, :cond_6

    .line 545
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/display/AutomaticBrightnessController;->setAmbientLux(F)V

    .line 547
    const-string v16, "AutomaticBrightnessController"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "updateAmbientLux: "

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    cmpl-float v13, v4, v13

    if-lez v13, :cond_8

    const-string v13, "Brightened"

    :goto_2
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v17, ": "

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v17, "mBrighteningLuxThreshold="

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v17, ", mAmbientLightRingBuffer="

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v17, ", mAmbientLux="

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    move/from16 v17, v0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v16

    invoke-static {v0, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    .line 554
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightBrighteningTransition(J)J

    move-result-wide v6

    .line 555
    invoke-direct/range {p0 .. p2}, Lcom/android/server/display/AutomaticBrightnessController;->nextAmbientLightDarkeningTransition(J)J

    move-result-wide v8

    .line 557
    :cond_6
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v10

    .line 564
    .local v10, "nextTransitionTime":J
    cmp-long v13, v10, p1

    if-lez v13, :cond_9

    .line 567
    :goto_3
    const-string v13, "AutomaticBrightnessController"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "updateAmbientLux: Scheduling ambient lux update for "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-static {v10, v11}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-static {v13, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mHandler:Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v13, v0, v10, v11}, Lcom/android/server/display/AutomaticBrightnessController$AutomaticBrightnessHandler;->sendEmptyMessageAtTime(IJ)Z

    goto/16 :goto_0

    .line 532
    .end local v5    # "fastAmbientLux":F
    .end local v10    # "nextTransitionTime":J
    :cond_7
    const/16 v13, 0xa

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-direct {v0, v1, v2, v13}, Lcom/android/server/display/AutomaticBrightnessController;->calculateAmbientLux(JI)F

    move-result v5

    goto/16 :goto_1

    .line 547
    .restart local v5    # "fastAmbientLux":F
    :cond_8
    const-string v13, "Darkened"

    goto/16 :goto_2

    .line 564
    .restart local v10    # "nextTransitionTime":J
    :cond_9
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorRate:I

    int-to-long v0, v13

    move-wide/from16 v16, v0

    add-long v10, p1, v16

    goto :goto_3
.end method

.method private updateAutoBrightness(Z)V
    .locals 14
    .param p1, "sendUpdate"    # Z

    .prologue
    .line 574
    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLuxValid:Z

    if-nez v2, :cond_1

    .line 648
    :cond_0
    :goto_0
    return-void

    .line 578
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v2, v3}, Landroid/util/Spline;->interpolate(F)F

    move-result v13

    .line 583
    .local v13, "value":F
    const/high16 v8, 0x3f800000    # 1.0f

    .line 584
    .local v8, "gamma":F
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_2

    .line 586
    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    iget v5, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    neg-float v5, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Landroid/util/MathUtils;->pow(FF)F

    move-result v6

    .line 588
    .local v6, "adjGamma":F
    mul-float/2addr v8, v6

    .line 590
    const-string v2, "AutomaticBrightnessController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAutoBrightness: adjGamma="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    .end local v6    # "adjGamma":F
    :cond_2
    sget-boolean v2, Lcom/android/server/display/AutomaticBrightnessController;->USE_TWILIGHT_ADJUSTMENT:Z

    if-eqz v2, :cond_3

    .line 595
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v2}, Lcom/android/server/twilight/TwilightManager;->getCurrentState()Lcom/android/server/twilight/TwilightState;

    move-result-object v12

    .line 596
    .local v12, "state":Lcom/android/server/twilight/TwilightState;
    if-eqz v12, :cond_3

    invoke-virtual {v12}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 597
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 598
    .local v0, "now":J
    invoke-virtual {v12}, Lcom/android/server/twilight/TwilightState;->getYesterdaySunset()J

    move-result-wide v2

    invoke-virtual {v12}, Lcom/android/server/twilight/TwilightState;->getTodaySunrise()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/android/server/display/AutomaticBrightnessController;->getTwilightGamma(JJJ)F

    move-result v7

    .line 600
    .local v7, "earlyGamma":F
    invoke-virtual {v12}, Lcom/android/server/twilight/TwilightState;->getTodaySunset()J

    move-result-wide v2

    invoke-virtual {v12}, Lcom/android/server/twilight/TwilightState;->getTomorrowSunrise()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Lcom/android/server/display/AutomaticBrightnessController;->getTwilightGamma(JJJ)F

    move-result v10

    .line 602
    .local v10, "lateGamma":F
    mul-float v2, v7, v10

    mul-float/2addr v8, v2

    .line 604
    const-string v2, "AutomaticBrightnessController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAutoBrightness: earlyGamma="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", lateGamma="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    .end local v0    # "now":J
    .end local v7    # "earlyGamma":F
    .end local v10    # "lateGamma":F
    .end local v12    # "state":Lcom/android/server/twilight/TwilightState;
    :cond_3
    const-string v2, "AutomaticBrightnessController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAutoBrightness: mScreenAutoBrightnessGamma="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessGamma:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessGamma:F

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_4

    .line 621
    move v9, v13

    .line 622
    .local v9, "in":F
    invoke-direct {p0, v13}, Lcom/android/server/display/AutomaticBrightnessController;->computeNewValue(F)F

    move-result v13

    .line 625
    const-string v2, "AutomaticBrightnessController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAutoBrightness: gamma="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessGamma:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", in="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", out="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    .end local v9    # "in":F
    :cond_4
    sget v2, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    int-to-float v2, v2

    mul-float/2addr v2, v13

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/display/AutomaticBrightnessController;->clampScreenBrightness(I)I

    move-result v11

    .line 631
    .local v11, "newScreenAutoBrightness":I
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    if-eq v2, v11, :cond_0

    .line 633
    const-string v2, "AutomaticBrightnessController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateAutoBrightness: mScreenAutoBrightness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newScreenAutoBrightness="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", sendUpdate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iput v11, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 639
    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessGamma:F

    iput v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    .line 641
    if-eqz p1, :cond_5

    iget-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRuntimeSensorModeChanged:Z

    if-eqz v2, :cond_5

    .line 642
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRuntimeSensorModeChanged:Z

    .line 643
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFirstAutoBrightnessUpdate:Z

    .line 646
    :cond_5
    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mCallbacks:Lcom/android/server/display/AutomaticBrightnessController$Callbacks;

    iget v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    invoke-interface {v2, v3, p1}, Lcom/android/server/display/AutomaticBrightnessController$Callbacks;->updateBrightness(IZ)V

    goto/16 :goto_0
.end method

.method private static weightIntegral(J)F
    .locals 4
    .param p0, "x"    # J

    .prologue
    .line 461
    long-to-float v0, p0

    long-to-float v1, p0

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    const v2, 0x461c4000    # 10000.0f

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public configure(ZFZZ)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "adjustment"    # F
    .param p3, "dozing"    # Z
    .param p4, "userInitiatedChange"    # Z

    .prologue
    const/4 v2, 0x0

    .line 311
    iput-boolean p3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozing:Z

    .line 312
    if-eqz p1, :cond_2

    if-nez p3, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->setLightSensorEnabled(Z)Z

    move-result v0

    .line 313
    .local v0, "changed":Z
    invoke-direct {p0, p2}, Lcom/android/server/display/AutomaticBrightnessController;->setScreenAutoBrightnessAdjustment(F)Z

    move-result v1

    or-int/2addr v0, v1

    .line 314
    if-eqz v0, :cond_0

    .line 315
    invoke-direct {p0, v2}, Lcom/android/server/display/AutomaticBrightnessController;->updateAutoBrightness(Z)V

    .line 317
    :cond_0
    if-eqz p1, :cond_1

    if-nez p3, :cond_1

    if-eqz p4, :cond_1

    .line 318
    invoke-direct {p0}, Lcom/android/server/display/AutomaticBrightnessController;->prepareBrightnessAdjustmentSample()V

    .line 320
    :cond_1
    return-void

    .end local v0    # "changed":Z
    :cond_2
    move v1, v2

    .line 312
    goto :goto_0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 323
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 324
    const-string v0, "Automatic Brightness Controller Configuration:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightnessSpline="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessSpline:Landroid/util/Spline;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMinimum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessRangeMaximum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorWarmUpTimeConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorWarmUpTimeConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrighteningLightDebounceConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLightDebounceConfig:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDarkeningLightDebounceConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLightDebounceConfig:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mResetAmbientLuxAfterWarmUpConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mResetAmbientLuxAfterWarmUpConfig:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 334
    const-string v0, "Automatic Brightness Controller State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mTwilight.getCurrentState()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mTwilight:Lcom/android/server/twilight/TwilightManager;

    invoke-interface {v1}, Lcom/android/server/twilight/TwilightManager;->getCurrentState()Lcom/android/server/twilight/TwilightState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLightSensorEnableTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLightSensorEnableTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrighteningLuxThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mBrighteningLuxThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDarkeningLuxThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDarkeningLuxThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedLux="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastObservedLuxTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastObservedLuxTime:J

    invoke-static {v2, v3}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mRecentLightSamples="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRecentLightSamples:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAmbientLightRingBuffer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mAmbientLightRingBuffer:Lcom/android/server/display/AutomaticBrightnessController$AmbientLightRingBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightnessAdjustment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessAdjustment:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mLastScreenAutoBrightnessGamma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mLastScreenAutoBrightnessGamma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDozing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightnessOverrideFromSetting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessOverrideFromSetting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenAutoBrightnessGamma="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessGamma:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method public getAutomaticScreenBrightness()I
    .locals 2

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozing:Z

    if-eqz v0, :cond_0

    .line 256
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mDozeScaleFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 258
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    goto :goto_0
.end method

.method public final getScreenAutoBrightness()I
    .locals 3

    .prologue
    .line 266
    iget v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    iget v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMinimum:I

    iget v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenBrightnessRangeMaximum:I

    invoke-static {v0, v1, v2}, Landroid/util/MathUtils;->constrain(III)I

    move-result v0

    return v0
.end method

.method public isFirstAutoBrightnessUpdate()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 294
    iget-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFirstAutoBrightnessUpdate:Z

    .line 296
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFirstAutoBrightnessUpdate:Z

    if-eqz v1, :cond_0

    .line 297
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mRuntimeSensorModeChanged:Z

    .line 298
    iput-boolean v2, p0, Lcom/android/server/display/AutomaticBrightnessController;->mFirstAutoBrightnessUpdate:Z

    .line 301
    :cond_0
    return v0
.end method

.method public setScreenAutoBrightness(I)Z
    .locals 3
    .param p1, "brightness"    # I

    .prologue
    .line 272
    const-string v0, "AutomaticBrightnessController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScreenAutoBrightness  brightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessOverrideFromSetting:Z

    .line 276
    invoke-direct {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->calculateNewAdjustGamma(I)I

    .line 278
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 280
    const/4 v0, 0x1

    return v0
.end method

.method public setTemporaryScreenAutoBrightness(I)Z
    .locals 4
    .param p1, "brightness"    # I

    .prologue
    const/4 v3, 0x1

    .line 284
    const-string v0, "AutomaticBrightnessController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTemporaryScreenAutoBrightness  brightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    iput-boolean v3, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightnessOverrideFromSetting:Z

    .line 288
    iput p1, p0, Lcom/android/server/display/AutomaticBrightnessController;->mScreenAutoBrightness:I

    .line 290
    return v3
.end method
