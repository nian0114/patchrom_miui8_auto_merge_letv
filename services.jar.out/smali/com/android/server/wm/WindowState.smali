.class final Lcom/android/server/wm/WindowState;
.super Ljava/lang/Object;
.source "WindowState.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$WindowState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowState$DeathRecipient;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "WindowState"


# instance fields
.field mAddTime:J

.field mAppFreezing:Z

.field final mAppOp:I

.field mAppOpVisibility:Z

.field mAppToken:Lcom/android/server/wm/AppWindowToken;

.field mAttachedHidden:Z

.field final mAttachedWindow:Lcom/android/server/wm/WindowState;

.field final mAttrs:Landroid/view/WindowManager$LayoutParams;

.field final mBaseLayer:I

.field mBlurParams:Landroid/graphics/BlurParams;

.field final mChildWindows:Lcom/android/server/wm/WindowList;

.field final mClient:Landroid/view/IWindow;

.field final mCompatFrame:Landroid/graphics/Rect;

.field private mConfigHasChanged:Z

.field private mConfiguration:Landroid/content/res/Configuration;

.field final mContainingFrame:Landroid/graphics/Rect;

.field mContentChanged:Z

.field final mContentFrame:Landroid/graphics/Rect;

.field final mContentInsets:Landroid/graphics/Rect;

.field mContentInsetsChanged:Z

.field final mContext:Landroid/content/Context;

.field final mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

.field final mDecorFrame:Landroid/graphics/Rect;

.field mDestroying:Z

.field mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field final mDisplayFrame:Landroid/graphics/Rect;

.field mDrawLock:Landroid/os/PowerManager$WakeLock;

.field mEnforceSizeCompat:Z

.field mExiting:Z

.field mFocusCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Landroid/view/IWindowFocusObserver;",
            ">;"
        }
    .end annotation
.end field

.field final mFrame:Landroid/graphics/Rect;

.field final mGivenContentInsets:Landroid/graphics/Rect;

.field mGivenInsetsPending:Z

.field final mGivenTouchableRegion:Landroid/graphics/Region;

.field final mGivenVisibleInsets:Landroid/graphics/Rect;

.field mGlobalScale:F

.field mHScale:F

.field mHasSurface:Z

.field mHaveFrame:Z

.field mInputChannel:Landroid/view/InputChannel;

.field final mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

.field mInvGlobalScale:F

.field final mIsFloatingLayer:Z

.field final mIsImWindow:Z

.field final mIsWallpaper:Z

.field final mLastContentInsets:Landroid/graphics/Rect;

.field final mLastFrame:Landroid/graphics/Rect;

.field mLastFreezeDuration:I

.field mLastHScale:F

.field final mLastOutsets:Landroid/graphics/Rect;

.field final mLastOverscanInsets:Landroid/graphics/Rect;

.field mLastRequestedHeight:I

.field mLastRequestedWidth:I

.field final mLastStableInsets:Landroid/graphics/Rect;

.field final mLastSystemDecorRect:Landroid/graphics/Rect;

.field mLastTitle:Ljava/lang/CharSequence;

.field mLastVScale:F

.field final mLastVisibleInsets:Landroid/graphics/Rect;

.field mLayer:I

.field final mLayoutAttached:Z

.field mLayoutNeeded:Z

.field mLayoutSeq:I

.field mNeedCheckExit:Z

.field mNotOnAppsDisplay:Z

.field mObscured:Z

.field mOrientationChanging:Z

.field final mOutsetFrame:Landroid/graphics/Rect;

.field final mOutsets:Landroid/graphics/Rect;

.field mOutsetsChanged:Z

.field private mOverrideConfig:Landroid/content/res/Configuration;

.field final mOverscanFrame:Landroid/graphics/Rect;

.field final mOverscanInsets:Landroid/graphics/Rect;

.field mOverscanInsetsChanged:Z

.field final mOwnerUid:I

.field final mParentFrame:Landroid/graphics/Rect;

.field final mPolicy:Landroid/view/WindowManagerPolicy;

.field mPolicyVisibility:Z

.field mPolicyVisibilityAfterAnim:Z

.field mRebuilding:Z

.field mRelayoutCalled:Z

.field mRemoveOnExit:Z

.field mRemoved:Z

.field mRequestedHeight:I

.field mRequestedWidth:I

.field mRootToken:Lcom/android/server/wm/WindowToken;

.field mSeq:I

.field final mService:Lcom/android/server/wm/WindowManagerService;

.field final mSession:Lcom/android/server/wm/Session;

.field private mShowToOwnerOnly:Z

.field final mShownFrame:Landroid/graphics/RectF;

.field final mStableFrame:Landroid/graphics/Rect;

.field final mStableInsets:Landroid/graphics/Rect;

.field mStableInsetsChanged:Z

.field mStringNameCache:Ljava/lang/String;

.field final mSubLayer:I

.field final mSystemDecorRect:Landroid/graphics/Rect;

.field mSystemUiVisibility:I

.field mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

.field final mTmpMatrix:Landroid/graphics/Matrix;

.field mToken:Lcom/android/server/wm/WindowToken;

.field mTouchableInsets:I

.field mTurnOnScreen:Z

.field mTurnOnScreenRequested:Z

.field mVScale:F

.field mViewVisibility:I

.field final mVisibleFrame:Landroid/graphics/Rect;

.field final mVisibleInsets:Landroid/graphics/Rect;

.field mVisibleInsetsChanged:Z

.field mWallpaperDisplayOffsetX:I

.field mWallpaperDisplayOffsetY:I

.field mWallpaperVisible:Z

.field mWallpaperX:F

.field mWallpaperXStep:F

.field mWallpaperY:F

.field mWallpaperYStep:F

.field mWasExiting:Z

.field final mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

.field final mWindowId:Landroid/view/IWindowId;

.field mXOffset:I

