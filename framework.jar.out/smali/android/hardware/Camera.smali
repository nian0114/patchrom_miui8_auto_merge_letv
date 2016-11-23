.class public Landroid/hardware/Camera;
.super Ljava/lang/Object;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/Camera$1;,
        Landroid/hardware/Camera$Parameters;,
        Landroid/hardware/Camera$Area;,
        Landroid/hardware/Camera$Size;,
        Landroid/hardware/Camera$Coordinate;,
        Landroid/hardware/Camera$CameraMetaDataCallback;,
        Landroid/hardware/Camera$CameraDataCallback;,
        Landroid/hardware/Camera$LetvDualCamParam;,
        Landroid/hardware/Camera$ILetvDualCamListener;,
        Landroid/hardware/Camera$ErrorCallback;,
        Landroid/hardware/Camera$Face;,
        Landroid/hardware/Camera$FaceDetectionListener;,
        Landroid/hardware/Camera$PanoListener;,
        Landroid/hardware/Camera$ASDListener;,
        Landroid/hardware/Camera$OnZoomChangeListener;,
        Landroid/hardware/Camera$PictureCallback;,
        Landroid/hardware/Camera$ShutterCallback;,
        Landroid/hardware/Camera$AutoFocusMoveCallback;,
        Landroid/hardware/Camera$AutoFocusCallback;,
        Landroid/hardware/Camera$EventHandler;,
        Landroid/hardware/Camera$PreviewCallback;,
        Landroid/hardware/Camera$CameraInfo;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ACTION_NEW_PICTURE:Ljava/lang/String; = "android.hardware.action.NEW_PICTURE"

.field public static final ACTION_NEW_VIDEO:Ljava/lang/String; = "android.hardware.action.NEW_VIDEO"

.field public static final CAMERA_ERROR_EVICTED:I = 0x2

.field public static final CAMERA_ERROR_SERVER_DIED:I = 0x64

.field public static final CAMERA_ERROR_UNKNOWN:I = 0x1

.field private static final CAMERA_EX_MSG_DUAL_CAM:I = 0x40000

.field private static final CAMERA_EX_MSG_FACE_SCENE:I = 0x20000

.field private static final CAMERA_EX_MSG_PANORAMA:I = 0x10000

.field private static final CAMERA_FACE_DETECTION_HW:I = 0x0

.field private static final CAMERA_FACE_DETECTION_SW:I = 0x1

.field public static final CAMERA_HAL_API_VERSION_1_0:I = 0x100

.field private static final CAMERA_HAL_API_VERSION_NORMAL_CONNECT:I = -0x2

.field private static final CAMERA_HAL_API_VERSION_UNSPECIFIED:I = -0x1

.field private static final CAMERA_MSG_COMPRESSED_IMAGE:I = 0x100

.field private static final CAMERA_MSG_ERROR:I = 0x1

.field private static final CAMERA_MSG_FOCUS:I = 0x4

.field private static final CAMERA_MSG_FOCUS_MOVE:I = 0x800

.field private static final CAMERA_MSG_META_DATA:I = 0x2000

.field private static final CAMERA_MSG_POSTVIEW_FRAME:I = 0x40

.field private static final CAMERA_MSG_PREVIEW_FRAME:I = 0x10

.field private static final CAMERA_MSG_PREVIEW_METADATA:I = 0x400

.field private static final CAMERA_MSG_RAW_IMAGE:I = 0x80

.field private static final CAMERA_MSG_RAW_IMAGE_NOTIFY:I = 0x200

.field private static final CAMERA_MSG_SHUTTER:I = 0x2

.field private static final CAMERA_MSG_STATS_DATA:I = 0x1000

.field private static final CAMERA_MSG_VIDEO_FRAME:I = 0x20

.field private static final CAMERA_MSG_ZOOM:I = 0x8

.field private static final EACCESS:I = -0xd

.field private static final EBUSY:I = -0x10

.field private static final EINVAL:I = -0x16

.field private static final ENODEV:I = -0x13

.field private static final ENOSYS:I = -0x26

.field private static final EOPNOTSUPP:I = -0x5f

.field private static final EUSERS:I = -0x57

.field private static final KEY_LETV_TRACE:Ljava/lang/String; = "letv_trace"

.field private static final LETV_DUAL_CB_CMD_DEPTH_MAP:I = 0x2

.field private static final LETV_DUAL_CB_CMD_DEPTH_MAP_RT:I = 0x3

.field private static final LETV_DUAL_CB_CMD_NOTIFY:I = 0x0

.field private static final LETV_DUAL_CB_CMD_ORIG:I = 0x1

.field private static final NO_ERROR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Camera"

.field private static final VALUE_TENCENT_MM:Ljava/lang/String; = "com.tencent.mm"


# instance fields
.field private final TAG_WEICHAT_UI_CLASS_NAME:Ljava/lang/String;

.field private mASDListener:Landroid/hardware/Camera$ASDListener;

.field private mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

.field private final mAutoFocusCallbackLock:Ljava/lang/Object;

.field private mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

.field private mCameraDataCallback:Landroid/hardware/Camera$CameraDataCallback;

.field private mCameraMetaDataCallback:Landroid/hardware/Camera$CameraMetaDataCallback;

.field private mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

.field private mEventHandler:Landroid/hardware/Camera$EventHandler;

.field private mFaceDetectionRunning:Z

.field private mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

.field private mILetvDualCamListener:Landroid/hardware/Camera$ILetvDualCamListener;

.field private mJpegCallback:Landroid/hardware/Camera$PictureCallback;

.field private mLetvTrace:Ljava/lang/String;

.field private mNativeContext:J

.field private mOneShot:Z

.field private mPanoListener:Landroid/hardware/Camera$PanoListener;

.field private mPanoRunning:Z

.field private mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

.field private mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

.field private mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

.field private mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

.field private mUsingPreviewAllocation:Z

.field private mWithBuffer:Z

.field private mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

.field private m_bforbidAutoFocus:Z


# direct methods
.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-boolean v1, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 194
    iput-boolean v1, p0, Landroid/hardware/Camera;->mPanoRunning:Z

    .line 196
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    .line 2086
    const-string v0, "com.tencent.mm.LETV.com.tencent.mm.plugin.scanner.ui.BaseScanUI"

    iput-object v0, p0, Landroid/hardware/Camera;->TAG_WEICHAT_UI_CLASS_NAME:Ljava/lang/String;

    .line 2178
    iput-object v2, p0, Landroid/hardware/Camera;->mLetvTrace:Ljava/lang/String;

    .line 2179
    iput-boolean v1, p0, Landroid/hardware/Camera;->m_bforbidAutoFocus:Z

    .line 2229
    iput-object v2, p0, Landroid/hardware/Camera;->mILetvDualCamListener:Landroid/hardware/Camera$ILetvDualCamListener;

    .line 566
    return-void
