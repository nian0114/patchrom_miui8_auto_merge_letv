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
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-boolean v1, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 188
    iput-boolean v1, p0, Landroid/hardware/Camera;->mPanoRunning:Z

    .line 190
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    .line 2075
    const-string v0, "com.tencent.mm.LETV.com.tencent.mm.plugin.scanner.ui.BaseScanUI"

    iput-object v0, p0, Landroid/hardware/Camera;->TAG_WEICHAT_UI_CLASS_NAME:Ljava/lang/String;

    .line 2178
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/Camera;->mLetvTrace:Ljava/lang/String;

    .line 2179
    iput-boolean v1, p0, Landroid/hardware/Camera;->m_bforbidAutoFocus:Z

    .line 560
    return-void
.end method

.method constructor <init>(I)V
    .locals 3
    .param p1, "cameraId"    # I

    .prologue
    const/4 v2, 0x0

    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-boolean v2, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 188
    iput-boolean v2, p0, Landroid/hardware/Camera;->mPanoRunning:Z

    .line 190
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    .line 2075
    const-string v1, "com.tencent.mm.LETV.com.tencent.mm.plugin.scanner.ui.BaseScanUI"

    iput-object v1, p0, Landroid/hardware/Camera;->TAG_WEICHAT_UI_CLASS_NAME:Ljava/lang/String;

    .line 2178
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/Camera;->mLetvTrace:Ljava/lang/String;

    .line 2179
    iput-boolean v2, p0, Landroid/hardware/Camera;->m_bforbidAutoFocus:Z

    .line 527
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->cameraInitNormal(I)I

    move-result v0

    .line 528
    .local v0, "err":I
    invoke-static {v0}, Landroid/hardware/Camera;->checkInitErrors(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 529
    sparse-switch v0, :sswitch_data_0

    .line 536
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown camera error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 531
    :sswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Fail to connect to camera service"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 533
    :sswitch_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 539
    :cond_0
    return-void

    .line 529
    :sswitch_data_0
    .sparse-switch
        -0x13 -> :sswitch_1
        -0xd -> :sswitch_0
    .end sparse-switch
.end method

.method private constructor <init>(II)V
    .locals 3
    .param p1, "cameraId"    # I
    .param p2, "halVersion"    # I

    .prologue
    const/4 v2, 0x0

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-boolean v2, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 188
    iput-boolean v2, p0, Landroid/hardware/Camera;->mPanoRunning:Z

    .line 190
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    .line 2075
    const-string v1, "com.tencent.mm.LETV.com.tencent.mm.plugin.scanner.ui.BaseScanUI"

    iput-object v1, p0, Landroid/hardware/Camera;->TAG_WEICHAT_UI_CLASS_NAME:Ljava/lang/String;

    .line 2178
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/hardware/Camera;->mLetvTrace:Ljava/lang/String;

    .line 2179
    iput-boolean v2, p0, Landroid/hardware/Camera;->m_bforbidAutoFocus:Z

    .line 448
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->cameraInitVersion(II)I

    move-result v0

    .line 449
    .local v0, "err":I
    invoke-static {v0}, Landroid/hardware/Camera;->checkInitErrors(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 450
    sparse-switch v0, :sswitch_data_0

    .line 472
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Unknown camera error"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 452
    :sswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Fail to connect to camera service"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 454
    :sswitch_1
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 456
    :sswitch_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed because some methods are not implemented"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 459
    :sswitch_3
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed because the hal version is not supported by this device"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 462
    :sswitch_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed because the input arugments are invalid"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 465
    :sswitch_5
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed because the camera device was already opened"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 468
    :sswitch_6
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Camera initialization failed because the max number of camera devices were already opened"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 475
    :cond_0
    return-void

    .line 450
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
    .line 144
    iget-object v0, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 144
    iget-object v0, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/hardware/Camera;)Landroid/hardware/Camera$OnZoomChangeListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 144
    iget-object v0, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/hardware/Camera;)Landroid/hardware/Camera$FaceDetectionListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 144
    iget-object v0, p0, Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/hardware/Camera;)Landroid/hardware/Camera$ErrorCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 144
    iget-object v0, p0, Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusMoveCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 144
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    return-object v0
.end method