.field mYOffset:I


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/Session;Landroid/view/IWindow;Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowState;IILandroid/view/WindowManager$LayoutParams;ILcom/android/server/wm/DisplayContent;)V
    .locals 16
    .param p1, "service"    # Lcom/android/server/wm/WindowManagerService;
    .param p2, "s"    # Lcom/android/server/wm/Session;
    .param p3, "c"    # Landroid/view/IWindow;
    .param p4, "token"    # Lcom/android/server/wm/WindowToken;
    .param p5, "attachedWindow"    # Lcom/android/server/wm/WindowState;
    .param p6, "appOp"    # I
    .param p7, "seq"    # I
    .param p8, "a"    # Landroid/view/WindowManager$LayoutParams;
    .param p9, "viewVisibility"    # I
    .param p10, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    .line 391
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v13, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v13}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 107
    new-instance v13, Lcom/android/server/wm/WindowList;

    invoke-direct {v13}, Lcom/android/server/wm/WindowList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    .line 118
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    .line 119
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    .line 120
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    .line 145
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    .line 147
    sget-object v13, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    .line 148
    sget-object v13, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowState;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 158
    new-instance v13, Landroid/graphics/RectF;

    invoke-direct {v13}, Landroid/graphics/RectF;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    .line 164
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    .line 165
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    .line 173
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    .line 174
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    .line 181
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    .line 182
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowState;->mLastOverscanInsets:Landroid/graphics/Rect;

    .line 189
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    .line 190
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowState;->mLastStableInsets:Landroid/graphics/Rect;

    .line 197
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    .line 198
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowState;->mLastOutsets:Landroid/graphics/Rect;

    .line 199
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/wm/WindowState;->mOutsetsChanged:Z

    .line 211
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    .line 217
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    .line 222
    new-instance v13, Landroid/graphics/Region;

    invoke-direct {v13}, Landroid/graphics/Region;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    .line 230
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    .line 236
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    .line 237
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowState;->mLastSystemDecorRect:Landroid/graphics/Rect;

    .line 240
    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 241
    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 242
    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wm/WindowState;->mHScale:F

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wm/WindowState;->mVScale:F

    .line 243
    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wm/WindowState;->mLastHScale:F

    const/high16 v13, 0x3f800000    # 1.0f

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wm/WindowState;->mLastVScale:F

    .line 244
    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowState;->mTmpMatrix:Landroid/graphics/Matrix;

    .line 247
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 248
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    .line 251
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    .line 253
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    .line 255
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    .line 259
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    .line 265
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    .line 269
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    .line 273
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    .line 277
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    .line 281
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    .line 285
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowState;->mOutsetFrame:Landroid/graphics/Rect;

    .line 291
    const/high16 v13, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    .line 292
    const/high16 v13, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    .line 296
    const/high16 v13, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    .line 297
    const/high16 v13, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    .line 301
    const/high16 v13, -0x80000000

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    .line 302
    const/high16 v13, -0x80000000

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    .line 364
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    .line 366
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/wm/WindowState;->mNotOnAppsDisplay:Z

    .line 382
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowState;->mBlurParams:Landroid/graphics/BlurParams;

    .line 386
    const-wide/16 v14, 0x0

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/wm/WindowState;->mAddTime:J

    .line 392
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 393
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    .line 394
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    .line 395
    move/from16 v0, p6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowState;->mAppOp:I

    .line 396
    move-object/from16 v0, p4

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 397
    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/server/wm/Session;->mUid:I

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    .line 398
    new-instance v13, Lcom/android/server/wm/WindowState$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/server/wm/WindowState$1;-><init>(Lcom/android/server/wm/WindowState;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowState;->mWindowId:Landroid/view/IWindowId;

    .line 412
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p8

    invoke-virtual {v13, v0}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 413
    move/from16 v0, p9

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    .line 414
    move-object/from16 v0, p10

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 415
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    .line 416
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowState;->mContext:Landroid/content/Context;

    .line 417
    new-instance v8, Lcom/android/server/wm/WindowState$DeathRecipient;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v8, v0, v13}, Lcom/android/server/wm/WindowState$DeathRecipient;-><init>(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState$1;)V

    .line 418
    .local v8, "deathRecipient":Lcom/android/server/wm/WindowState$DeathRecipient;
    move/from16 v0, p7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/WindowState;->mSeq:I

    .line 419
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v13, v13, 0x80

    if-eqz v13, :cond_6

    const/4 v13, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    .line 420
    sget-boolean v13, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v13, :cond_0

    const-string v13, "WindowState"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Window "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " client="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface/range {p3 .. p3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " token="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p4

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " ("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v15, v15, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ")"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " params="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p8

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    :cond_0
    :try_start_0
    invoke-interface/range {p3 .. p3}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v13, v8, v14}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    .line 440
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v14, 0x3e8

    if-lt v13, v14, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v14, 0x7cf

    if-gt v13, v14, :cond_f

    .line 444
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p5

    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v14, v14, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v13, v14}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v13

    mul-int/lit16 v13, v13, 0x2710

    add-int/lit16 v13, v13, 0x3e8

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 447
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p8

    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    invoke-interface {v13, v14}, Landroid/view/WindowManagerPolicy;->subWindowTypeToLayerLw(I)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 448
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    .line 449
    sget-boolean v13, Lcom/android/server/wm/WindowManagerService;->DEBUG_ADD_REMOVE:Z

    if-eqz v13, :cond_1

    const-string v13, "WindowState"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Adding "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v7, v13, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    .line 452
    .local v7, "childWindows":Lcom/android/server/wm/WindowList;
    invoke-virtual {v7}, Lcom/android/server/wm/WindowList;->size()I

    move-result v11

    .line 453
    .local v11, "numChildWindows":I
    if-nez v11, :cond_7

    .line 454
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Lcom/android/server/wm/WindowList;->add(Ljava/lang/Object;)Z

    .line 474
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v14, 0x3eb

    if-eq v13, v14, :cond_b

    const/4 v13, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 476
    move-object/from16 v0, p5

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v14, 0x7db

    if-eq v13, v14, :cond_3

    move-object/from16 v0, p5

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v14, 0x7dc

    if-ne v13, v14, :cond_c

    :cond_3
    const/4 v13, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 478
    move-object/from16 v0, p5

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v14, 0x7dd

    if-eq v13, v14, :cond_4

    move-object/from16 v0, p5

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v14, 0x835

    if-ne v13, v14, :cond_d

    :cond_4
    const/4 v13, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    .line 479
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v13, :cond_5

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v13, :cond_e

    :cond_5
    const/4 v13, 0x1

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    .line 495
    .end local v7    # "childWindows":Lcom/android/server/wm/WindowList;
    .end local v11    # "numChildWindows":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v14, 0x200000

    and-int/2addr v13, v14

    if-eqz v13, :cond_16

    const/4 v13, 0x1

    :goto_7
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/wm/WindowState;->mTurnOnScreenRequested:Z

    .line 497
    move-object/from16 v5, p0

    .line 498
    .local v5, "appWin":Lcom/android/server/wm/WindowState;
    :goto_8
    iget-object v13, v5, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v13, :cond_17

    .line 499
    iget-object v5, v5, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    goto :goto_8

    .line 419
    .end local v5    # "appWin":Lcom/android/server/wm/WindowState;
    :cond_6
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 425
    :catch_0
    move-exception v9

    .line 426
    .local v9, "e":Landroid/os/RemoteException;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    .line 427
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    .line 428
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 429
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 430
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    .line 431
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    .line 432
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 433
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 434
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 435
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 538
    .end local v9    # "e":Landroid/os/RemoteException;
    :goto_9
    return-void

    .line 456
    .restart local v7    # "childWindows":Lcom/android/server/wm/WindowList;
    .restart local v11    # "numChildWindows":I
    :cond_7
    const/4 v2, 0x0

    .line 457
    .local v2, "added":Z
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_a
    if-ge v10, v11, :cond_9

    .line 458
    invoke-virtual {v7, v10}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/wm/WindowState;

    iget v6, v13, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 459
    .local v6, "childSubLayer":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-lt v13, v6, :cond_8

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    if-ne v13, v6, :cond_a

    if-gez v6, :cond_a

    .line 464
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v7, v10, v0}, Lcom/android/server/wm/WindowList;->add(ILjava/lang/Object;)V

    .line 465
    const/4 v2, 0x1

    .line 469
    .end local v6    # "childSubLayer":I
    :cond_9
    if-nez v2, :cond_2

    .line 470
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Lcom/android/server/wm/WindowList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 457
    .restart local v6    # "childSubLayer":I
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    .line 474
    .end local v2    # "added":Z
    .end local v6    # "childSubLayer":I
    .end local v10    # "i":I
    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 476
    :cond_c
    const/4 v13, 0x0

    goto/16 :goto_3

    .line 478
    :cond_d
    const/4 v13, 0x0

    goto/16 :goto_4

    .line 479
    :cond_e
    const/4 v13, 0x0

    goto/16 :goto_5

    .line 483
    .end local v7    # "childWindows":Lcom/android/server/wm/WindowList;
    .end local v11    # "numChildWindows":I
    :cond_f
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mPolicy:Landroid/view/WindowManagerPolicy;

    move-object/from16 v0, p8

    invoke-interface {v13, v0}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(Landroid/view/WindowManager$LayoutParams;)I

    move-result v13

    mul-int/lit16 v13, v13, 0x2710

    add-int/lit16 v13, v13, 0x3e8

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    .line 486
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    .line 487
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    .line 488
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    .line 489
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v14, 0x7db

    if-eq v13, v14, :cond_10

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v14, 0x7dc

    if-ne v13, v14, :cond_13

    :cond_10
    const/4 v13, 0x1

    :goto_b
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    .line 491
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v14, 0x7dd

    if-eq v13, v14, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v13, v13, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v14, 0x835

    if-ne v13, v14, :cond_14

    :cond_11
    const/4 v13, 0x1

    :goto_c
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    .line 492
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v13, :cond_12

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v13, :cond_15

    :cond_12
    const/4 v13, 0x1

    :goto_d
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    goto/16 :goto_6

    .line 489
    :cond_13
    const/4 v13, 0x0

    goto :goto_b

    .line 491
    :cond_14
    const/4 v13, 0x0

    goto :goto_c

    .line 492
    :cond_15
    const/4 v13, 0x0

    goto :goto_d

    .line 495
    :cond_16
    const/4 v13, 0x0

    goto/16 :goto_7

    .line 501
    .restart local v5    # "appWin":Lcom/android/server/wm/WindowState;
    :cond_17
    iget-object v4, v5, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    .line 502
    .local v4, "appToken":Lcom/android/server/wm/WindowToken;
    :goto_e
    iget-object v13, v4, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v13, :cond_18

    .line 503
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v13, v13, Lcom/android/server/wm/WindowManagerService;->mTokenMap:Ljava/util/HashMap;

    iget-object v14, v4, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/wm/WindowToken;

    .line 504
    .local v12, "parent":Lcom/android/server/wm/WindowToken;
    if-eqz v12, :cond_18

    if-ne v4, v12, :cond_1a

    .line 509
    .end local v12    # "parent":Lcom/android/server/wm/WindowToken;
    :cond_18
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    .line 510
    iget-object v13, v4, Lcom/android/server/wm/WindowToken;->appWindowToken:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 511
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v13, :cond_19

    .line 512
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 513
    .local v3, "appDisplay":Lcom/android/server/wm/DisplayContent;
    move-object/from16 v0, p10

    if-eq v0, v3, :cond_1b

    const/4 v13, 0x1

    :goto_f
    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/wm/WindowState;->mNotOnAppsDisplay:Z

    .line 515
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v13, v13, Lcom/android/server/wm/AppWindowToken;->showForAllUsers:Z

    if-eqz v13, :cond_19

    .line 518
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v14, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v15, 0x80000

    or-int/2addr v14, v15

    iput v14, v13, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 522
    .end local v3    # "appDisplay":Lcom/android/server/wm/DisplayContent;
    :cond_19
    new-instance v13, Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/server/wm/WindowStateAnimator;-><init>(Lcom/android/server/wm/WindowState;)V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    .line 523
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v0, p8

    iget v14, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iput v14, v13, Lcom/android/server/wm/WindowStateAnimator;->mAlpha:F

    .line 525
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .line 526
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .line 527
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    .line 528
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    .line 529
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wm/WindowState;->mXOffset:I

    .line 530
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wm/WindowState;->mYOffset:I

    .line 531
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/server/wm/WindowState;->mLayer:I

    .line 532
    new-instance v14, Lcom/android/server/input/InputWindowHandle;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v13, :cond_1c

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v13, v13, Lcom/android/server/wm/AppWindowToken;->mInputApplicationHandle:Lcom/android/server/input/InputApplicationHandle;

    :goto_10
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v15

    move-object/from16 v0, p0

    invoke-direct {v14, v13, v0, v15}, Lcom/android/server/input/InputWindowHandle;-><init>(Lcom/android/server/input/InputApplicationHandle;Ljava/lang/Object;I)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    .line 536
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/wm/WindowState;->mAddTime:J

    goto/16 :goto_9

    .line 507
    .restart local v12    # "parent":Lcom/android/server/wm/WindowToken;
    :cond_1a
    move-object v4, v12

    .line 508
    goto/16 :goto_e

    .line 513
    .end local v12    # "parent":Lcom/android/server/wm/WindowToken;
    .restart local v3    # "appDisplay":Lcom/android/server/wm/DisplayContent;
    :cond_1b
    const/4 v13, 0x0

    goto :goto_f

    .line 532
    .end local v3    # "appDisplay":Lcom/android/server/wm/DisplayContent;
    :cond_1c
    const/4 v13, 0x0

    goto :goto_10