.end method

.method constructor <init>(I)V
    .locals 4
    .param p1, "cameraId"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-boolean v2, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 194
    iput-boolean v2, p0, Landroid/hardware/Camera;->mPanoRunning:Z

    .line 196
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    .line 2086
    const-string v1, "com.tencent.mm.LETV.com.tencent.mm.plugin.scanner.ui.BaseScanUI"

    iput-object v1, p0, Landroid/hardware/Camera;->TAG_WEICHAT_UI_CLASS_NAME:Ljava/lang/String;

    .line 2178
    iput-object v3, p0, Landroid/hardware/Camera;->mLetvTrace:Ljava/lang/String;

    .line 2179
    iput-boolean v2, p0, Landroid/hardware/Camera;->m_bforbidAutoFocus:Z

    .line 2229
    iput-object v3, p0, Landroid/hardware/Camera;->mILetvDualCamListener:Landroid/hardware/Camera$ILetvDualCamListener;

    .line 533
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->cameraInitNormal(I)I

    move-result v0

    .line 534
    .local v0, "err":I
    invoke-static {v0}, Landroid/hardware/Camera;->checkInitErrors(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 535
    sparse-switch v0, :sswitch_data_0

    .line 542
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown camera error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 537
    :sswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Fail to connect to camera service"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 539
    :sswitch_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 545
    :cond_0
    return-void

    .line 535
    :sswitch_data_0
    .sparse-switch
        -0x13 -> :sswitch_1
        -0xd -> :sswitch_0
    .end sparse-switch
.end method

.method private constructor <init>(II)V
    .locals 4
    .param p1, "cameraId"    # I
    .param p2, "halVersion"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput-boolean v2, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 194
    iput-boolean v2, p0, Landroid/hardware/Camera;->mPanoRunning:Z

    .line 196
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    .line 2086
    const-string v1, "com.tencent.mm.LETV.com.tencent.mm.plugin.scanner.ui.BaseScanUI"

    iput-object v1, p0, Landroid/hardware/Camera;->TAG_WEICHAT_UI_CLASS_NAME:Ljava/lang/String;

    .line 2178
    iput-object v3, p0, Landroid/hardware/Camera;->mLetvTrace:Ljava/lang/String;

    .line 2179
    iput-boolean v2, p0, Landroid/hardware/Camera;->m_bforbidAutoFocus:Z

    .line 2229
    iput-object v3, p0, Landroid/hardware/Camera;->mILetvDualCamListener:Landroid/hardware/Camera$ILetvDualCamListener;

    .line 454
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->cameraInitVersion(II)I

    move-result v0

    .line 455
    .local v0, "err":I
    invoke-static {v0}, Landroid/hardware/Camera;->checkInitErrors(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    sparse-switch v0, :sswitch_data_0

    .line 478
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown camera error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 458
    :sswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Fail to connect to camera service"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 460
    :sswitch_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 462
    :sswitch_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed because some methods are not implemented"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 465
    :sswitch_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed because the hal version is not supported by this device"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 468
    :sswitch_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed because the input arugments are invalid"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 471
    :sswitch_5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed because the camera device was already opened"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 474
    :sswitch_6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed because the max number of camera devices were already opened"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 481
    :cond_0
    return-void

    .line 456
    :sswitch_data_0
    .sparse-switch
        -0x5f -> :sswitch_3
        -0x57 -> :sswitch_6
        -0x26 -> :sswitch_2
        -0x16 -> :sswitch_4
        -0x13 -> :sswitch_1
        -0x10 -> :sswitch_5
        -0xd -> :sswitch_0
    .end sparse-switch
.end method

.method private final native _addCallbackBuffer([BI)V
.end method

.method private final native _enableShutterSound(Z)Z
.end method

.method private static native _getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
.end method

.method private final native _startFaceDetection(I)V
.end method

.method private final native _startPanoCapture()V
.end method

.method private final native _stopFaceDetection()V
.end method

.method private final native _stopPanoCapture()V
.end method

.method private final native _stopPreview()V
.end method

.method static synthetic access$000(Landroid/hardware/Camera;)Landroid/hardware/Camera$ShutterCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 145
    iget-object v0, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 145
    iget-object v0, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 145
    iget-object v0, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 145
    iget-object v0, p0, Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 145
    iget-object v0, p0, Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 145
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    return-object v0
.end method

.method static synthetic access$1400([BI)I
    .locals 1
    .param p0, "x0"    # [B
    .param p1, "x1"    # I

    .prologue
    .line 145
    invoke-static {p0, p1}, Landroid/hardware/Camera;->byteToInt([BI)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraDataCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 145
    iget-object v0, p0, Landroid/hardware/Camera;->mCameraDataCallback:Landroid/hardware/Camera$CameraDataCallback;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraMetaDataCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 145
    iget-object v0, p0, Landroid/hardware/Camera;->mCameraMetaDataCallback:Landroid/hardware/Camera$CameraMetaDataCallback;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/hardware/Camera;)Landroid/hardware/Camera$PanoListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 145
    iget-object v0, p0, Landroid/hardware/Camera;->mPanoListener:Landroid/hardware/Camera$PanoListener;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/hardware/Camera;)Landroid/hardware/Camera$ASDListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 145
    iget-object v0, p0, Landroid/hardware/Camera;->mASDListener:Landroid/hardware/Camera$ASDListener;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/hardware/Camera;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/Camera;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 145
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->handleLetvDualCamMsg(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 145
    iget-object v0, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$300(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 145
    iget-object v0, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object v0
.end method

.method static synthetic access$302(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)Landroid/hardware/Camera$PreviewCallback;
    .locals 0
    .param p0, "x0"    # Landroid/hardware/Camera;
    .param p1, "x1"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    .line 145
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object p1
.end method

.method static synthetic access$400(Landroid/hardware/Camera;)Z
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 145
    iget-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    return v0
.end method

.method static synthetic access$500(Landroid/hardware/Camera;)Z
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 145
    iget-boolean v0, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    return v0
.end method

.method static synthetic access$600(Landroid/hardware/Camera;ZZ)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/Camera;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 145
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    return-void
.end method

.method static synthetic access$700(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 145
    iget-object v0, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$800(Landroid/hardware/Camera;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 145
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 145
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    return-object v0
.end method

.method private final addCallbackBuffer([BI)V
    .locals 3
    .param p1, "callbackBuffer"    # [B
    .param p2, "msgType"    # I

    .prologue
    .line 976
    const/16 v0, 0x10

    if-eq p2, v0, :cond_0

    const/16 v0, 0x80

    if-eq p2, v0, :cond_0

    .line 978
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 982
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->_addCallbackBuffer([BI)V

    .line 983
    return-void
.end method

.method private static byteToInt([BI)I
    .locals 4
    .param p0, "b"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 2356
    const/4 v2, 0x0

    .line 2357
    .local v2, "value":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    .line 2358
    rsub-int/lit8 v3, v0, 0x3

    mul-int/lit8 v1, v3, 0x8

    .line 2359
    .local v1, "shift":I
    rsub-int/lit8 v3, v0, 0x3

    add-int/2addr v3, p1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v1

    add-int/2addr v2, v3

    .line 2357
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2361
    .end local v1    # "shift":I
    :cond_0
    return v2
.end method

.method private cameraInitNormal(I)I
    .locals 1
    .param p1, "cameraId"    # I

    .prologue
    .line 510
    const/4 v0, -0x2

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->cameraInitVersion(II)I

    move-result v0

    return v0
.end method

.method private cameraInitVersion(II)I
    .locals 3
    .param p1, "cameraId"    # I
    .param p2, "halVersion"    # I

    .prologue
    const/4 v2, 0x0

    .line 484
    iput-object v2, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 485
    iput-object v2, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 486
    iput-object v2, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 487
    iput-object v2, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 488
    iput-object v2, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 489
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 490
    iput-object v2, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    .line 492
    iput-object v2, p0, Landroid/hardware/Camera;->mCameraDataCallback:Landroid/hardware/Camera$CameraDataCallback;

    .line 493
    iput-object v2, p0, Landroid/hardware/Camera;->mCameraMetaDataCallback:Landroid/hardware/Camera$CameraMetaDataCallback;

    .line 497
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 498
    new-instance v1, Landroid/hardware/Camera$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/hardware/Camera$EventHandler;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    .line 505
    :goto_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, p1, p2, v2}, Landroid/hardware/Camera;->native_setup(Ljava/lang/Object;IILjava/lang/String;)I

    move-result v1

    return v1

    .line 499
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 500
    new-instance v1, Landroid/hardware/Camera$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/hardware/Camera$EventHandler;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    goto :goto_0

    .line 502
    :cond_1
    iput-object v2, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    goto :goto_0
.end method

.method public static checkInitErrors(I)Z
    .locals 1
    .param p0, "err"    # I

    .prologue
    .line 552
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dumpTrace()Ljava/lang/String;
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x4

    .line 2182
    new-instance v7, Ljava/lang/Throwable;

    invoke-direct {v7}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v7}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 2183
    .local v1, "e":[Ljava/lang/StackTraceElement;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 2185
    .local v5, "listSave":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/StackTraceElement;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 2186
    .local v2, "i":Ljava/lang/StackTraceElement;
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 2187
    .local v6, "tmp":Ljava/lang/String;
    const/4 v7, 0x0

    const-string v8, "."

    invoke-virtual {v6, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 2188
    const-string v7, "Camera"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dumpTrace:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", tmp:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v10, :cond_0

    .line 2190
    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2191
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2185
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2197
    .end local v2    # "i":Ljava/lang/StackTraceElement;
    .end local v6    # "tmp":Ljava/lang/String;
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v11, :cond_2

    const-string v7, ""

    :goto_1
    return-object v7

    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x1

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v12, :cond_3

    const-string v7, ""

    :goto_2
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ","

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    if-ge v7, v10, :cond_4

    const-string v7, ""

    :goto_3
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ","

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3
.end method

.method private native enableFocusMoveCallback(I)V
.end method

.method private final native enableLetvDualCamMsg(Z)V
.end method

.method public static getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    .locals 5
    .param p0, "cameraId"    # I
    .param p1, "cameraInfo"    # Landroid/hardware/Camera$CameraInfo;

    .prologue
    .line 263
    invoke-static {p0, p1}, Landroid/hardware/Camera;->_getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 264
    const-string v3, "audio"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 265
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 267
    .local v0, "audioService":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isCameraSoundForced()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 270
    const/4 v3, 0x0

    iput-boolean v3, p1, Landroid/hardware/Camera$CameraInfo;->canDisableShutterSound:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 272
    :catch_0
    move-exception v2

    .line 273
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Camera"

    const-string v4, "Audio service is unavailable for queries"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getCurrentActivityName()Ljava/lang/String;
    .locals 11

    .prologue
    .line 2072
    const-string v6, ""

    .line 2074
    .local v6, "strRet":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    .line 2075
    .local v1, "at":Landroid/app/ActivityThread;
    const-string v7, "android.app.ContextImpl"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 2076
    .local v2, "cls":Ljava/lang/Class;
    const-string v7, "getSystemService"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 2077
    .local v5, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const-string v10, "activity"

    aput-object v10, v8, v9

    invoke-virtual {v5, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2078
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 2079
    .local v3, "cn":Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 2083
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "at":Landroid/app/ActivityThread;
    .end local v2    # "cls":Ljava/lang/Class;
    .end local v3    # "cn":Landroid/content/ComponentName;
    .end local v5    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-object v6

    .line 2080
    :catch_0
    move-exception v4

    .line 2081
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getCurrentPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2092
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEmptyParameters()Landroid/hardware/Camera$Parameters;
    .locals 3

    .prologue
    .line 2350
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0}, Landroid/hardware/Camera;-><init>()V

    .line 2351
    .local v0, "camera":Landroid/hardware/Camera;
    new-instance v1, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$1;)V

    return-object v1
.end method

.method public static native getNumberOfCameras()I
.end method

.method public static getParametersCopy(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera$Parameters;
    .locals 4
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 2515
    if-nez p0, :cond_0

    .line 2516
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "parameters must not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2519
    :cond_0
    # invokes: Landroid/hardware/Camera$Parameters;->getOuter()Landroid/hardware/Camera;
    invoke-static {p0}, Landroid/hardware/Camera$Parameters;->access$2100(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera;

    move-result-object v0

    .line 2520
    .local v0, "camera":Landroid/hardware/Camera;
    new-instance v1, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$1;)V

    .line 2521
    .local v1, "p":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1, p0}, Landroid/hardware/Camera$Parameters;->copyFrom(Landroid/hardware/Camera$Parameters;)V

    .line 2523
    return-object v1
.end method

.method private handleLetvDualCamMsg(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2238
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v0, :cond_1

    .line 2287
    :cond_0
    :goto_0
    return-void

    .line 2242
    :cond_1
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/hardware/Camera$LetvDualCamParam;

    .line 2244
    .local v9, "param":Landroid/hardware/Camera$LetvDualCamParam;
    const-string v1, "Camera"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleLetvDualCamMsg cmd:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v9, Landroid/hardware/Camera$LetvDualCamParam;->cmd:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",type:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v9, Landroid/hardware/Camera$LetvDualCamParam;->type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",arg1:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v9, Landroid/hardware/Camera$LetvDualCamParam;->arg1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",arg2:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v9, Landroid/hardware/Camera$LetvDualCamParam;->arg2:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",x:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v9, Landroid/hardware/Camera$LetvDualCamParam;->x:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",y:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v9, Landroid/hardware/Camera$LetvDualCamParam;->y:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",farg1:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v9, Landroid/hardware/Camera$LetvDualCamParam;->farg1:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",farg2:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v9, Landroid/hardware/Camera$LetvDualCamParam;->farg2:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v9, Landroid/hardware/Camera$LetvDualCamParam;->data:[B

    if-nez v0, :cond_3

    const-string v0, ""

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2255
    iget-object v0, v9, Landroid/hardware/Camera$LetvDualCamParam;->data:[B

    if-eqz v0, :cond_5

    .line 2256
    iget-object v0, v9, Landroid/hardware/Camera$LetvDualCamParam;->data:[B

    array-length v0, v0

    div-int/lit8 v10, v0, 0xa

    .line 2257
    .local v10, "step":I
    const-string v7, ""

    .line 2258
    .local v7, "data":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_2
    const/16 v0, 0xa

    if-ge v8, v0, :cond_4

    .line 2259
    if-lez v8, :cond_2

    .line 2260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2262
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v9, Landroid/hardware/Camera$LetvDualCamParam;->data:[B

    mul-int v2, v8, v10

    aget-byte v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2258
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 2244
    .end local v7    # "data":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v10    # "step":I
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", data:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v9, Landroid/hardware/Camera$LetvDualCamParam;->data:[B

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 2264
    .restart local v7    # "data":Ljava/lang/String;
    .restart local v8    # "i":I
    .restart local v10    # "step":I
    :cond_4
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleLetvDualCamMsg data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    .end local v7    # "data":Ljava/lang/String;
    .end local v8    # "i":I
    .end local v10    # "step":I
    :cond_5
    iget-object v0, p0, Landroid/hardware/Camera;->mILetvDualCamListener:Landroid/hardware/Camera$ILetvDualCamListener;

    if-eqz v0, :cond_0

    .line 2270
    iget v0, v9, Landroid/hardware/Camera$LetvDualCamParam;->cmd:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 2272
    :pswitch_0
    iget-object v0, p0, Landroid/hardware/Camera;->mILetvDualCamListener:Landroid/hardware/Camera$ILetvDualCamListener;

    iget v1, v9, Landroid/hardware/Camera$LetvDualCamParam;->type:I

    iget v2, v9, Landroid/hardware/Camera$LetvDualCamParam;->farg1:F

    iget v3, v9, Landroid/hardware/Camera$LetvDualCamParam;->farg2:F

    invoke-interface {v0, v1, v2, v3}, Landroid/hardware/Camera$ILetvDualCamListener;->onNotify(IFF)V

    goto/16 :goto_0

    .line 2275
    :pswitch_1
    iget-object v0, p0, Landroid/hardware/Camera;->mILetvDualCamListener:Landroid/hardware/Camera$ILetvDualCamListener;

    iget v1, v9, Landroid/hardware/Camera$LetvDualCamParam;->type:I

    iget v2, v9, Landroid/hardware/Camera$LetvDualCamParam;->arg1:I

    iget v3, v9, Landroid/hardware/Camera$LetvDualCamParam;->arg2:I

    iget-object v4, v9, Landroid/hardware/Camera$LetvDualCamParam;->data:[B

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/hardware/Camera$ILetvDualCamListener;->onOrigJpegCB(III[B)V

    goto/16 :goto_0

    .line 2278
    :pswitch_2
    iget-object v0, p0, Landroid/hardware/Camera;->mILetvDualCamListener:Landroid/hardware/Camera$ILetvDualCamListener;

    iget v1, v9, Landroid/hardware/Camera$LetvDualCamParam;->arg1:I

    iget v2, v9, Landroid/hardware/Camera$LetvDualCamParam;->arg2:I

    iget v3, v9, Landroid/hardware/Camera$LetvDualCamParam;->x:I

    iget v4, v9, Landroid/hardware/Camera$LetvDualCamParam;->y:I

    iget v5, v9, Landroid/hardware/Camera$LetvDualCamParam;->farg1:F

    iget-object v6, v9, Landroid/hardware/Camera$LetvDualCamParam;->data:[B

    invoke-interface/range {v0 .. v6}, Landroid/hardware/Camera$ILetvDualCamListener;->onDepthMapCB(IIIIF[B)V

    goto/16 :goto_0

    .line 2281
    :pswitch_3
    iget-object v0, p0, Landroid/hardware/Camera;->mILetvDualCamListener:Landroid/hardware/Camera$ILetvDualCamListener;

    iget v1, v9, Landroid/hardware/Camera$LetvDualCamParam;->arg1:I

    iget v2, v9, Landroid/hardware/Camera$LetvDualCamParam;->arg2:I

    iget-object v3, v9, Landroid/hardware/Camera$LetvDualCamParam;->data:[B

    invoke-interface {v0, v1, v2, v3}, Landroid/hardware/Camera$ILetvDualCamListener;->onDepthMapRTCB(II[B)V

    goto/16 :goto_0

    .line 2270
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private final native native_autoFocus()V
.end method

.method private final native native_cancelAutoFocus()V
.end method

.method private final native native_getParameters()Ljava/lang/String;
.end method

.method private final native native_release()V
.end method

.method private final native native_sendHistogramData()V
.end method

.method private final native native_sendMetaData()V
.end method

.method private final native native_setHistogramMode(Z)V
.end method

.method private final native native_setLongshot(Z)V
.end method

.method private final native native_setMetadataCb(Z)V
.end method

.method private final native native_setParameters(Ljava/lang/String;)V
.end method

.method private final native native_setup(Ljava/lang/Object;IILjava/lang/String;)I
.end method

.method private final native native_takePicture(I)V
.end method

.method public static open()Landroid/hardware/Camera;
    .locals 4

    .prologue
    .line 389
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 390
    .local v2, "numberOfCameras":I
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 391
    .local v0, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 392
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 393
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_0

    .line 394
    new-instance v3, Landroid/hardware/Camera;

    invoke-direct {v3, v1}, Landroid/hardware/Camera;-><init>(I)V

    .line 397
    :goto_1
    return-object v3

    .line 391
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 397
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static open(I)Landroid/hardware/Camera;
    .locals 1
    .param p0, "cameraId"    # I

    .prologue
    .line 379
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0, p0}, Landroid/hardware/Camera;-><init>(I)V

    return-object v0
.end method

.method public static openLegacy(II)Landroid/hardware/Camera;
    .locals 3
    .param p0, "cameraId"    # I
    .param p1, "halVersion"    # I

    .prologue
    .line 439
    const/16 v0, 0x100

    if-ge p1, v0, :cond_0

    .line 440
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid HAL version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 443
    :cond_0
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0, p0, p1}, Landroid/hardware/Camera;-><init>(II)V

    return-object v0
.end method

.method public static openUninitialized()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 559
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0}, Landroid/hardware/Camera;-><init>()V

    return-object v0
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .param p0, "camera_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 1249
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "camera_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    .line 1250
    .local v0, "c":Landroid/hardware/Camera;
    if-nez v0, :cond_1

    .line 1257
    :cond_0
    :goto_0
    return-void

    .line 1253
    :cond_1
    iget-object v2, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    if-eqz v2, :cond_0

    .line 1254
    iget-object v2, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/hardware/Camera$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1255
    .local v1, "m":Landroid/os/Message;
    iget-object v2, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    invoke-virtual {v2, v1}, Landroid/hardware/Camera$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private final native setHasPreviewCallback(ZZ)V
.end method

.method private final native setPreviewCallbackSurface(Landroid/view/Surface;)V
.end method


# virtual methods
.method public final addCallbackBuffer([B)V
    .locals 1
    .param p1, "callbackBuffer"    # [B

    .prologue
    .line 927
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->_addCallbackBuffer([BI)V

    .line 928
    return-void
.end method

.method public final addRawImageCallbackBuffer([B)V
    .locals 1
    .param p1, "callbackBuffer"    # [B

    .prologue
    .line 970
    const/16 v0, 0x80

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->addCallbackBuffer([BI)V

    .line 971
    return-void
.end method

.method public final autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$AutoFocusCallback;

    .prologue
    .line 1339
    iget-boolean v0, p0, Landroid/hardware/Camera;->m_bforbidAutoFocus:Z

    if-eqz v0, :cond_1

    .line 1340
    const-string v0, "Camera"

    const-string v1, "autoFocus ignore!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    if-eqz p1, :cond_0

    .line 1342
    const/4 v0, 0x1

    invoke-interface {p1, v0, p0}, Landroid/hardware/Camera$AutoFocusCallback;->onAutoFocus(ZLandroid/hardware/Camera;)V

    .line 1353
    :cond_0
    :goto_0
    return-void

    .line 1349
    :cond_1
    iget-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1350
    :try_start_0
    iput-object p1, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 1351
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1352
    invoke-direct {p0}, Landroid/hardware/Camera;->native_autoFocus()V

    goto :goto_0

    .line 1351
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public cameraInitUnspecified(I)I
    .locals 1
    .param p1, "cameraId"    # I

    .prologue
    .line 528
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->cameraInitVersion(II)I

    move-result v0

    return v0
.end method

.method public final cancelAutoFocus()V
    .locals 2

    .prologue
    .line 1366
    iget-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1367
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 1368
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1369
    invoke-direct {p0}, Landroid/hardware/Camera;->native_cancelAutoFocus()V

    .line 1385
    iget-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$EventHandler;->removeMessages(I)V

    .line 1386
    return-void

    .line 1368
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final createPreviewAllocation(Landroid/renderscript/RenderScript;I)Landroid/renderscript/Allocation;
    .locals 6
    .param p1, "rs"    # Landroid/renderscript/RenderScript;
    .param p2, "usage"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/renderscript/RSIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1015
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 1016
    .local v1, "p":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 1017
    .local v2, "previewSize":Landroid/hardware/Camera$Size;
    new-instance v3, Landroid/renderscript/Type$Builder;

    sget-object v4, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    sget-object v5, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    invoke-static {p1, v4, v5}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 1023
    .local v3, "yuvBuilder":Landroid/renderscript/Type$Builder;
    const v4, 0x32315659

    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setYuvFormat(I)Landroid/renderscript/Type$Builder;

    .line 1024
    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 1025
    iget v4, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 1027
    invoke-virtual {v3}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v4

    or-int/lit8 v5, p2, 0x20

    invoke-static {p1, v4, v5}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 1030
    .local v0, "a":Landroid/renderscript/Allocation;
    return-object v0
.end method

.method public final disableShutterSound()Z
    .locals 1

    .prologue
    .line 1675
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->_enableShutterSound(Z)Z

    move-result v0

    return v0
.end method

.method public final enableShutterSound(Z)Z
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 1646
    if-nez p1, :cond_0

    .line 1647
    const-string v3, "audio"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1648
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 1650
    .local v0, "audioService":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isCameraSoundForced()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .line 1655
    .end local v0    # "audioService":Landroid/media/IAudioService;
    .end local v1    # "b":Landroid/os/IBinder;
    :goto_0
    return v3

    .line 1651
    .restart local v0    # "audioService":Landroid/media/IAudioService;
    .restart local v1    # "b":Landroid/os/IBinder;
    :catch_0
    move-exception v2

    .line 1652
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Camera"

    const-string v4, "Audio service is unavailable for queries"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    .end local v0    # "audioService":Landroid/media/IAudioService;
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_0
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->_enableShutterSound(Z)Z

    move-result v3

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 570
    invoke-virtual {p0}, Landroid/hardware/Camera;->release()V

    .line 571
    return-void
.end method

.method public getCurrentFocusPosition()I
    .locals 4

    .prologue
    .line 2493
    new-instance v1, Landroid/hardware/Camera$Parameters;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$1;)V

    .line 2494
    .local v1, "p":Landroid/hardware/Camera$Parameters;
    invoke-direct {p0}, Landroid/hardware/Camera;->native_getParameters()Ljava/lang/String;

    move-result-object v2

    .line 2495
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 2497
    const/4 v0, -0x1

    .line 2498
    .local v0, "focus_pos":I
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getCurrentFocusPosition()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2499
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getCurrentFocusPosition()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2501
    :cond_0
    return v0
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 7

    .prologue
    .line 2299
    new-instance v2, Landroid/hardware/Camera$Parameters;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$1;)V

    .line 2300
    .local v2, "p":Landroid/hardware/Camera$Parameters;
    invoke-direct {p0}, Landroid/hardware/Camera;->native_getParameters()Ljava/lang/String;

    move-result-object v3

    .line 2301
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 2303
    const-string/jumbo v4, "letv_trace"

    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    .line 2304
    iget-object v4, p0, Landroid/hardware/Camera;->mLetvTrace:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 2305
    invoke-static {}, Landroid/hardware/Camera;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2306
    .local v1, "PackageName":Ljava/lang/String;
    const-string v4, "DKdebugMsg"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "---getParameters---PackageName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    invoke-direct {p0}, Landroid/hardware/Camera;->getCurrentActivityName()Ljava/lang/String;

    move-result-object v0

    .line 2308
    .local v0, "ActivityName":Ljava/lang/String;
    const-string v4, "DKdebugMsg"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "---getParameters---ActivityName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2309
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".LETV."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/hardware/Camera;->mLetvTrace:Ljava/lang/String;

    .line 2310
    const-string v4, "DKdebugMsg"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "---getParameters---mLetvTrace = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/hardware/Camera;->mLetvTrace:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2312
    .end local v0    # "ActivityName":Ljava/lang/String;
    .end local v1    # "PackageName":Ljava/lang/String;
    :cond_0
    const-string/jumbo v4, "letv_trace"

    iget-object v5, p0, Landroid/hardware/Camera;->mLetvTrace:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2313
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/hardware/Camera;->native_setParameters(Ljava/lang/String;)V

    .line 2314
    invoke-direct {p0}, Landroid/hardware/Camera;->native_getParameters()Ljava/lang/String;

    move-result-object v3

    .line 2315
    invoke-virtual {v2, v3}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 2318
    :cond_1
    return-object v2
.end method

.method public getWBCurrentCCT()I
    .locals 4

    .prologue
    .line 2330
    new-instance v1, Landroid/hardware/Camera$Parameters;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$1;)V

    .line 2331
    .local v1, "p":Landroid/hardware/Camera$Parameters;
    invoke-direct {p0}, Landroid/hardware/Camera;->native_getParameters()Ljava/lang/String;

    move-result-object v2

    .line 2332
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 2334
    const/4 v0, 0x0

    .line 2335
    .local v0, "cct":I
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getWBCurrentCCT()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2336
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getWBCurrentCCT()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2339
    :cond_0
    return v0
.end method

.method public final native lock()V
.end method

.method public final native previewEnabled()Z
.end method

.method public final native reconnect()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final release()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 585
    invoke-direct {p0}, Landroid/hardware/Camera;->native_release()V

    .line 586
    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 588
    iput-boolean v0, p0, Landroid/hardware/Camera;->mPanoRunning:Z

    .line 590
    return-void
.end method

.method public final sendHistogramData()V
    .locals 0

    .prologue
    .line 2396
    invoke-direct {p0}, Landroid/hardware/Camera;->native_sendHistogramData()V

    .line 2397
    return-void
.end method

.method public final sendMetaData()V
    .locals 0

    .prologue
    .line 2432
    invoke-direct {p0}, Landroid/hardware/Camera;->native_sendMetaData()V

    .line 2433
    return-void
.end method

.method public final setASDListener(Landroid/hardware/Camera$ASDListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/Camera$ASDListener;

    .prologue
    .line 1743
    iput-object p1, p0, Landroid/hardware/Camera;->mASDListener:Landroid/hardware/Camera$ASDListener;

    .line 1744
    return-void
.end method

.method public setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V
    .locals 1
    .param p1, "cb"    # Landroid/hardware/Camera$AutoFocusMoveCallback;

    .prologue
    .line 1418
    iput-object p1, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    .line 1419
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->enableFocusMoveCallback(I)V

    .line 1420
    return-void

    .line 1419
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final native setDisplayOrientation(I)V
.end method

.method public final setErrorCallback(Landroid/hardware/Camera$ErrorCallback;)V
    .locals 0
    .param p1, "cb"    # Landroid/hardware/Camera$ErrorCallback;

    .prologue
    .line 2064
    iput-object p1, p0, Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    .line 2065
    return-void
.end method

.method public final setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/Camera$FaceDetectionListener;

    .prologue
    .line 1828
    iput-object p1, p0, Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

    .line 1829
    return-void
.end method

.method public final setHistogramMode(Landroid/hardware/Camera$CameraDataCallback;)V
    .locals 1
    .param p1, "cb"    # Landroid/hardware/Camera$CameraDataCallback;

    .prologue
    .line 2385
    iput-object p1, p0, Landroid/hardware/Camera;->mCameraDataCallback:Landroid/hardware/Camera$CameraDataCallback;

    .line 2386
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->native_setHistogramMode(Z)V

    .line 2387
    return-void

    .line 2386
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setLetvDualCamLisenter(Landroid/hardware/Camera$ILetvDualCamListener;)V
    .locals 3
    .param p1, "l"    # Landroid/hardware/Camera$ILetvDualCamListener;

    .prologue
    .line 2232
    const-string v0, "Camera"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLetvDualCamLisenter l:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->enableLetvDualCamMsg(Z)V

    .line 2234
    iput-object p1, p0, Landroid/hardware/Camera;->mILetvDualCamListener:Landroid/hardware/Camera$ILetvDualCamListener;

    .line 2235
    return-void

    .line 2233
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setLongshot(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 2443
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->native_setLongshot(Z)V

    .line 2444
    return-void
.end method

.method public final setMetadataCb(Landroid/hardware/Camera$CameraMetaDataCallback;)V
    .locals 1
    .param p1, "cb"    # Landroid/hardware/Camera$CameraMetaDataCallback;

    .prologue
    .line 2422
    iput-object p1, p0, Landroid/hardware/Camera;->mCameraMetaDataCallback:Landroid/hardware/Camera$CameraMetaDataCallback;

    .line 2423
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->native_setMetadataCb(Z)V

    .line 2424
    return-void

    .line 2423
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setOneShotPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 3
    .param p1, "cb"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 843
    const/16 v2, 0x44

    invoke-static {v2}, Landroid/util/SeempLog;->record(I)I

    .line 844
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 845
    iput-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 846
    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 847
    if-eqz p1, :cond_0

    .line 848
    iput-boolean v1, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 850
    :cond_0
    if-eqz p1, :cond_1

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 851
    return-void

    :cond_1
    move v0, v1

    .line 850
    goto :goto_0
.end method

.method public final setPanoListener(Landroid/hardware/Camera$PanoListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/Camera$PanoListener;

    .prologue
    .line 1771
    iput-object p1, p0, Landroid/hardware/Camera;->mPanoListener:Landroid/hardware/Camera$PanoListener;

    .line 1772
    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 23
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 2105
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1

    .line 2106
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v12

    .line 2107
    .local v12, "newPreviewSize":Landroid/hardware/Camera$Size;
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    .line 2108
    .local v3, "currentPreviewSize":Landroid/hardware/Camera$Size;
    iget v0, v12, Landroid/hardware/Camera$Size;->width:I

    move/from16 v17, v0

    iget v0, v3, Landroid/hardware/Camera$Size;->width:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    iget v0, v12, Landroid/hardware/Camera$Size;->height:I

    move/from16 v17, v0

    iget v0, v3, Landroid/hardware/Camera$Size;->height:I

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_1

    .line 2110
    :cond_0
    new-instance v17, Ljava/lang/IllegalStateException;

    const-string v18, "Cannot change preview size while a preview allocation is configured."

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 2116
    .end local v3    # "currentPreviewSize":Landroid/hardware/Camera$Size;
    .end local v12    # "newPreviewSize":Landroid/hardware/Camera$Size;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera;->mLetvTrace:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera;->mLetvTrace:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "com.tencent.mm"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 2118
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v7

    .line 2119
    .local v7, "listFocusMod":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_6

    const-string v17, "continuous-picture"

    move-object/from16 v0, v17

    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 2120
    const-string v17, "continuous-picture"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 2121
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera;->mLetvTrace:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "com.tencent.mm.LETV.com.tencent.mm.plugin.scanner.ui.BaseScanUI"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 2123
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 2124
    .local v9, "meteringAreas":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    new-instance v17, Landroid/hardware/Camera$Area;

    new-instance v18, Landroid/graphics/Rect;

    const/16 v19, -0xc8

    const/16 v20, -0xc8

    const/16 v21, 0xc8

    const/16 v22, 0xc8

    invoke-direct/range {v18 .. v22}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v19, 0x3e8

    invoke-direct/range {v17 .. v19}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    move-object/from16 v0, v17

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2125
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 2126
    const-string v17, "DKdebugMsg"

    const-string v18, "---setParameters--- set metering area"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    const-string/jumbo v17, "on"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZSLMode(Ljava/lang/String;)V

    .line 2129
    const-string v17, "DKdebugMsg"

    const-string v18, "---setParameters--- setZSLMode on"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    const-string v17, "edge"

    const-string/jumbo v18, "high"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2131
    const-string v17, "contrast"

    const-string/jumbo v18, "high"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2132
    const-string v17, "DKdebugMsg"

    const-string v18, "---setParameters--- params.set, edge contrast, high"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v15

    .line 2135
    .local v15, "szOrigin":Landroid/hardware/Camera$Size;
    const-string v17, "DKdebugMsg"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "----- setParameters, szOrigin.width = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v15, Landroid/hardware/Camera$Size;->width:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", szOrigin.height = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v15, Landroid/hardware/Camera$Size;->height:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    const/16 v16, 0x0

    .local v16, "width":I
    const/4 v4, 0x0

    .line 2138
    .local v4, "height":I
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v8

    .line 2139
    .local v8, "listPicSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v5, 0x0

    .line 2140
    .local v5, "i":I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/Camera$Size;

    .line 2142
    .local v13, "sz":Landroid/hardware/Camera$Size;
    const-string v17, "DKdebugMsg"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "listPicSizes["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "] = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v13, Landroid/hardware/Camera$Size;->width:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "x"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget v0, v13, Landroid/hardware/Camera$Size;->height:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    add-int/lit8 v5, v5, 0x1

    .line 2144
    goto :goto_0

    .line 2145
    .end local v13    # "sz":Landroid/hardware/Camera$Size;
    :cond_2
    const/4 v14, 0x0

    .line 2146
    .local v14, "szMax":Landroid/hardware/Camera$Size;
    const/4 v11, 0x0

    .line 2147
    .local v11, "nAreaMax":I
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/Camera$Size;

    .line 2149
    .restart local v13    # "sz":Landroid/hardware/Camera$Size;
    iget v0, v13, Landroid/hardware/Camera$Size;->width:I

    move/from16 v17, v0

    iget v0, v13, Landroid/hardware/Camera$Size;->height:I

    move/from16 v18, v0

    mul-int v10, v17, v18

    .line 2152
    .local v10, "nArea":I
    if-le v10, v11, :cond_3

    .line 2153
    move v11, v10

    .line 2154
    move-object v14, v13

    goto :goto_1

    .line 2158
    .end local v10    # "nArea":I
    .end local v13    # "sz":Landroid/hardware/Camera$Size;
    :cond_4
    if-eqz v14, :cond_5

    .line 2159
    iget v0, v14, Landroid/hardware/Camera$Size;->width:I

    move/from16 v16, v0

    .line 2160
    iget v4, v14, Landroid/hardware/Camera$Size;->height:I

    .line 2161
    const-string v17, "DKdebugMsg"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "----- setParameters, changed----- width = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", height = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1, v4}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 2166
    .end local v4    # "height":I
    .end local v5    # "i":I
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v8    # "listPicSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v9    # "meteringAreas":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    .end local v11    # "nAreaMax":I
    .end local v14    # "szMax":Landroid/hardware/Camera$Size;
    .end local v15    # "szOrigin":Landroid/hardware/Camera$Size;
    .end local v16    # "width":I
    :cond_5
    const-string v17, "DKdebugMsg"

    const-string v18, "---setParameters--- setFocusMode : FOCUS_MODE_CONTINUOUS_PICTURE"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/hardware/Camera;->m_bforbidAutoFocus:Z

    .line 2173
    .end local v7    # "listFocusMod":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/hardware/Camera;->native_setParameters(Ljava/lang/String;)V

    .line 2174
    return-void
.end method

.method public final setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    const/4 v1, 0x0

    .line 816
    const/16 v0, 0x42

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 817
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 818
    iput-boolean v1, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 819
    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 820
    if-eqz p1, :cond_0

    .line 821
    iput-boolean v1, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 825
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 826
    return-void

    :cond_1
    move v0, v1

    .line 825
    goto :goto_0
.end method

.method public final setPreviewCallbackAllocation(Landroid/renderscript/Allocation;)V
    .locals 6
    .param p1, "previewAllocation"    # Landroid/renderscript/Allocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1081
    const/4 v2, 0x0

    .line 1082
    .local v2, "previewSurface":Landroid/view/Surface;
    if-eqz p1, :cond_4

    .line 1083
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1084
    .local v0, "p":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 1085
    .local v1, "previewSize":Landroid/hardware/Camera$Size;
    iget v3, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getX()I

    move-result v4

    if-ne v3, v4, :cond_0

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Type;->getY()I

    move-result v4

    if-eq v3, v4, :cond_1

    .line 1087
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Allocation dimensions don\'t match preview dimensions: Allocation is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/renderscript/Type;->getX()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-virtual {v5}, Landroid/renderscript/Type;->getY()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Preview is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1096
    :cond_1
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getUsage()I

    move-result v3

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_2

    .line 1098
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Allocation usage does not include USAGE_IO_INPUT"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1101
    :cond_2
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Element;->getDataKind()Landroid/renderscript/Element$DataKind;

    move-result-object v3

    sget-object v4, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    if-eq v3, v4, :cond_3

    .line 1103
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Allocation is not of a YUV type"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1106
    :cond_3
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getSurface()Landroid/view/Surface;

    move-result-object v2

    .line 1107
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 1111
    .end local v0    # "p":Landroid/hardware/Camera$Parameters;
    .end local v1    # "previewSize":Landroid/hardware/Camera$Size;
    :goto_0
    invoke-direct {p0, v2}, Landroid/hardware/Camera;->setPreviewCallbackSurface(Landroid/view/Surface;)V

    .line 1112
    return-void

    .line 1109
    :cond_4
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    goto :goto_0
.end method

.method public final setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 3
    .param p1, "cb"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 882
    const/16 v2, 0x43

    invoke-static {v2}, Landroid/util/SeempLog;->record(I)I

    .line 883
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 884
    iput-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 885
    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 886
    if-eqz p1, :cond_0

    .line 887
    iput-boolean v0, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 889
    :cond_0
    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 890
    return-void
.end method

.method public final setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 673
    if-eqz p1, :cond_0

    .line 674
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setPreviewSurface(Landroid/view/Surface;)V

    .line 678
    :goto_0
    return-void

    .line 676
    :cond_0
    const/4 v0, 0x0

    check-cast v0, Landroid/view/Surface;

    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setPreviewSurface(Landroid/view/Surface;)V

    goto :goto_0
.end method

.method public final native setPreviewSurface(Landroid/view/Surface;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final native setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final setZoomChangeListener(Landroid/hardware/Camera$OnZoomChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/Camera$OnZoomChangeListener;

    .prologue
    .line 1713
    iput-object p1, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    .line 1714
    return-void
.end method

.method public final startFaceDetection()V
    .locals 2

    .prologue
    .line 1864
    iget-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    if-eqz v0, :cond_0

    .line 1865
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Face detection is already running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1867
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->_startFaceDetection(I)V

    .line 1868
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 1869
    return-void
.end method

.method public final startPanoCapture()V
    .locals 2

    .prologue
    .line 1778
    iget-boolean v0, p0, Landroid/hardware/Camera;->mPanoRunning:Z

    if-eqz v0, :cond_0

    .line 1779
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "pano capture is already running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1781
    :cond_0
    invoke-direct {p0}, Landroid/hardware/Camera;->_startPanoCapture()V

    .line 1782
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/Camera;->mPanoRunning:Z

    .line 1783
    return-void
.end method

.method public final native startPreview()V
.end method

.method public final native startSmoothZoom(I)V
.end method

.method public final stopFaceDetection()V
    .locals 1

    .prologue
    .line 1877
    invoke-direct {p0}, Landroid/hardware/Camera;->_stopFaceDetection()V

    .line 1878
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 1879
    return-void
.end method

.method public final stopPanoCapture()V
    .locals 1

    .prologue
    .line 1789
    invoke-direct {p0}, Landroid/hardware/Camera;->_stopPanoCapture()V

    .line 1790
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mPanoRunning:Z

    .line 1791
    return-void
.end method

.method public final stopPreview()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 775
    invoke-direct {p0}, Landroid/hardware/Camera;->_stopPreview()V

    .line 776
    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 778
    iput-boolean v0, p0, Landroid/hardware/Camera;->mPanoRunning:Z

    .line 780
    iput-object v2, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 781
    iput-object v2, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 782
    iput-object v2, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 783
    iput-object v2, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 784
    iget-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 785
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 786
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 787
    iput-object v2, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    .line 788
    return-void

    .line 786
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final native stopSmoothZoom()V
.end method

.method public final takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 1
    .param p1, "shutter"    # Landroid/hardware/Camera$ShutterCallback;
    .param p2, "raw"    # Landroid/hardware/Camera$PictureCallback;
    .param p3, "jpeg"    # Landroid/hardware/Camera$PictureCallback;

    .prologue
    .line 1473
    const/16 v0, 0x41

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 1474
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1475
    return-void
.end method

.method public final takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 3
    .param p1, "shutter"    # Landroid/hardware/Camera$ShutterCallback;
    .param p2, "raw"    # Landroid/hardware/Camera$PictureCallback;
    .param p3, "postview"    # Landroid/hardware/Camera$PictureCallback;
    .param p4, "jpeg"    # Landroid/hardware/Camera$PictureCallback;

    .prologue
    const/4 v2, 0x0

    .line 1509
    const/16 v1, 0x41

    invoke-static {v1}, Landroid/util/SeempLog;->record(I)I

    .line 1510
    iput-object p1, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 1511
    iput-object p2, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 1512
    iput-object p3, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 1513
    iput-object p4, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 1516
    const/4 v0, 0x0

    .line 1517
    .local v0, "msgType":I
    iget-object v1, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    if-eqz v1, :cond_0

    .line 1518
    or-int/lit8 v0, v0, 0x2

    .line 1520
    :cond_0
    iget-object v1, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_1

    .line 1521
    or-int/lit16 v0, v0, 0x80

    .line 1523
    :cond_1
    iget-object v1, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_2

    .line 1524
    or-int/lit8 v0, v0, 0x40

    .line 1526
    :cond_2
    iget-object v1, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_3

    .line 1527
    or-int/lit16 v0, v0, 0x100

    .line 1530
    :cond_3
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->native_takePicture(I)V

    .line 1531
    iput-boolean v2, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 1533
    iput-boolean v2, p0, Landroid/hardware/Camera;->mPanoRunning:Z

    .line 1535
    return-void
.end method

.method public final native unlock()V
.end method