.method static synthetic access$1400([BI)I
    .locals 1
    .param p0, "x0"    # [B
    .param p1, "x1"    # I

    .prologue
    .line 144
    invoke-static {p0, p1}, Landroid/hardware/Camera;->byteToInt([BI)I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraDataCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 144
    iget-object v0, p0, Landroid/hardware/Camera;->mCameraDataCallback:Landroid/hardware/Camera$CameraDataCallback;

    return-object v0
.end method

.method static synthetic access$1600(Landroid/hardware/Camera;)Landroid/hardware/Camera$CameraMetaDataCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 144
    iget-object v0, p0, Landroid/hardware/Camera;->mCameraMetaDataCallback:Landroid/hardware/Camera$CameraMetaDataCallback;

    return-object v0
.end method

.method static synthetic access$1700(Landroid/hardware/Camera;)Landroid/hardware/Camera$PanoListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 144
    iget-object v0, p0, Landroid/hardware/Camera;->mPanoListener:Landroid/hardware/Camera$PanoListener;

    return-object v0
.end method

.method static synthetic access$1800(Landroid/hardware/Camera;)Landroid/hardware/Camera$ASDListener;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 144
    iget-object v0, p0, Landroid/hardware/Camera;->mASDListener:Landroid/hardware/Camera$ASDListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 144
    iget-object v0, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$300(Landroid/hardware/Camera;)Landroid/hardware/Camera$PreviewCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 144
    iget-object v0, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object v0
.end method

.method static synthetic access$302(Landroid/hardware/Camera;Landroid/hardware/Camera$PreviewCallback;)Landroid/hardware/Camera$PreviewCallback;
    .locals 0
    .param p0, "x0"    # Landroid/hardware/Camera;
    .param p1, "x1"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    .line 144
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    return-object p1
.end method

.method static synthetic access$400(Landroid/hardware/Camera;)Z
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 144
    iget-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    return v0
.end method

.method static synthetic access$500(Landroid/hardware/Camera;)Z
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 144
    iget-boolean v0, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    return v0
.end method

.method static synthetic access$600(Landroid/hardware/Camera;ZZ)V
    .locals 0
    .param p0, "x0"    # Landroid/hardware/Camera;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    return-void
.end method

.method static synthetic access$700(Landroid/hardware/Camera;)Landroid/hardware/Camera$PictureCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 144
    iget-object v0, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    return-object v0
.end method

.method static synthetic access$800(Landroid/hardware/Camera;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 144
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Landroid/hardware/Camera;)Landroid/hardware/Camera$AutoFocusCallback;
    .locals 1
    .param p0, "x0"    # Landroid/hardware/Camera;

    .prologue
    .line 144
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    return-object v0
.end method

.method private final addCallbackBuffer([BI)V
    .locals 3
    .param p1, "callbackBuffer"    # [B
    .param p2, "msgType"    # I

    .prologue
    .line 970
    const/16 v0, 0x10

    if-eq p2, v0, :cond_0

    const/16 v0, 0x80

    if-eq p2, v0, :cond_0

    .line 972
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

    .line 976
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/hardware/Camera;->_addCallbackBuffer([BI)V

    .line 977
    return-void
.end method

.method private static byteToInt([BI)I
    .locals 4
    .param p0, "b"    # [B
    .param p1, "offset"    # I

    .prologue
    .line 2249
    const/4 v2, 0x0

    .line 2250
    .local v2, "value":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    .line 2251
    rsub-int/lit8 v3, v0, 0x3

    mul-int/lit8 v1, v3, 0x8

    .line 2252
    .local v1, "shift":I
    rsub-int/lit8 v3, v0, 0x3

    add-int/2addr v3, p1

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/2addr v3, v1

    add-int/2addr v2, v3

    .line 2250
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2254
    .end local v1    # "shift":I
    :cond_0
    return v2
.end method

.method private cameraInitNormal(I)I
    .locals 1
    .param p1, "cameraId"    # I

    .prologue
    .line 504
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

    .line 478
    iput-object v2, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 479
    iput-object v2, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 480
    iput-object v2, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 481
    iput-object v2, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 482
    iput-object v2, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 483
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 484
    iput-object v2, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    .line 486
    iput-object v2, p0, Landroid/hardware/Camera;->mCameraDataCallback:Landroid/hardware/Camera$CameraDataCallback;

    .line 487
    iput-object v2, p0, Landroid/hardware/Camera;->mCameraMetaDataCallback:Landroid/hardware/Camera$CameraMetaDataCallback;

    .line 491
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 492
    new-instance v1, Landroid/hardware/Camera$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/hardware/Camera$EventHandler;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    .line 499
    :goto_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, p1, p2, v2}, Landroid/hardware/Camera;->native_setup(Ljava/lang/Object;IILjava/lang/String;)I

    move-result v1

    return v1

    .line 493
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 494
    new-instance v1, Landroid/hardware/Camera$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/hardware/Camera$EventHandler;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    goto :goto_0

    .line 496
    :cond_1
    iput-object v2, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    goto :goto_0
.end method

.method public static checkInitErrors(I)Z
    .locals 1
    .param p0, "err"    # I

    .prologue
    .line 546
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

.method public static getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V
    .locals 5
    .param p0, "cameraId"    # I
    .param p1, "cameraInfo"    # Landroid/hardware/Camera$CameraInfo;

    .prologue
    .line 257
    invoke-static {p0, p1}, Landroid/hardware/Camera;->_getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 258
    const-string v3, "audio"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 259
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 261
    .local v0, "audioService":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isCameraSoundForced()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 264
    const/4 v3, 0x0

    iput-boolean v3, p1, Landroid/hardware/Camera$CameraInfo;->canDisableShutterSound:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 266
    :catch_0
    move-exception v2

    .line 267
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Camera"

    const-string v4, "Audio service is unavailable for queries"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getCurrentActivityName()Ljava/lang/String;
    .locals 11

    .prologue
    .line 2061
    const-string v6, ""

    .line 2063
    .local v6, "strRet":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    .line 2064
    .local v1, "at":Landroid/app/ActivityThread;
    const-string v7, "android.app.ContextImpl"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 2065
    .local v2, "cls":Ljava/lang/Class;
    const-string v7, "getSystemService"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v2, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 2066
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

    .line 2067
    .local v0, "am":Landroid/app/ActivityManager;
    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 2068
    .local v3, "cn":Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 2072
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "at":Landroid/app/ActivityThread;
    .end local v2    # "cls":Ljava/lang/Class;
    .end local v3    # "cn":Landroid/content/ComponentName;
    .end local v5    # "m":Ljava/lang/reflect/Method;
    :goto_0
    return-object v6

    .line 2069
    :catch_0
    move-exception v4

    .line 2070
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getCurrentPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2078
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getEmptyParameters()Landroid/hardware/Camera$Parameters;
    .locals 3

    .prologue
    .line 2243
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0}, Landroid/hardware/Camera;-><init>()V

    .line 2244
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
    .line 2408
    if-nez p0, :cond_0

    .line 2409
    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "parameters must not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2412
    :cond_0
    # invokes: Landroid/hardware/Camera$Parameters;->getOuter()Landroid/hardware/Camera;
    invoke-static {p0}, Landroid/hardware/Camera$Parameters;->access$2000(Landroid/hardware/Camera$Parameters;)Landroid/hardware/Camera;

    move-result-object v0

    .line 2413
    .local v0, "camera":Landroid/hardware/Camera;
    new-instance v1, Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$1;)V

    .line 2414
    .local v1, "p":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1, p0}, Landroid/hardware/Camera$Parameters;->copyFrom(Landroid/hardware/Camera$Parameters;)V

    .line 2416
    return-object v1
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
    .line 383
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v2

    .line 384
    .local v2, "numberOfCameras":I
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 385
    .local v0, "cameraInfo":Landroid/hardware/Camera$CameraInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 386
    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 387
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_0

    .line 388
    new-instance v3, Landroid/hardware/Camera;

    invoke-direct {v3, v1}, Landroid/hardware/Camera;-><init>(I)V

    .line 391
    :goto_1
    return-object v3

    .line 385
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 391
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static open(I)Landroid/hardware/Camera;
    .locals 1
    .param p0, "cameraId"    # I

    .prologue
    .line 373
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0, p0}, Landroid/hardware/Camera;-><init>(I)V

    return-object v0