.end method

.method private static applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 5
    .param p0, "outRegion"    # Landroid/graphics/Region;
    .param p1, "frame"    # Landroid/graphics/Rect;
    .param p2, "inset"    # Landroid/graphics/Rect;

    .prologue
    .line 1463
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v1, v2

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    iget v4, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/Region;->set(IIII)Z

    .line 1466
    return-void
.end method

.method private setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;
    .param p2, "newOverrideConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 1206
    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    .line 1207
    iput-object p2, p0, Lcom/android/server/wm/WindowState;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 1208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mConfigHasChanged:Z

    .line 1209
    return-void
.end method


# virtual methods
.method attach()V
    .locals 3

    .prologue
    .line 541
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attaching "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", list="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-object v2, v2, Lcom/android/server/wm/WindowToken;->windows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v0}, Lcom/android/server/wm/Session;->windowAddedLocked()V

    .line 545
    return-void
.end method

.method public final canReceiveKeys()Z
    .locals 1

    .prologue
    .line 1256
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public computeFrameLw(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 22
    .param p1, "pf"    # Landroid/graphics/Rect;
    .param p2, "df"    # Landroid/graphics/Rect;
    .param p3, "of"    # Landroid/graphics/Rect;
    .param p4, "cf"    # Landroid/graphics/Rect;
    .param p5, "vf"    # Landroid/graphics/Rect;
    .param p6, "dcf"    # Landroid/graphics/Rect;
    .param p7, "sf"    # Landroid/graphics/Rect;
    .param p8, "osf"    # Landroid/graphics/Rect;

    .prologue
    .line 560
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    .line 562
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v19

    .line 563
    .local v19, "stack":Lcom/android/server/wm/TaskStack;
    :goto_0
    if-eqz v19, :cond_d

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/wm/TaskStack;->isFullscreen()Z

    move-result v1

    if-nez v1, :cond_d

    const/16 v16, 0x1

    .line 564
    .local v16, "nonFullscreenStack":Z
    :goto_1
    if-eqz v16, :cond_e

    .line 565
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, v19

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 566
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v15, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    .line 567
    .local v15, "imeWin":Lcom/android/server/wm/WindowState;
    if-eqz v15, :cond_0

    invoke-virtual {v15}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mInputMethodTarget:Lcom/android/server/wm/WindowState;

    move-object/from16 v0, p0

    if-ne v1, v0, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p4

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    if-le v1, v4, :cond_0

    .line 570
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    iget v4, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p4

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v6

    sub-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Rect;->top:I

    .line 574
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 575
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 577
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 583
    .end local v15    # "imeWin":Lcom/android/server/wm/WindowState;
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v18

    .line 584
    .local v18, "pw":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v17

    .line 587
    .local v17, "ph":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_13

    .line 588
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    if-gez v1, :cond_f

    .line 589
    move/from16 v2, v18

    .line 595
    .local v2, "w":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    if-gez v1, :cond_11

    .line 596
    move/from16 v3, v17

    .line 619
    .local v3, "h":I
    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 622
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 623
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    .line 625
    :cond_2
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    if-ne v1, v4, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    if-eq v1, v4, :cond_4

    .line 626
    :cond_3
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    .line 627
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    .line 628
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    .line 631
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p3

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 632
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 633
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 634
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 635
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p7

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 636
    if-eqz p8, :cond_18

    const/4 v14, 0x1

    .line 637
    .local v14, "hasOutsets":Z
    :goto_5
    if-eqz v14, :cond_5

    .line 638
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mOutsetFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p8

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 641
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v13

    .line 642
    .local v13, "fw":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v12

    .line 645
    .local v12, "fh":I
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v1, :cond_19

    .line 646
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float v20, v1, v4

    .line 647
    .local v20, "x":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float v21, v1, v4

    .line 653
    .local v21, "y":F
    :goto_6
    if-eqz v16, :cond_6

    .line 656
    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 657
    move/from16 v0, v17

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 660
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    move/from16 v0, v18

    int-to-float v6, v0

    mul-float/2addr v5, v6

    add-float v5, v5, v20

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    move/from16 v0, v17

    int-to-float v7, v0

    mul-float/2addr v6, v7

    add-float v6, v6, v21

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-static/range {v1 .. v7}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;IILandroid/graphics/Rect;)V

    .line 665
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-static {v1, v4, v5}, Landroid/view/Gravity;->applyDisplay(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 668
    if-eqz v14, :cond_1a

    .line 669
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mOutsetFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mOutsetFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mOutsetFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mOutsetFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 679
    :goto_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 684
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 689
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 694
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 699
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 704
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 709
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    const/4 v5, 0x0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v7

    const/4 v7, 0x0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mStableFrame:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 714
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 715
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v1, :cond_7

    .line 719
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->scale(F)V

    .line 720
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->scale(F)V

    .line 721
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->scale(F)V

    .line 722
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->scale(F)V

    .line 723
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->scale(F)V

    .line 727
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->scale(F)V

    .line 730
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-eqz v1, :cond_9

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v13, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-eq v12, v1, :cond_9

    .line 731
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v10

    .line 732
    .local v10, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v10, :cond_9

    .line 733
    invoke-virtual {v10}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v11

    .line 734
    .local v11, "displayInfo":Landroid/view/DisplayInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v6, v11, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v7, v11, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v9, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    move-object/from16 v5, p0

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/WindowManagerService;->updateWallpaperOffsetLocked(Lcom/android/server/wm/WindowState;IIZI)Z

    .line 739
    .end local v10    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v11    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_9
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_LAYOUT:Z

    if-nez v1, :cond_a

    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->localLOGV:Z

    if-eqz v1, :cond_b

    :cond_a
    const-string v1, "WindowState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resolving (mRequestedWidth="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mRequestedheight="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") to"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (pw="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ph="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): frame="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ci="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " vi="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " si="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " of="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " this="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :cond_b
    return-void

    .line 562
    .end local v2    # "w":I
    .end local v3    # "h":I
    .end local v12    # "fh":I
    .end local v13    # "fw":I
    .end local v14    # "hasOutsets":Z
    .end local v16    # "nonFullscreenStack":Z
    .end local v17    # "ph":I
    .end local v18    # "pw":I
    .end local v19    # "stack":Lcom/android/server/wm/TaskStack;
    .end local v20    # "x":F
    .end local v21    # "y":F
    :cond_c
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 563
    .restart local v19    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_d
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 579
    .restart local v16    # "nonFullscreenStack":Z
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 580
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_2

    .line 590
    .restart local v17    # "ph":I
    .restart local v18    # "pw":I
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v1, :cond_10

    .line 591
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v1, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v1, v4

    float-to-int v2, v1

    .restart local v2    # "w":I
    goto/16 :goto_3

    .line 593
    .end local v2    # "w":I
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .restart local v2    # "w":I
    goto/16 :goto_3

    .line 597
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v1, :cond_12

    .line 598
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v1, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v1, v4

    float-to-int v3, v1

    .restart local v3    # "h":I
    goto/16 :goto_4

    .line 600
    .end local v3    # "h":I
    :cond_12
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .restart local v3    # "h":I
    goto/16 :goto_4

    .line 603
    .end local v2    # "w":I
    .end local v3    # "h":I
    :cond_13
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_14

    .line 604
    move/from16 v2, v18

    .line 610
    .restart local v2    # "w":I
    :goto_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_16

    .line 611
    move/from16 v3, v17

    .restart local v3    # "h":I
    goto/16 :goto_4

    .line 605
    .end local v2    # "w":I
    .end local v3    # "h":I
    :cond_14
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v1, :cond_15

    .line 606
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v1, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v1, v4

    float-to-int v2, v1

    .restart local v2    # "w":I
    goto :goto_8

    .line 608
    .end local v2    # "w":I
    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    .restart local v2    # "w":I
    goto :goto_8

    .line 612
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v1, :cond_17

    .line 613
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    mul-float/2addr v1, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v1, v4

    float-to-int v3, v1

    .restart local v3    # "h":I
    goto/16 :goto_4

    .line 615
    .end local v3    # "h":I
    :cond_17
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    .restart local v3    # "h":I
    goto/16 :goto_4

    .line 636
    :cond_18
    const/4 v14, 0x0

    goto/16 :goto_5

    .line 649
    .restart local v12    # "fh":I
    .restart local v13    # "fw":I
    .restart local v14    # "hasOutsets":Z
    :cond_19
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    int-to-float v0, v1

    move/from16 v20, v0

    .line 650
    .restart local v20    # "x":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    int-to-float v0, v1

    move/from16 v21, v0

    .restart local v21    # "y":F
    goto/16 :goto_6

    .line 674
    :cond_1a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto/16 :goto_7
.end method

.method disposeInputChannel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1221
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_0

    .line 1222
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mInputManager:Lcom/android/server/input/InputManagerService;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0, v1}, Lcom/android/server/input/InputManagerService;->unregisterInputChannel(Landroid/view/InputChannel;)V

    .line 1224
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    invoke-virtual {v0}, Landroid/view/InputChannel;->dispose()V

    .line 1225
    iput-object v2, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 1228
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-object v2, v0, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    .line 1229
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z

    .prologue
    .line 1613
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/WindowState;->dump(Ljava/io/PrintWriter;Ljava/lang/String;ZLjava/text/SimpleDateFormat;)V

    .line 1614
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;ZLjava/text/SimpleDateFormat;)V
    .locals 9
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "dumpAll"    # Z
    .param p4, "sdf"    # Ljava/text/SimpleDateFormat;

    .prologue
    const/high16 v8, -0x80000000

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, -0x40800000    # -1.0f

    .line 1618
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    .line 1619
    .local v1, "stack":Lcom/android/server/wm/TaskStack;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mDisplayId="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1620
    if-eqz v1, :cond_0

    .line 1621
    const-string v2, " stackId="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Lcom/android/server/wm/TaskStack;->mStackId:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1623
    :cond_0
    const-string v2, " mSession="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1624
    const-string v2, " mClient="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v2}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1625
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mOwnerUid="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1626
    const-string v2, " mShowToOwnerOnly="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mShowToOwnerOnly:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1627
    const-string v2, " package="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1629
    const-string v2, " addTime="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p4, :cond_27

    new-instance v2, Ljava/util/Date;

    iget-wide v4, p0, Lcom/android/server/wm/WindowState;->mAddTime:J

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p4, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1631
    const-string v2, " appop="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mAppOp:I

    invoke-static {v2}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1632
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mAttrs="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1633
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Requested w="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1634
    const-string v2, " h="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1635
    const-string v2, " mLayoutSeq="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mLayoutSeq:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1636
    iget v2, p0, Lcom/android/server/wm/WindowState;->mRequestedWidth:I

    iget v3, p0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/android/server/wm/WindowState;->mRequestedHeight:I

    iget v3, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    if-eq v2, v3, :cond_2

    .line 1637
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "LastRequested w="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mLastRequestedWidth:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1638
    const-string v2, " h="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mLastRequestedHeight:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1640
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-nez v2, :cond_3

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    if-eqz v2, :cond_4

    .line 1641
    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mAttachedWindow="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1642
    const-string v2, " mLayoutAttached="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mLayoutAttached:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1644
    :cond_4
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    if-eqz v2, :cond_6

    .line 1645
    :cond_5
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mIsImWindow="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mIsImWindow:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1646
    const-string v2, " mIsWallpaper="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mIsWallpaper:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1647
    const-string v2, " mIsFloatingLayer="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mIsFloatingLayer:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1648
    const-string v2, " mWallpaperVisible="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperVisible:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1650
    :cond_6
    if-eqz p3, :cond_7

    .line 1651
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mBaseLayer="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mBaseLayer:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1652
    const-string v2, " mSubLayer="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mSubLayer:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1653
    const-string v2, " mAnimLayer="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, "+"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1654
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v2, v2, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    :goto_1
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1657
    const-string v2, "="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1658
    const-string v2, " mLastLayer="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mLastLayer:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1660
    :cond_7
    if-eqz p3, :cond_a

    .line 1661
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mToken="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1662
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mRootToken="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1663
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_8

    .line 1664
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mAppToken="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1666
    :cond_8
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_9

    .line 1667
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mTargetAppToken="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mTargetAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1669
    :cond_9
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mViewVisibility=0x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1670
    iget v2, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1671
    const-string v2, " mHaveFrame="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mHaveFrame:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1672
    const-string v2, " mObscured="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mObscured:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1673
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mSeq="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mSeq:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1674
    const-string v2, " mSystemUiVisibility=0x"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1675
    iget v2, p0, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1677
    :cond_a
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-eqz v2, :cond_c

    .line 1679
    :cond_b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mPolicyVisibility="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1680
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1681
    const-string v2, " mPolicyVisibilityAfterAnim="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1682
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1683
    const-string v2, " mAppOpVisibility="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1684
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1685
    const-string v2, " mAttachedHidden="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1687
    :cond_c
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-eqz v2, :cond_d

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    if-eqz v2, :cond_e

    .line 1688
    :cond_d
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mRelayoutCalled="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1689
    const-string v2, " mLayoutNeeded="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mLayoutNeeded:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1691
    :cond_e
    iget v2, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    if-nez v2, :cond_f

    iget v2, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    if-eqz v2, :cond_10

    .line 1692
    :cond_f
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Offsets x="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mXOffset:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1693
    const-string v2, " y="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mYOffset:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1695
    :cond_10
    if-eqz p3, :cond_13

    .line 1696
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mGivenContentInsets="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1697
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1698
    const-string v2, " mGivenVisibleInsets="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1699
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1700
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1701
    iget v2, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    if-nez v2, :cond_11

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    if-eqz v2, :cond_12

    .line 1702
    :cond_11
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mTouchableInsets="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1703
    const-string v2, " mGivenInsetsPending="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1704
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 1705
    .local v0, "region":Landroid/graphics/Region;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    .line 1706
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "touchable region="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1708
    .end local v0    # "region":Landroid/graphics/Region;
    :cond_12
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mConfiguration="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1709
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mOverrideConfig:Landroid/content/res/Configuration;

    sget-object v3, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    if-eq v2, v3, :cond_13

    .line 1710
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mOverrideConfig="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1713
    :cond_13
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mHasSurface="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1714
    const-string v2, " mShownFrame="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    invoke-virtual {v2, p1}, Landroid/graphics/RectF;->printShortString(Ljava/io/PrintWriter;)V

    .line 1715
    const-string v2, " isReadyForDisplay()="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isReadyForDisplay()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1718
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mBlurParams:Landroid/graphics/BlurParams;

    if-eqz v2, :cond_14

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mBlurParams:Landroid/graphics/BlurParams;

    iget-object v2, v2, Landroid/graphics/BlurParams;->area:Landroid/graphics/Rect;

    if-eqz v2, :cond_14

    .line 1719
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mBlurParams.area="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mBlurParams:Landroid/graphics/BlurParams;

    iget-object v2, v2, Landroid/graphics/BlurParams;->area:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1720
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mBlurParams.radius="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mBlurParams:Landroid/graphics/BlurParams;

    iget v2, v2, Landroid/graphics/BlurParams;->radius:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1724
    :cond_14
    if-eqz p3, :cond_16

    .line 1725
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mFrame="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1726
    const-string v2, " last="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1727
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1728
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mSystemDecorRect="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1729
    const-string v2, " last="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastSystemDecorRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1730
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mHasClipRect:Z

    if-eqz v2, :cond_15

    .line 1731
    const-string v2, " mLastClipRect="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1732
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mLastClipRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1734
    :cond_15
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1736
    :cond_16
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v2, :cond_17

    .line 1737
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mCompatFrame="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1738
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1740
    :cond_17
    if-eqz p3, :cond_18

    .line 1741
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Frames: containing="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1742
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mContainingFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1743
    const-string v2, " parent="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mParentFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1744
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1745
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    display="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1746
    const-string v2, " overscan="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1747
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1748
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    content="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1749
    const-string v2, " visible="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1750
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1751
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    decor="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDecorFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1752
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1753
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    outset="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mOutsetFrame:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1754
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1755
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Cur insets: overscan="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1756
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1757
    const-string v2, " content="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1758
    const-string v2, " visible="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1759
    const-string v2, " stable="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1760
    const-string v2, " outsets="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1761
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1762
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Lst insets: overscan="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1763
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1764
    const-string v2, " content="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1765
    const-string v2, " visible="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1766
    const-string v2, " stable="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1767
    const-string v2, " physical="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastOutsets:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1768
    const-string v2, " outset="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastOutsets:Landroid/graphics/Rect;

    invoke-virtual {v2, p1}, Landroid/graphics/Rect;->printShortString(Ljava/io/PrintWriter;)V

    .line 1769
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1771
    :cond_18
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1772
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p1, v3, p3}, Lcom/android/server/wm/WindowStateAnimator;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 1773
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v2, :cond_19

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    if-nez v2, :cond_19

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v2, :cond_19

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-eqz v2, :cond_1a

    .line 1774
    :cond_19
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mExiting="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1775
    const-string v2, " mRemoveOnExit="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRemoveOnExit:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1776
    const-string v2, " mDestroying="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1777
    const-string v2, " mRemoved="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1779
    :cond_1a
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    if-nez v2, :cond_1b

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    if-nez v2, :cond_1b

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    if-nez v2, :cond_1b

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mTurnOnScreenRequested:Z

    if-eqz v2, :cond_1c

    .line 1780
    :cond_1b
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mOrientationChanging="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1781
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1782
    const-string v2, " mAppFreezing="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAppFreezing:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 1783
    const-string v2, " mTurnOnScreen="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mTurnOnScreen:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1785
    const-string v2, " mTurinOnScreenRequested="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mTurnOnScreenRequested:Z

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1788
    :cond_1c
    iget v2, p0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    if-eqz v2, :cond_1d

    .line 1789
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mLastFreezeDuration="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1790
    iget v2, p0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    int-to-long v2, v2

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1792
    :cond_1d
    iget v2, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    cmpl-float v2, v2, v7

    if-nez v2, :cond_1e

    iget v2, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    cmpl-float v2, v2, v7

    if-eqz v2, :cond_1f

    .line 1793
    :cond_1e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mHScale="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mHScale:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 1794
    const-string v2, " mVScale="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mVScale:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 1796
    :cond_1f
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_20

    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_21

    .line 1797
    :cond_20
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mWallpaperX="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperX:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 1798
    const-string v2, " mWallpaperY="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperY:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 1800
    :cond_21
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_22

    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    cmpl-float v2, v2, v6

    if-eqz v2, :cond_23

    .line 1801
    :cond_22
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mWallpaperXStep="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperXStep:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(F)V

    .line 1802
    const-string v2, " mWallpaperYStep="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperYStep:F

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(F)V

    .line 1804
    :cond_23
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    if-ne v2, v8, :cond_24

    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    if-eq v2, v8, :cond_25

    .line 1806
    :cond_24
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "mWallpaperDisplayOffsetX="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1807
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetX:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 1808
    const-string v2, " mWallpaperDisplayOffsetY="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1809
    iget v2, p0, Lcom/android/server/wm/WindowState;->mWallpaperDisplayOffsetY:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 1811
    :cond_25
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_26

    .line 1812
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mDrawLock="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1814
    :cond_26
    return-void

    .line 1629
    :cond_27
    iget-wide v2, p0, Lcom/android/server/wm/WindowState;->mAddTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto/16 :goto_0

    .line 1654
    :cond_28
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_29

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget v2, v2, Lcom/android/server/wm/AppWindowAnimator;->animLayerAdjustment:I

    goto/16 :goto_1

    :cond_29
    const/4 v2, 0x0

    goto/16 :goto_1