.end method

.method public static openLegacy(II)Landroid/hardware/Camera;
    .locals 3
    .param p0, "cameraId"    # I
    .param p1, "halVersion"    # I

    .prologue
    .line 433
    const/16 v0, 0x100

    if-ge p1, v0, :cond_0

    .line 434
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

    .line 437
    :cond_0
    new-instance v0, Landroid/hardware/Camera;

    invoke-direct {v0, p0, p1}, Landroid/hardware/Camera;-><init>(II)V

    return-object v0
.end method

.method public static openUninitialized()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 553
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
    .line 1238
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "camera_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    .line 1239
    .local v0, "c":Landroid/hardware/Camera;
    if-nez v0, :cond_1

    .line 1246
    :cond_0
    :goto_0
    return-void

    .line 1242
    :cond_1
    iget-object v2, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    if-eqz v2, :cond_0

    .line 1243
    iget-object v2, v0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/hardware/Camera$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1244
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
    .line 921
    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->_addCallbackBuffer([BI)V

    .line 922
    return-void
.end method

.method public final addRawImageCallbackBuffer([B)V
    .locals 1
    .param p1, "callbackBuffer"    # [B

    .prologue
    .line 964
    const/16 v0, 0x80

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->addCallbackBuffer([BI)V

    .line 965
    return-void
.end method

.method public final autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$AutoFocusCallback;

    .prologue
    .line 1328
    iget-boolean v0, p0, Landroid/hardware/Camera;->m_bforbidAutoFocus:Z

    if-eqz v0, :cond_1

    .line 1329
    const-string v0, "Camera"

    const-string v1, "autoFocus ignore!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    if-eqz p1, :cond_0

    .line 1331
    const/4 v0, 0x1

    invoke-interface {p1, v0, p0}, Landroid/hardware/Camera$AutoFocusCallback;->onAutoFocus(ZLandroid/hardware/Camera;)V

    .line 1342
    :cond_0
    :goto_0
    return-void

    .line 1338
    :cond_1
    iget-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1339
    :try_start_0
    iput-object p1, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 1340
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1341
    invoke-direct {p0}, Landroid/hardware/Camera;->native_autoFocus()V

    goto :goto_0

    .line 1340
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
    .line 522
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Landroid/hardware/Camera;->cameraInitVersion(II)I

    move-result v0

    return v0
.end method

.method public final cancelAutoFocus()V
    .locals 2

    .prologue
    .line 1355
    iget-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1356
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 1357
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1358
    invoke-direct {p0}, Landroid/hardware/Camera;->native_cancelAutoFocus()V

    .line 1374
    iget-object v0, p0, Landroid/hardware/Camera;->mEventHandler:Landroid/hardware/Camera$EventHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$EventHandler;->removeMessages(I)V

    .line 1375
    return-void

    .line 1357
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
    .line 1009
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 1010
    .local v1, "p":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 1011
    .local v2, "previewSize":Landroid/hardware/Camera$Size;
    new-instance v3, Landroid/renderscript/Type$Builder;

    sget-object v4, Landroid/renderscript/Element$DataType;->UNSIGNED_8:Landroid/renderscript/Element$DataType;

    sget-object v5, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    invoke-static {p1, v4, v5}, Landroid/renderscript/Element;->createPixel(Landroid/renderscript/RenderScript;Landroid/renderscript/Element$DataType;Landroid/renderscript/Element$DataKind;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-direct {v3, p1, v4}, Landroid/renderscript/Type$Builder;-><init>(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)V

    .line 1017
    .local v3, "yuvBuilder":Landroid/renderscript/Type$Builder;
    const v4, 0x32315659

    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setYuvFormat(I)Landroid/renderscript/Type$Builder;

    .line 1018
    iget v4, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setX(I)Landroid/renderscript/Type$Builder;

    .line 1019
    iget v4, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v4}, Landroid/renderscript/Type$Builder;->setY(I)Landroid/renderscript/Type$Builder;

    .line 1021
    invoke-virtual {v3}, Landroid/renderscript/Type$Builder;->create()Landroid/renderscript/Type;

    move-result-object v4

    or-int/lit8 v5, p2, 0x20

    invoke-static {p1, v4, v5}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;I)Landroid/renderscript/Allocation;

    move-result-object v0

    .line 1024
    .local v0, "a":Landroid/renderscript/Allocation;
    return-object v0
.end method

.method public final disableShutterSound()Z
    .locals 1

    .prologue
    .line 1664
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->_enableShutterSound(Z)Z

    move-result v0

    return v0
.end method

.method public final enableShutterSound(Z)Z
    .locals 5
    .param p1, "enabled"    # Z

    .prologue
    .line 1635
    if-nez p1, :cond_0

    .line 1636
    const-string v3, "audio"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 1637
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 1639
    .local v0, "audioService":Landroid/media/IAudioService;
    :try_start_0
    invoke-interface {v0}, Landroid/media/IAudioService;->isCameraSoundForced()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .line 1644
    .end local v0    # "audioService":Landroid/media/IAudioService;
    .end local v1    # "b":Landroid/os/IBinder;
    :goto_0
    return v3

    .line 1640
    .restart local v0    # "audioService":Landroid/media/IAudioService;
    .restart local v1    # "b":Landroid/os/IBinder;
    :catch_0
    move-exception v2

    .line 1641
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Camera"

    const-string v4, "Audio service is unavailable for queries"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
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
    .line 564
    invoke-virtual {p0}, Landroid/hardware/Camera;->release()V

    .line 565
    return-void
.end method

.method public getCurrentFocusPosition()I
    .locals 4

    .prologue
    .line 2386
    new-instance v1, Landroid/hardware/Camera$Parameters;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$1;)V

    .line 2387
    .local v1, "p":Landroid/hardware/Camera$Parameters;
    invoke-direct {p0}, Landroid/hardware/Camera;->native_getParameters()Ljava/lang/String;

    move-result-object v2

    .line 2388
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 2390
    const/4 v0, -0x1

    .line 2391
    .local v0, "focus_pos":I
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getCurrentFocusPosition()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2392
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getCurrentFocusPosition()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2394
    :cond_0
    return v0
.end method

.method public getParameters()Landroid/hardware/Camera$Parameters;
    .locals 3

    .prologue
    .line 2208
    new-instance v0, Landroid/hardware/Camera$Parameters;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$1;)V

    .line 2209
    .local v0, "p":Landroid/hardware/Camera$Parameters;
    invoke-direct {p0}, Landroid/hardware/Camera;->native_getParameters()Ljava/lang/String;

    move-result-object v1

    .line 2210
    .local v1, "s":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 2211
    return-object v0