.end method

.method public getAppToken()Landroid/view/IApplicationToken;
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAttrs()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method public getBaseType()I
    .locals 2

    .prologue
    .line 842
    move-object v0, p0

    .line 843
    .local v0, "win":Lcom/android/server/wm/WindowState;
    :goto_0
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v1, :cond_0

    .line 844
    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    goto :goto_0

    .line 846
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    return v1
.end method

.method public getContentFrameLw()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 772
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mContentFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDisplayContent()Lcom/android/server/wm/DisplayContent;
    .locals 2

    .prologue
    .line 870
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mNotOnAppsDisplay:Z

    if-eqz v1, :cond_1

    .line 871
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 874
    :goto_0
    return-object v1

    .line 873
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 874
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/TaskStack;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    goto :goto_0
.end method

.method public getDisplayFrameLw()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 762
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mDisplayFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getDisplayId()I
    .locals 2

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 879
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_0

    .line 880
    const/4 v1, -0x1

    .line 882
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    goto :goto_0
.end method

.method public getFrameLw()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getGivenContentInsetsLw()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getGivenInsetsPendingLw()Z
    .locals 1

    .prologue
    .line 782
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mGivenInsetsPending:Z

    return v0
.end method

.method public getGivenVisibleInsetsLw()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 792
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getInputDispatchingTimeoutNanos()J
    .locals 2

    .prologue
    .line 912
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-wide v0, v0, Lcom/android/server/wm/AppWindowToken;->inputDispatchingTimeoutNanos:J

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x1dcd65000L

    goto :goto_0
.end method

.method public getNeedsMenuLw(Landroid/view/WindowManagerPolicy$WindowState;)Z
    .locals 6
    .param p1, "bottom"    # Landroid/view/WindowManagerPolicy$WindowState;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 802
    const/4 v0, -0x1

    .line 803
    .local v0, "index":I
    move-object v2, p0

    .line 804
    .local v2, "ws":Lcom/android/server/wm/WindowState;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v1

    .line 806
    .local v1, "windows":Lcom/android/server/wm/WindowList;
    :goto_0
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    if-eqz v5, :cond_2

    .line 807
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->needsMenuKey:I

    if-ne v5, v3, :cond_1

    :goto_1
    move v4, v3

    .line 824
    :cond_0
    return v4

    :cond_1
    move v3, v4

    .line 807
    goto :goto_1

    .line 811
    :cond_2
    if-eq v2, p1, :cond_0

    .line 818
    if-eqz v1, :cond_3

    if-gez v0, :cond_3

    .line 819
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 822
    :cond_3
    add-int/lit8 v0, v0, -0x1

    .line 823
    if-ltz v0, :cond_0

    .line 826
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "ws":Lcom/android/server/wm/WindowState;
    check-cast v2, Lcom/android/server/wm/WindowState;

    .restart local v2    # "ws":Lcom/android/server/wm/WindowState;
    goto :goto_0
.end method

.method public getOverscanFrameLw()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 767
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mOverscanFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getOwningPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getOwningUid()I
    .locals 1

    .prologue
    .line 549
    iget v0, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    return v0
.end method

.method public getShownFrameLw()Landroid/graphics/RectF;
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mShownFrame:Landroid/graphics/RectF;

    return-object v0
.end method

.method getStack()Lcom/android/server/wm/TaskStack;
    .locals 5

    .prologue
    .line 886
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v2, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    .line 887
    .local v1, "wtoken":Lcom/android/server/wm/AppWindowToken;
    :goto_0
    if-eqz v1, :cond_2

    .line 888
    iget-object v0, v1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    .line 889
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_3

    .line 890
    iget-object v2, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    if-eqz v2, :cond_1

    .line 891
    iget-object v2, v0, Lcom/android/server/wm/Task;->mStack:Lcom/android/server/wm/TaskStack;

    .line 899
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :goto_1
    return-object v2

    .line 886
    .end local v1    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    goto :goto_0

    .line 893
    .restart local v0    # "task":Lcom/android/server/wm/Task;
    .restart local v1    # "wtoken":Lcom/android/server/wm/AppWindowToken;
    :cond_1
    const-string v2, "WindowState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStack: mStack null for task="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    .end local v0    # "task":Lcom/android/server/wm/Task;
    :cond_2
    :goto_2
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getHomeStack()Lcom/android/server/wm/TaskStack;

    move-result-object v2

    goto :goto_1

    .line 895
    .restart local v0    # "task":Lcom/android/server/wm/Task;
    :cond_3
    const-string v2, "WindowState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStack: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " couldn\'t find task for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Callers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method getStackBounds(Landroid/graphics/Rect;)V
    .locals 2
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 903
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 904
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v0, :cond_0

    .line 905
    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskStack;->getBounds(Landroid/graphics/Rect;)V

    .line 909
    :goto_0
    return-void

    .line 908
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method public getSurfaceLayer()I
    .locals 1

    .prologue
    .line 837
    iget v0, p0, Lcom/android/server/wm/WindowState;->mLayer:I

    return v0
.end method

.method public getSystemUiVisibility()I
    .locals 1

    .prologue
    .line 832
    iget v0, p0, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    return v0
.end method

.method public getTouchableRegion(Landroid/graphics/Region;)V
    .locals 4
    .param p1, "outRegion"    # Landroid/graphics/Region;

    .prologue
    .line 1469
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 1470
    .local v0, "frame":Landroid/graphics/Rect;
    iget v2, p0, Lcom/android/server/wm/WindowState;->mTouchableInsets:I

    packed-switch v2, :pswitch_data_0

    .line 1473
    invoke-virtual {p1, v0}, Landroid/graphics/Region;->set(Landroid/graphics/Rect;)Z

    .line 1488
    :goto_0
    return-void

    .line 1476
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mGivenContentInsets:Landroid/graphics/Rect;

    invoke-static {p1, v0, v2}, Lcom/android/server/wm/WindowState;->applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1479
    :pswitch_1
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mGivenVisibleInsets:Landroid/graphics/Rect;

    invoke-static {p1, v0, v2}, Lcom/android/server/wm/WindowState;->applyInsets(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_0

    .line 1482
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mGivenTouchableRegion:Landroid/graphics/Region;

    .line 1483
    .local v1, "givenTouchableRegion":Landroid/graphics/Region;
    invoke-virtual {p1, v1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    .line 1484
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Region;->translate(II)V

    goto :goto_0

    .line 1470
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getVisibleFrameLw()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 777
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mVisibleFrame:Landroid/graphics/Rect;

    return-object v0
.end method

.method getWindowList()Lcom/android/server/wm/WindowList;
    .locals 2

    .prologue
    .line 1491
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1492
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getWindowList()Lcom/android/server/wm/WindowList;

    move-result-object v1

    goto :goto_0
.end method

.method public hasAppShownWindows()Z
    .locals 1

    .prologue
    .line 919
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->firstWindowDrawn:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDrawnLw()Z
    .locals 2

    .prologue
    .line 1263
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method hasMoved()Z
    .locals 2

    .prologue
    .line 1157
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mLastHidden:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-eq v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->hasMoved()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hideLw(Z)Z
    .locals 1
    .param p1, "doAnimation"    # Z

    .prologue
    .line 1309
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    move-result v0

    return v0
.end method

.method hideLw(ZZ)Z
    .locals 6
    .param p1, "doAnimation"    # Z
    .param p2, "requestAnim"    # Z

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1314
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-nez v3, :cond_0

    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DEBUG_SURFACE_TRACE:Z

    if-eqz v3, :cond_1

    .line 1315
    :cond_0
    const-string v3, "WindowState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hideLw win="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " doAnimation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " requestAnim="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Calls="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x4

    invoke-static {v5}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    :cond_1
    if-eqz p1, :cond_2

    .line 1321
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1322
    const/4 p1, 0x0

    .line 1325
    :cond_2
    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    .line 1327
    .local v0, "current":Z
    :goto_0
    if-nez v0, :cond_4

    .line 1356
    :goto_1
    return v1

    .line 1325
    .end local v0    # "current":Z
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    goto :goto_0

    .line 1331
    .restart local v0    # "current":Z
    :cond_4
    if-eqz p1, :cond_5

    .line 1332
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v1}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    .line 1333
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v3, :cond_5

    .line 1334
    const/4 p1, 0x0

    .line 1337
    :cond_5
    if-eqz p1, :cond_8

    .line 1338
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    .line 1353
    :cond_6
    :goto_2
    if-eqz p2, :cond_7

    .line 1354
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    :cond_7
    move v1, v2

    .line 1356
    goto :goto_1

    .line 1340
    :cond_8
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v3, :cond_9

    const-string v3, "WindowState"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Policy visibility false: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    :cond_9
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    .line 1342
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    .line 1346
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->enableScreenIfNeededLocked()V

    .line 1347
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-ne v1, p0, :cond_6

    .line 1348
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_FOCUS_LIGHT:Z

    if-eqz v1, :cond_a

    const-string v1, "WindowState"

    const-string v3, "WindowState.hideLw: setting mFocusMayChange true"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    :cond_a
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v2, v1, Lcom/android/server/wm/WindowManagerService;->mFocusMayChange:Z

    goto :goto_2
.end method

.method public isAlive()Z
    .locals 1

    .prologue
    .line 1405
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result v0

    return v0
.end method

.method public isAnimatingLw()Z
    .locals 1

    .prologue
    .line 1102
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isClosing()Z
    .locals 2

    .prologue
    .line 1409
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mClosingApps:Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isConfigChanged()Z
    .locals 5

    .prologue
    .line 1169
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v3

    .line 1170
    .local v3, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v3, :cond_3

    iget-object v1, v3, Lcom/android/server/wm/TaskStack;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 1172
    .local v1, "overrideConfig":Landroid/content/res/Configuration;
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v4, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    .line 1173
    .local v2, "serviceConfig":Landroid/content/res/Configuration;
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    if-eq v4, v2, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v4, v2}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mOverrideConfig:Landroid/content/res/Configuration;

    if-eq v4, v1, :cond_4

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mOverrideConfig:Landroid/content/res/Configuration;

    invoke-virtual {v4, v1}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v4

    if-nez v4, :cond_4

    :cond_1
    const/4 v0, 0x1

    .line 1177
    .local v0, "configChanged":Z
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    and-int/lit16 v4, v4, 0x400

    if-eqz v4, :cond_2

    .line 1179
    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mConfigHasChanged:Z

    or-int/2addr v4, v0

    iput-boolean v4, p0, Lcom/android/server/wm/WindowState;->mConfigHasChanged:Z

    .line 1180
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mConfigHasChanged:Z

    .line 1183
    :cond_2
    return v0

    .line 1170
    .end local v0    # "configChanged":Z
    .end local v1    # "overrideConfig":Landroid/content/res/Configuration;
    .end local v2    # "serviceConfig":Landroid/content/res/Configuration;
    :cond_3
    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    goto :goto_0

    .line 1173
    .restart local v1    # "overrideConfig":Landroid/content/res/Configuration;
    .restart local v2    # "serviceConfig":Landroid/content/res/Configuration;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public isDefaultDisplay()Z
    .locals 2

    .prologue
    .line 1414
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1415
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_0

    .line 1417
    const/4 v1, 0x0

    .line 1419
    :goto_0
    return v1

    :cond_0
    iget-boolean v1, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    goto :goto_0
.end method

.method public isDimming()Z
    .locals 2

    .prologue
    .line 1424
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v0

    .line 1425
    .local v0, "stack":Lcom/android/server/wm/TaskStack;
    if-nez v0, :cond_0

    .line 1426
    const/4 v1, 0x0

    .line 1428
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskStack;->isDimming(Lcom/android/server/wm/WindowStateAnimator;)Z

    move-result v1

    goto :goto_0
.end method

.method public isDisplayedLw()Z
    .locals 2

    .prologue
    .line 1089
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1090
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isDrawFinishedLw()Z
    .locals 2

    .prologue
    .line 1123
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDrawnLw()Z
    .locals 2

    .prologue
    .line 1135
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFocused()Z
    .locals 2

    .prologue
    .line 1607
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1608
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1609
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method isFullscreen(II)Z
    .locals 1
    .param p1, "screenWidth"    # I
    .param p2, "screenHeight"    # I

    .prologue
    .line 1164
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    if-lt v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    if-lt v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isGoneForLayoutLw()Z
    .locals 3

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1109
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-nez v1, :cond_3

    :cond_0
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v1, :cond_3

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hidden:Z

    if-nez v1, :cond_3

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isAnimatingLw()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v1, :cond_4

    :cond_3
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isHiddenFromUserLocked()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1437
    move-object v2, p0

    .line 1438
    .local v2, "win":Lcom/android/server/wm/WindowState;
    :goto_0
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_0

    .line 1439
    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    goto :goto_0

    .line 1441
    :cond_0
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v6, 0x7d0

    if-ge v5, v6, :cond_3

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v5, :cond_3

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v5, v5, Lcom/android/server/wm/AppWindowToken;->showForAllUsers:Z

    if-eqz v5, :cond_3

    .line 1445
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 1446
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-nez v0, :cond_2

    .line 1458
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_1
    :goto_1
    return v3

    .line 1449
    .restart local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    .line 1450
    .local v1, "displayInfo":Landroid/view/DisplayInfo;
    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-gtz v5, :cond_3

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    if-gtz v5, :cond_3

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    iget v6, v1, Landroid/view/DisplayInfo;->appWidth:I

    if-lt v5, v6, :cond_3

    iget-object v5, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget v6, v1, Landroid/view/DisplayInfo;->appHeight:I

    if-lt v5, v6, :cond_3

    move v3, v4

    .line 1454
    goto :goto_1

    .line 1458
    .end local v0    # "displayContent":Lcom/android/server/wm/DisplayContent;
    .end local v1    # "displayInfo":Landroid/view/DisplayInfo;
    :cond_3
    iget-boolean v5, v2, Lcom/android/server/wm/WindowState;->mShowToOwnerOnly:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v6, v2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfileLocked(I)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_4
    move v3, v4

    goto :goto_1
.end method