.end method

.method public getWBCurrentCCT()I
    .locals 4

    .prologue
    .line 2223
    new-instance v1, Landroid/hardware/Camera$Parameters;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Landroid/hardware/Camera$Parameters;-><init>(Landroid/hardware/Camera;Landroid/hardware/Camera$1;)V

    .line 2224
    .local v1, "p":Landroid/hardware/Camera$Parameters;
    invoke-direct {p0}, Landroid/hardware/Camera;->native_getParameters()Ljava/lang/String;

    move-result-object v2

    .line 2225
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->unflatten(Ljava/lang/String;)V

    .line 2227
    const/4 v0, 0x0

    .line 2228
    .local v0, "cct":I
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getWBCurrentCCT()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2229
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getWBCurrentCCT()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 2232
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

    .line 579
    invoke-direct {p0}, Landroid/hardware/Camera;->native_release()V

    .line 580
    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 582
    iput-boolean v0, p0, Landroid/hardware/Camera;->mPanoRunning:Z

    .line 584
    return-void
.end method

.method public final sendHistogramData()V
    .locals 0

    .prologue
    .line 2289
    invoke-direct {p0}, Landroid/hardware/Camera;->native_sendHistogramData()V

    .line 2290
    return-void
.end method

.method public final sendMetaData()V
    .locals 0

    .prologue
    .line 2325
    invoke-direct {p0}, Landroid/hardware/Camera;->native_sendMetaData()V

    .line 2326
    return-void