.method isIdentityMatrix(FFFF)Z
    .locals 6
    .param p1, "dsdx"    # F
    .param p2, "dtdx"    # F
    .param p3, "dsdy"    # F
    .param p4, "dtdy"    # F

    .prologue
    const v5, 0x3f800054    # 1.00001f

    const v4, 0x3f7fff58    # 0.99999f

    const v3, 0x358637bd    # 1.0E-6f

    const v2, -0x4a79c843    # -1.0E-6f

    const/4 v0, 0x0

    .line 923
    cmpg-float v1, p1, v4

    if-ltz v1, :cond_0

    cmpl-float v1, p1, v5

    if-lez v1, :cond_1

    .line 927
    :cond_0
    :goto_0
    return v0

    .line 924
    :cond_1
    cmpg-float v1, p4, v4

    if-ltz v1, :cond_0

    cmpl-float v1, p4, v5

    if-gtz v1, :cond_0

    .line 925
    cmpg-float v1, p2, v2

    if-ltz v1, :cond_0

    cmpl-float v1, p2, v3

    if-gtz v1, :cond_0

    .line 926
    cmpg-float v1, p3, v2

    if-ltz v1, :cond_0

    cmpl-float v1, p3, v3

    if-gtz v1, :cond_0

    .line 927
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isOnScreen()Z
    .locals 1

    .prologue
    .line 1026
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isOnScreenIgnoringKeyguard()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isOnScreenIgnoringKeyguard()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1034
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-eqz v3, :cond_1

    .line 1042
    :cond_0
    :goto_0
    return v1

    .line 1037
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1038
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v0, :cond_4

    .line 1039
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v3, :cond_2

    iget-boolean v3, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v3, :cond_3

    iget-object v3, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v3, v3, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 1042
    :cond_4
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v3, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method isOpaqueDrawn()Z
    .locals 2

    .prologue
    .line 1145
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x7dd

    if-eq v0, v1, :cond_0

    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->USE_LOCK_WALLPAPER:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x835

    if-ne v0, v1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isDrawnLw()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v0, v0, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPotentialDragTarget()Z
    .locals 1

    .prologue
    .line 1004
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mRemoved:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isReadyForDisplay()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1050
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1054
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-eqz v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v1, v1, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isReadyForDisplayIgnoringKeyguard()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1066
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v2}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1075
    :cond_0
    :goto_0
    return v1

    .line 1069
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1070
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-nez v0, :cond_2

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v2, :cond_0

    .line 1075
    :cond_2
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v2, :cond_4

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowStateAnimator;->isDummyAnimation()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isVisibleLw()Z
    .locals 2

    .prologue
    .line 946
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 947
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isVisibleNow()Z
    .locals 2

    .prologue
    .line 993
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isVisibleOrAdding()Z
    .locals 2

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 1014
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mRelayoutCalled:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v1, :cond_2

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-nez v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isVisibleOrBehindKeyguardLw()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 962
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 969
    :goto_0
    return v3

    .line 966
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 967
    .local v1, "atoken":Lcom/android/server/wm/AppWindowToken;
    if-eqz v1, :cond_5

    iget-object v4, v1, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-object v4, v4, Lcom/android/server/wm/AppWindowAnimator;->animation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_4

    move v0, v2

    .line 969
    .local v0, "animating":Z
    :goto_1
    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v4, :cond_7

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v4, :cond_7

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v4, :cond_7

    if-nez v1, :cond_6

    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v4, :cond_7

    :cond_1
    iget-boolean v4, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v4, :cond_2

    iget v4, p0, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mRootToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v4, v4, Lcom/android/server/wm/WindowToken;->hidden:Z

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v4, v4, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v4, :cond_3

    if-eqz v0, :cond_7

    :cond_3
    :goto_2
    move v3, v2

    goto :goto_0

    .end local v0    # "animating":Z
    :cond_4
    move v0, v3

    .line 967
    goto :goto_1

    :cond_5
    move v0, v3

    goto :goto_1

    .line 969
    .restart local v0    # "animating":Z
    :cond_6
    iget-boolean v4, v1, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v4, :cond_1

    :cond_7
    move v2, v3

    goto :goto_2
.end method

.method public isVoiceInteraction()Z
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-boolean v0, v0, Lcom/android/server/wm/AppWindowToken;->voiceInteraction:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWinVisibleLw()Z
    .locals 2

    .prologue
    .line 982
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    .line 983
    .local v0, "atoken":Lcom/android/server/wm/AppWindowToken;
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mAttachedHidden:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/wm/AppWindowToken;->hiddenRequested:Z

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/AppWindowToken;->mAppAnimator:Lcom/android/server/wm/AppWindowAnimator;

    iget-boolean v1, v1, Lcom/android/server/wm/AppWindowAnimator;->animating:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mDestroying:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method makeInputChannelName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public pokeDrawLockLw(J)V
    .locals 5
    .param p1, "timeout"    # J

    .prologue
    .line 1377
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisibleOrAdding()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1378
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_1

    .line 1382
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1383
    .local v0, "tag":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    .line 1384
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1386
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/16 v2, 0x80

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Window:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    .line 1388
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 1389
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    new-instance v2, Landroid/os/WorkSource;

    iget v3, p0, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v4, v4, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 1392
    .end local v0    # "tag":Ljava/lang/CharSequence;
    :cond_1
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_POWER:Z

    if-eqz v1, :cond_2

    .line 1393
    const-string v1, "WindowState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pokeDrawLock: poking draw lock on behalf of visible window owned by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1396
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDrawLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 1401
    :cond_3
    :goto_0
    return-void

    .line 1397
    :cond_4
    sget-boolean v1, Lcom/android/server/wm/WindowManagerService;->DEBUG_POWER:Z

    if-eqz v1, :cond_3

    .line 1398
    const-string v1, "WindowState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pokeDrawLock: suppressed draw lock request for invisible window owned by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v3, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method prelayout()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 931
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mEnforceSizeCompat:Z

    if-eqz v0, :cond_0

    .line 932
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget v0, v0, Lcom/android/server/wm/WindowManagerService;->mCompatibleScreenScale:F

    iput v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    .line 933
    iget v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    div-float v0, v1, v0

    iput v0, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    .line 937
    :goto_0
    return-void

    .line 935
    :cond_0
    iput v1, p0, Lcom/android/server/wm/WindowState;->mInvGlobalScale:F

    iput v1, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    goto :goto_0
.end method