.end method

.method public final setASDListener(Landroid/hardware/Camera$ASDListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/Camera$ASDListener;

    .prologue
    .line 1732
    iput-object p1, p0, Landroid/hardware/Camera;->mASDListener:Landroid/hardware/Camera$ASDListener;

    .line 1733
    return-void
.end method

.method public setAutoFocusMoveCallback(Landroid/hardware/Camera$AutoFocusMoveCallback;)V
    .locals 1
    .param p1, "cb"    # Landroid/hardware/Camera$AutoFocusMoveCallback;

    .prologue
    .line 1407
    iput-object p1, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    .line 1408
    iget-object v0, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->enableFocusMoveCallback(I)V

    .line 1409
    return-void

    .line 1408
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
    .line 2053
    iput-object p1, p0, Landroid/hardware/Camera;->mErrorCallback:Landroid/hardware/Camera$ErrorCallback;

    .line 2054
    return-void
.end method

.method public final setFaceDetectionListener(Landroid/hardware/Camera$FaceDetectionListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/Camera$FaceDetectionListener;

    .prologue
    .line 1817
    iput-object p1, p0, Landroid/hardware/Camera;->mFaceListener:Landroid/hardware/Camera$FaceDetectionListener;

    .line 1818
    return-void
.end method

.method public final setHistogramMode(Landroid/hardware/Camera$CameraDataCallback;)V
    .locals 1
    .param p1, "cb"    # Landroid/hardware/Camera$CameraDataCallback;

    .prologue
    .line 2278
    iput-object p1, p0, Landroid/hardware/Camera;->mCameraDataCallback:Landroid/hardware/Camera$CameraDataCallback;

    .line 2279
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->native_setHistogramMode(Z)V

    .line 2280
    return-void

    .line 2279
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final setLongshot(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 2336
    invoke-direct {p0, p1}, Landroid/hardware/Camera;->native_setLongshot(Z)V

    .line 2337
    return-void
.end method

.method public final setMetadataCb(Landroid/hardware/Camera$CameraMetaDataCallback;)V
    .locals 1
    .param p1, "cb"    # Landroid/hardware/Camera$CameraMetaDataCallback;

    .prologue
    .line 2315
    iput-object p1, p0, Landroid/hardware/Camera;->mCameraMetaDataCallback:Landroid/hardware/Camera$CameraMetaDataCallback;

    .line 2316
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->native_setMetadataCb(Z)V

    .line 2317
    return-void

    .line 2316
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

    .line 837
    const/16 v2, 0x44

    invoke-static {v2}, Landroid/util/SeempLog;->record(I)I

    .line 838
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 839
    iput-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 840
    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 841
    if-eqz p1, :cond_0

    .line 842
    iput-boolean v1, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 844
    :cond_0
    if-eqz p1, :cond_1

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 845
    return-void

    :cond_1
    move v0, v1

    .line 844
    goto :goto_0
.end method

.method public final setPanoListener(Landroid/hardware/Camera$PanoListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/hardware/Camera$PanoListener;

    .prologue
    .line 1760
    iput-object p1, p0, Landroid/hardware/Camera;->mPanoListener:Landroid/hardware/Camera$PanoListener;

    .line 1761
    return-void
.end method

.method public setParameters(Landroid/hardware/Camera$Parameters;)V
    .locals 25
    .param p1, "params"    # Landroid/hardware/Camera$Parameters;

    .prologue
    .line 2091
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    .line 2092
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v14

    .line 2093
    .local v14, "newPreviewSize":Landroid/hardware/Camera$Size;
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 2094
    .local v5, "currentPreviewSize":Landroid/hardware/Camera$Size;
    iget v0, v14, Landroid/hardware/Camera$Size;->width:I

    move/from16 v19, v0

    iget v0, v5, Landroid/hardware/Camera$Size;->width:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    iget v0, v14, Landroid/hardware/Camera$Size;->height:I

    move/from16 v19, v0

    iget v0, v5, Landroid/hardware/Camera$Size;->height:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_1

    .line 2096
    :cond_0
    new-instance v19, Ljava/lang/IllegalStateException;

    const-string v20, "Cannot change preview size while a preview allocation is configured."

    invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 2102
    .end local v5    # "currentPreviewSize":Landroid/hardware/Camera$Size;
    .end local v14    # "newPreviewSize":Landroid/hardware/Camera$Size;
    :cond_1
    const-string/jumbo v19, "letv_trace"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_3

    .line 2103
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera;->mLetvTrace:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_2

    .line 2104
    invoke-direct/range {p0 .. p0}, Landroid/hardware/Camera;->getCurrentPackageName()Ljava/lang/String;

    move-result-object v4

    .line 2105
    .local v4, "PackageName":Ljava/lang/String;
    const-string v19, "DKdebugMsg"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "---setParameters---PackageName = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2106
    invoke-direct/range {p0 .. p0}, Landroid/hardware/Camera;->getCurrentActivityName()Ljava/lang/String;

    move-result-object v3

    .line 2107
    .local v3, "ActivityName":Ljava/lang/String;
    const-string v19, "DKdebugMsg"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "---setParameters---ActivityName = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2108
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ".LETV."

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/hardware/Camera;->mLetvTrace:Ljava/lang/String;

    .line 2109
    const-string v19, "DKdebugMsg"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "---setParameters---mLetvTrace = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera;->mLetvTrace:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2111
    .end local v3    # "ActivityName":Ljava/lang/String;
    .end local v4    # "PackageName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v19, "letv_trace"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera;->mLetvTrace:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2116
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera;->mLetvTrace:Ljava/lang/String;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera;->mLetvTrace:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "com.tencent.mm"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 2118
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v9

    .line 2119
    .local v9, "listFocusMod":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v9, :cond_8

    const-string v19, "continuous-picture"

    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 2120
    const-string v19, "continuous-picture"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 2121
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/Camera;->mLetvTrace:Ljava/lang/String;

    move-object/from16 v19, v0

    const-string v20, "com.tencent.mm.LETV.com.tencent.mm.plugin.scanner.ui.BaseScanUI"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    .line 2123
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 2124
    .local v11, "meteringAreas":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    new-instance v19, Landroid/hardware/Camera$Area;

    new-instance v20, Landroid/graphics/Rect;

    const/16 v21, -0xc8

    const/16 v22, -0xc8

    const/16 v23, 0xc8

    const/16 v24, 0xc8

    invoke-direct/range {v20 .. v24}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v21, 0x3e8

    invoke-direct/range {v19 .. v21}, Landroid/hardware/Camera$Area;-><init>(Landroid/graphics/Rect;I)V

    move-object/from16 v0, v19

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2125
    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 2126
    const-string v19, "DKdebugMsg"

    const-string v20, "---setParameters--- set metering area"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    const-string/jumbo v19, "on"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setZSLMode(Ljava/lang/String;)V

    .line 2129
    const-string v19, "DKdebugMsg"

    const-string v20, "---setParameters--- setZSLMode on"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2130
    const-string v19, "edge"

    const-string/jumbo v20, "high"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2131
    const-string v19, "contrast"

    const-string/jumbo v20, "high"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 2132
    const-string v19, "DKdebugMsg"

    const-string v20, "---setParameters--- params.set, edge contrast, high"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v17

    .line 2135
    .local v17, "szOrigin":Landroid/hardware/Camera$Size;
    const-string v19, "DKdebugMsg"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "----- setParameters, szOrigin.width = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v17

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", szOrigin.height = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v17

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    const/16 v18, 0x0

    .local v18, "width":I
    const/4 v6, 0x0

    .line 2138
    .local v6, "height":I
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v10

    .line 2139
    .local v10, "listPicSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v7, 0x0

    .line 2140
    .local v7, "i":I
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/hardware/Camera$Size;

    .line 2142
    .local v15, "sz":Landroid/hardware/Camera$Size;
    const-string v19, "DKdebugMsg"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "listPicSizes["

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "] = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v15, Landroid/hardware/Camera$Size;->width:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "x"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget v0, v15, Landroid/hardware/Camera$Size;->height:I

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    add-int/lit8 v7, v7, 0x1

    .line 2144
    goto :goto_0

    .line 2145
    .end local v15    # "sz":Landroid/hardware/Camera$Size;
    :cond_4
    const/16 v16, 0x0

    .line 2146
    .local v16, "szMax":Landroid/hardware/Camera$Size;
    const/4 v13, 0x0

    .line 2147
    .local v13, "nAreaMax":I
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/hardware/Camera$Size;

    .line 2149
    .restart local v15    # "sz":Landroid/hardware/Camera$Size;
    iget v0, v15, Landroid/hardware/Camera$Size;->width:I

    move/from16 v19, v0

    iget v0, v15, Landroid/hardware/Camera$Size;->height:I

    move/from16 v20, v0

    mul-int v12, v19, v20

    .line 2152
    .local v12, "nArea":I
    if-le v12, v13, :cond_5

    .line 2153
    move v13, v12

    .line 2154
    move-object/from16 v16, v15

    goto :goto_1

    .line 2158
    .end local v12    # "nArea":I
    .end local v15    # "sz":Landroid/hardware/Camera$Size;
    :cond_6
    if-eqz v16, :cond_7

    .line 2159
    move-object/from16 v0, v16

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v18, v0

    .line 2160
    move-object/from16 v0, v16

    iget v6, v0, Landroid/hardware/Camera$Size;->height:I

    .line 2161
    const-string v19, "DKdebugMsg"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "----- setParameters, changed----- width = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ", height = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 2166
    .end local v6    # "height":I
    .end local v7    # "i":I
    .end local v8    # "i$":Ljava/util/Iterator;
    .end local v10    # "listPicSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v11    # "meteringAreas":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Area;>;"
    .end local v13    # "nAreaMax":I
    .end local v16    # "szMax":Landroid/hardware/Camera$Size;
    .end local v17    # "szOrigin":Landroid/hardware/Camera$Size;
    .end local v18    # "width":I
    :cond_7
    const-string v19, "DKdebugMsg"

    const-string v20, "---setParameters--- setFocusMode : FOCUS_MODE_CONTINUOUS_PICTURE"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/hardware/Camera;->m_bforbidAutoFocus:Z

    .line 2173
    .end local v9    # "listFocusMod":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->flatten()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/hardware/Camera;->native_setParameters(Ljava/lang/String;)V

    .line 2174
    return-void
.end method

.method public final setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V
    .locals 2
    .param p1, "cb"    # Landroid/hardware/Camera$PreviewCallback;

    .prologue
    const/4 v1, 0x0

    .line 810
    const/16 v0, 0x42

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 811
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 812
    iput-boolean v1, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 813
    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 814
    if-eqz p1, :cond_0

    .line 815
    iput-boolean v1, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 819
    :cond_0
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 820
    return-void

    :cond_1
    move v0, v1

    .line 819
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
    .line 1075
    const/4 v2, 0x0

    .line 1076
    .local v2, "previewSurface":Landroid/view/Surface;
    if-eqz p1, :cond_4

    .line 1077
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 1078
    .local v0, "p":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 1079
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

    .line 1081
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

    .line 1090
    :cond_1
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getUsage()I

    move-result v3

    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_2

    .line 1092
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Allocation usage does not include USAGE_IO_INPUT"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1095
    :cond_2
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Type;->getElement()Landroid/renderscript/Element;

    move-result-object v3

    invoke-virtual {v3}, Landroid/renderscript/Element;->getDataKind()Landroid/renderscript/Element$DataKind;

    move-result-object v3

    sget-object v4, Landroid/renderscript/Element$DataKind;->PIXEL_YUV:Landroid/renderscript/Element$DataKind;

    if-eq v3, v4, :cond_3

    .line 1097
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Allocation is not of a YUV type"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1100
    :cond_3
    invoke-virtual {p1}, Landroid/renderscript/Allocation;->getSurface()Landroid/view/Surface;

    move-result-object v2

    .line 1101
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 1105
    .end local v0    # "p":Landroid/hardware/Camera$Parameters;
    .end local v1    # "previewSize":Landroid/hardware/Camera$Size;
    :goto_0
    invoke-direct {p0, v2}, Landroid/hardware/Camera;->setPreviewCallbackSurface(Landroid/view/Surface;)V

    .line 1106
    return-void

    .line 1103
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

    .line 876
    const/16 v2, 0x43

    invoke-static {v2}, Landroid/util/SeempLog;->record(I)I

    .line 877
    iput-object p1, p0, Landroid/hardware/Camera;->mPreviewCallback:Landroid/hardware/Camera$PreviewCallback;

    .line 878
    iput-boolean v0, p0, Landroid/hardware/Camera;->mOneShot:Z

    .line 879
    iput-boolean v1, p0, Landroid/hardware/Camera;->mWithBuffer:Z

    .line 880
    if-eqz p1, :cond_0

    .line 881
    iput-boolean v0, p0, Landroid/hardware/Camera;->mUsingPreviewAllocation:Z

    .line 883
    :cond_0
    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    invoke-direct {p0, v0, v1}, Landroid/hardware/Camera;->setHasPreviewCallback(ZZ)V

    .line 884
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
    .line 667
    if-eqz p1, :cond_0

    .line 668
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setPreviewSurface(Landroid/view/Surface;)V

    .line 672
    :goto_0
    return-void

    .line 670
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
    .line 1702
    iput-object p1, p0, Landroid/hardware/Camera;->mZoomListener:Landroid/hardware/Camera$OnZoomChangeListener;

    .line 1703
    return-void
.end method

.method public final startFaceDetection()V
    .locals 2

    .prologue
    .line 1853
    iget-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    if-eqz v0, :cond_0

    .line 1854
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Face detection is already running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1856
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/hardware/Camera;->_startFaceDetection(I)V

    .line 1857
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 1858
    return-void
.end method

.method public final startPanoCapture()V
    .locals 2

    .prologue
    .line 1767
    iget-boolean v0, p0, Landroid/hardware/Camera;->mPanoRunning:Z

    if-eqz v0, :cond_0

    .line 1768
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "pano capture is already running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1770
    :cond_0
    invoke-direct {p0}, Landroid/hardware/Camera;->_startPanoCapture()V

    .line 1771
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/Camera;->mPanoRunning:Z

    .line 1772
    return-void
.end method

.method public final native startPreview()V
.end method

.method public final native startSmoothZoom(I)V
.end method

.method public final stopFaceDetection()V
    .locals 1

    .prologue
    .line 1866
    invoke-direct {p0}, Landroid/hardware/Camera;->_stopFaceDetection()V

    .line 1867
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 1868
    return-void
.end method

.method public final stopPanoCapture()V
    .locals 1

    .prologue
    .line 1778
    invoke-direct {p0}, Landroid/hardware/Camera;->_stopPanoCapture()V

    .line 1779
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/Camera;->mPanoRunning:Z

    .line 1780
    return-void
.end method

.method public final stopPreview()V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 769
    invoke-direct {p0}, Landroid/hardware/Camera;->_stopPreview()V

    .line 770
    iput-boolean v0, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 772
    iput-boolean v0, p0, Landroid/hardware/Camera;->mPanoRunning:Z

    .line 774
    iput-object v2, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 775
    iput-object v2, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 776
    iput-object v2, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 777
    iput-object v2, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 778
    iget-object v1, p0, Landroid/hardware/Camera;->mAutoFocusCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    .line 779
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/hardware/Camera;->mAutoFocusCallback:Landroid/hardware/Camera$AutoFocusCallback;

    .line 780
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 781
    iput-object v2, p0, Landroid/hardware/Camera;->mAutoFocusMoveCallback:Landroid/hardware/Camera$AutoFocusMoveCallback;

    .line 782
    return-void

    .line 780
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
    .line 1462
    const/16 v0, 0x41

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    .line 1463
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 1464
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

    .line 1498
    const/16 v1, 0x41

    invoke-static {v1}, Landroid/util/SeempLog;->record(I)I

    .line 1499
    iput-object p1, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    .line 1500
    iput-object p2, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    .line 1501
    iput-object p3, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    .line 1502
    iput-object p4, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    .line 1505
    const/4 v0, 0x0

    .line 1506
    .local v0, "msgType":I
    iget-object v1, p0, Landroid/hardware/Camera;->mShutterCallback:Landroid/hardware/Camera$ShutterCallback;

    if-eqz v1, :cond_0

    .line 1507
    or-int/lit8 v0, v0, 0x2

    .line 1509
    :cond_0
    iget-object v1, p0, Landroid/hardware/Camera;->mRawImageCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_1

    .line 1510
    or-int/lit16 v0, v0, 0x80

    .line 1512
    :cond_1
    iget-object v1, p0, Landroid/hardware/Camera;->mPostviewCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_2

    .line 1513
    or-int/lit8 v0, v0, 0x40

    .line 1515
    :cond_2
    iget-object v1, p0, Landroid/hardware/Camera;->mJpegCallback:Landroid/hardware/Camera$PictureCallback;

    if-eqz v1, :cond_3

    .line 1516
    or-int/lit16 v0, v0, 0x100

    .line 1519
    :cond_3
    invoke-direct {p0, v0}, Landroid/hardware/Camera;->native_takePicture(I)V

    .line 1520
    iput-boolean v2, p0, Landroid/hardware/Camera;->mFaceDetectionRunning:Z

    .line 1522
    iput-boolean v2, p0, Landroid/hardware/Camera;->mPanoRunning:Z

    .line 1524
    return-void
.end method

.method public final native unlock()V
.end method