.method public registerFocusObserver(Landroid/view/IWindowFocusObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/view/IWindowFocusObserver;

    .prologue
    .line 1590
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1591
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    if-nez v0, :cond_0

    .line 1592
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    .line 1594
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 1595
    monitor-exit v1

    .line 1596
    return-void

    .line 1595
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method removeLocked()V
    .locals 3

    .prologue
    .line 1187
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->disposeInputChannel()V

    .line 1189
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    .line 1190
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_ADD_REMOVE:Z

    if-eqz v0, :cond_0

    const-string v0, "WindowState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mChildWindows:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowList;->remove(Ljava/lang/Object;)Z

    .line 1193
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->destroyDeferredSurfaceLocked()V

    .line 1194
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowStateAnimator;->destroySurfaceLocked()V

    .line 1195
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    invoke-virtual {v0}, Lcom/android/server/wm/Session;->windowRemovedLocked()V

    .line 1197
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v0}, Landroid/view/IWindow;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mDeathRecipient:Lcom/android/server/wm/WindowState$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1202
    :goto_0
    return-void

    .line 1198
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public reportFocusChangedSerialized(ZZ)V
    .locals 4
    .param p1, "focused"    # Z
    .param p2, "inTouchMode"    # Z

    .prologue
    .line 1501
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface {v3, p1, p2}, Landroid/view/IWindow;->windowFocusChanged(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1504
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v3, :cond_2

    .line 1505
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1506
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 1507
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/view/IWindowFocusObserver;

    .line 1509
    .local v2, "obs":Landroid/view/IWindowFocusObserver;
    if-eqz p1, :cond_0

    .line 1510
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWindowId:Landroid/view/IWindowId;

    invoke-interface {v3}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/IWindowFocusObserver;->focusGained(Landroid/os/IBinder;)V

    .line 1506
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1512
    :cond_0
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWindowId:Landroid/view/IWindowId;

    invoke-interface {v3}, Landroid/view/IWindowId;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/view/IWindowFocusObserver;->focusLost(Landroid/os/IBinder;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 1514
    :catch_0
    move-exception v3

    goto :goto_2

    .line 1517
    .end local v2    # "obs":Landroid/view/IWindowFocusObserver;
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1519
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_2
    return-void

    .line 1502
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method reportResized()V
    .locals 18

    .prologue
    .line 1523
    :try_start_0
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_RESIZE:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_ORIENTATION:Z

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "WindowState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Reporting new frame to "

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v16, ": "

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mCompatFrame:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->isConfigChanged()Z

    move-result v12

    .line 1526
    .local v12, "configChanged":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v15

    .line 1527
    .local v15, "stack":Lcom/android/server/wm/TaskStack;
    if-eqz v15, :cond_6

    iget-object v14, v15, Lcom/android/server/wm/TaskStack;->mOverrideConfig:Landroid/content/res/Configuration;

    .line 1529
    .local v14, "overrideConfig":Landroid/content/res/Configuration;
    :goto_0
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_RESIZE:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_ORIENTATION:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_CONFIGURATION:Z

    if-eqz v2, :cond_3

    :cond_2
    if-eqz v12, :cond_3

    .line 1530
    const-string v2, "WindowState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Sending new config to window "

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v16, ": "

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceW:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v16, "x"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceH:F

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v16, " / config="

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v16, " overrideConfig="

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1534
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v14}, Lcom/android/server/wm/WindowState;->setConfiguration(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 1535
    sget-boolean v2, Lcom/android/server/wm/WindowManagerService;->DEBUG_ORIENTATION:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 1536
    const-string v2, "WindowState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Resizing "

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v16, " WITH DRAW PENDING"

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    .line 1539
    .local v4, "frame":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/wm/WindowState;->mLastOverscanInsets:Landroid/graphics/Rect;

    .line 1540
    .local v5, "overscanInsets":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    .line 1541
    .local v6, "contentInsets":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    .line 1542
    .local v7, "visibleInsets":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/wm/WindowState;->mLastStableInsets:Landroid/graphics/Rect;

    .line 1543
    .local v8, "stableInsets":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/wm/WindowState;->mLastOutsets:Landroid/graphics/Rect;

    .line 1544
    .local v9, "outsets":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget v2, v2, Lcom/android/server/wm/WindowStateAnimator;->mDrawState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    const/4 v10, 0x1

    .line 1545
    .local v10, "reportDraw":Z
    :goto_1
    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/wm/WindowState;->mConfiguration:Landroid/content/res/Configuration;

    .line 1546
    .local v11, "newConfig":Landroid/content/res/Configuration;
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    instance-of v2, v2, Landroid/view/IWindow$Stub;

    if-eqz v2, :cond_9

    .line 1549
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v2, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v16, v0

    new-instance v2, Lcom/android/server/wm/WindowState$2;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v11}, Lcom/android/server/wm/WindowState$2;-><init>(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 1566
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    if-eqz v2, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v2

    if-nez v2, :cond_5

    .line 1568
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    invoke-virtual {v2}, Lcom/android/server/wm/AccessibilityController;->onSomeWindowResizedOrMovedLocked()V

    .line 1571
    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mOverscanInsetsChanged:Z

    .line 1572
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    .line 1573
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    .line 1574
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mStableInsetsChanged:Z

    .line 1575
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mOutsetsChanged:Z

    .line 1576
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceResized:Z

    .line 1587
    .end local v4    # "frame":Landroid/graphics/Rect;
    .end local v5    # "overscanInsets":Landroid/graphics/Rect;
    .end local v6    # "contentInsets":Landroid/graphics/Rect;
    .end local v7    # "visibleInsets":Landroid/graphics/Rect;
    .end local v8    # "stableInsets":Landroid/graphics/Rect;
    .end local v9    # "outsets":Landroid/graphics/Rect;
    .end local v10    # "reportDraw":Z
    .end local v11    # "newConfig":Landroid/content/res/Configuration;
    .end local v12    # "configChanged":Z
    .end local v14    # "overrideConfig":Landroid/content/res/Configuration;
    .end local v15    # "stack":Lcom/android/server/wm/TaskStack;
    :goto_4
    return-void

    .line 1527
    .restart local v12    # "configChanged":Z
    .restart local v15    # "stack":Lcom/android/server/wm/TaskStack;
    :cond_6
    sget-object v14, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    goto/16 :goto_0

    .line 1544
    .restart local v4    # "frame":Landroid/graphics/Rect;
    .restart local v5    # "overscanInsets":Landroid/graphics/Rect;
    .restart local v6    # "contentInsets":Landroid/graphics/Rect;
    .restart local v7    # "visibleInsets":Landroid/graphics/Rect;
    .restart local v8    # "stableInsets":Landroid/graphics/Rect;
    .restart local v9    # "outsets":Landroid/graphics/Rect;
    .restart local v14    # "overrideConfig":Landroid/content/res/Configuration;
    :cond_7
    const/4 v10, 0x0

    goto :goto_1

    .line 1545
    .restart local v10    # "reportDraw":Z
    :cond_8
    const/4 v11, 0x0

    goto :goto_2

    .line 1561
    .restart local v11    # "newConfig":Landroid/content/res/Configuration;
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    invoke-interface/range {v3 .. v11}, Landroid/view/IWindow;->resized(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZLandroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1577
    .end local v4    # "frame":Landroid/graphics/Rect;
    .end local v5    # "overscanInsets":Landroid/graphics/Rect;
    .end local v6    # "contentInsets":Landroid/graphics/Rect;
    .end local v7    # "visibleInsets":Landroid/graphics/Rect;
    .end local v8    # "stableInsets":Landroid/graphics/Rect;
    .end local v9    # "outsets":Landroid/graphics/Rect;
    .end local v10    # "reportDraw":Z
    .end local v11    # "newConfig":Landroid/content/res/Configuration;
    .end local v12    # "configChanged":Z
    .end local v14    # "overrideConfig":Landroid/content/res/Configuration;
    .end local v15    # "stack":Lcom/android/server/wm/TaskStack;
    :catch_0
    move-exception v13

    .line 1578
    .local v13, "e":Landroid/os/RemoteException;
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/server/wm/WindowState;->mOrientationChanging:Z

    .line 1579
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayFreezeTime:J

    move-wide/from16 v16, v0

    sub-long v2, v2, v16

    long-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/wm/WindowState;->mLastFreezeDuration:I

    .line 1582
    const-string v2, "WindowState"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Failed to report \'resized\' to the client of "

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v16, ", removing this window."

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPendingRemove:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1585
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->requestTraversalLocked()V

    goto :goto_4
.end method

.method public setAppOpVisibilityLw(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    const/4 v1, 0x1

    .line 1360
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-eq v0, p1, :cond_0

    .line 1361
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    .line 1362
    if-eqz p1, :cond_1

    .line 1369
    invoke-virtual {p0, v1, v1}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    .line 1374
    :cond_0
    :goto_0
    return-void

    .line 1371
    :cond_1
    invoke-virtual {p0, v1, v1}, Lcom/android/server/wm/WindowState;->hideLw(ZZ)Z

    goto :goto_0
.end method

.method setInputChannel(Landroid/view/InputChannel;)V
    .locals 2
    .param p1, "inputChannel"    # Landroid/view/InputChannel;

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    if-eqz v0, :cond_0

    .line 1213
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Window already has an input channel."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1216
    :cond_0
    iput-object p1, p0, Lcom/android/server/wm/WindowState;->mInputChannel:Landroid/view/InputChannel;

    .line 1217
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    iput-object p1, v0, Lcom/android/server/input/InputWindowHandle;->inputChannel:Landroid/view/InputChannel;

    .line 1218
    return-void
.end method

.method setInsetsChanged()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 860
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mOverscanInsetsChanged:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastOverscanInsets:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mOverscanInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    or-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOverscanInsetsChanged:Z

    .line 861
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastContentInsets:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mContentInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    :goto_1
    or-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    .line 862
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastVisibleInsets:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mVisibleInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v1

    :goto_2
    or-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    .line 863
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mStableInsetsChanged:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastStableInsets:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v1

    :goto_3
    or-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mStableInsetsChanged:Z

    .line 864
    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mOutsetsChanged:Z

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mLastOutsets:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/wm/WindowState;->mOutsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    :goto_4
    or-int/2addr v0, v3

    iput-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOutsetsChanged:Z

    .line 865
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOverscanInsetsChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mContentInsetsChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mVisibleInsetsChanged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mOutsetsChanged:Z

    if-eqz v0, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    return v2

    :cond_2
    move v0, v2

    .line 860
    goto :goto_0

    :cond_3
    move v0, v2

    .line 861
    goto :goto_1

    :cond_4
    move v0, v2

    .line 862
    goto :goto_2

    :cond_5
    move v0, v2

    .line 863
    goto :goto_3

    :cond_6
    move v0, v2

    .line 864
    goto :goto_4
.end method

.method public setShowToOwnerOnlyLocked(Z)V
    .locals 0
    .param p1, "showToOwnerOnly"    # Z

    .prologue
    .line 1432
    iput-boolean p1, p0, Lcom/android/server/wm/WindowState;->mShowToOwnerOnly:Z

    .line 1433
    return-void
.end method

.method public showLw(Z)Z
    .locals 1
    .param p1, "doAnimation"    # Z

    .prologue
    .line 1268
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowState;->showLw(ZZ)Z

    move-result v0

    return v0
.end method

.method showLw(ZZ)Z
    .locals 4
    .param p1, "doAnimation"    # Z
    .param p2, "requestAnim"    # Z

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1272
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isHiddenFromUserLocked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1304
    :cond_0
    :goto_0
    return v0

    .line 1275
    :cond_1
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mAppOpVisibility:Z

    if-eqz v2, :cond_0

    .line 1279
    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    if-nez v2, :cond_0

    .line 1283
    :cond_2
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_3

    const-string v0, "WindowState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Policy visibility true: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    :cond_3
    if-eqz p1, :cond_5

    .line 1285
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_4

    const-string v0, "WindowState"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doAnimation: mPolicyVisibility="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mAnimation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v3, v3, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1288
    const/4 p1, 0x0

    .line 1296
    :cond_5
    :goto_1
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    .line 1297
    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibilityAfterAnim:Z

    .line 1298
    if-eqz p1, :cond_6

    .line 1299
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/WindowStateAnimator;->applyAnimationLocked(IZ)Z

    .line 1301
    :cond_6
    if-eqz p2, :cond_7

    .line 1302
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->scheduleAnimationLocked()V

    :cond_7
    move v0, v1

    .line 1304
    goto :goto_0

    .line 1289
    :cond_8
    iget-boolean v0, p0, Lcom/android/server/wm/WindowState;->mPolicyVisibility:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v0, v0, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_5

    .line 1293
    const/4 p1, 0x0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1823
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1824
    .local v0, "title":Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 1825
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, v1, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 1827
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    if-ne v1, v0, :cond_2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWasExiting:Z

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-eq v1, v2, :cond_3

    .line 1828
    :cond_2
    iput-object v0, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    .line 1829
    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    iput-boolean v1, p0, Lcom/android/server/wm/WindowState;->mWasExiting:Z

    .line 1830
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Window{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " u"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mUid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/WindowState;->mLastTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/android/server/wm/WindowState;->mExiting:Z

    if-eqz v1, :cond_4

    const-string v1, " EXITING}"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    .line 1834
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/WindowState;->mStringNameCache:Ljava/lang/String;

    return-object v1

    .line 1830
    :cond_4
    const-string v1, "}"

    goto :goto_0
.end method

.method public unregisterFocusObserver(Landroid/view/IWindowFocusObserver;)V
    .locals 2
    .param p1, "observer"    # Landroid/view/IWindowFocusObserver;

    .prologue
    .line 1599
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 1600
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_0

    .line 1601
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mFocusCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 1603
    :cond_0
    monitor-exit v1

    .line 1604
    return-void

    .line 1603
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
