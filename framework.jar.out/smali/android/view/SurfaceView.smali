.class public Landroid/view/SurfaceView;
.super Landroid/view/View;
.source "SurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/SurfaceView$MyWindow;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final GET_NEW_SURFACE_MSG:I = 0x2

.field static final KEEP_SCREEN_ON_MSG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SurfaceView"

.field static final UPDATE_WINDOW_MSG:I = 0x3


# instance fields
.field final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/SurfaceHolder$Callback;",
            ">;"
        }
    .end annotation
.end field

.field final mConfiguration:Landroid/content/res/Configuration;

.field final mContentInsets:Landroid/graphics/Rect;

.field private final mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field mDrawingStopped:Z

.field mFormat:I

.field private mGlobalListenersAdded:Z

.field final mHandler:Landroid/os/Handler;

.field mHaveFrame:Z

.field mHeight:I

.field mIsCreating:Z

.field mLastHeight:I

.field mLastLockTime:J

.field mLastSurfaceHeight:I

.field mLastSurfaceWidth:I

.field mLastWidth:I

.field final mLayout:Landroid/view/WindowManager$LayoutParams;

.field mLeft:I

.field final mLocation:[I

.field final mNewSurface:Landroid/view/Surface;

.field final mOutsets:Landroid/graphics/Rect;

.field final mOverscanInsets:Landroid/graphics/Rect;

.field mReportDrawNeeded:Z

.field mRequestedFormat:I

.field mRequestedHeight:I

.field mRequestedVisible:Z

.field mRequestedWidth:I

.field mResolutionOverride:Landroid/util/ResolutionOverride;

.field final mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

.field mSession:Landroid/view/IWindowSession;

.field final mStableInsets:Landroid/graphics/Rect;

.field final mSurface:Landroid/view/Surface;

.field mSurfaceCreated:Z

.field final mSurfaceFrame:Landroid/graphics/Rect;

.field private final mSurfaceHolder:Landroid/view/SurfaceHolder;

.field final mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

.field mTop:I

.field private mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

.field mUpdateWindowNeeded:Z

.field mViewVisibility:Z

.field mVisible:Z

.field final mVisibleInsets:Landroid/graphics/Rect;

.field mWidth:I

.field final mWinFrame:Landroid/graphics/Rect;

.field mWindow:Landroid/view/SurfaceView$MyWindow;

.field mWindowType:I

.field mWindowVisibility:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 190
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    .line 95
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 97
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 98
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 99
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 102
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    .line 107
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mOverscanInsets:Landroid/graphics/Rect;

    .line 109
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    .line 110
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mStableInsets:Landroid/graphics/Rect;

    .line 111
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mOutsets:Landroid/graphics/Rect;

    .line 112
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    .line 118
    const/16 v0, 0x3e9

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 120
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 122
    new-instance v0, Landroid/view/SurfaceView$1;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    .line 139
    new-instance v0, Landroid/view/SurfaceView$2;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 147
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 148
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 149
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 150
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 151
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 155
    const/4 v0, 0x4

    iput v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 157
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 158
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 159
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 161
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mVisible:Z

    .line 162
    iput v2, p0, Landroid/view/SurfaceView;->mLeft:I

    .line 163
    iput v2, p0, Landroid/view/SurfaceView;->mTop:I

    .line 164
    iput v2, p0, Landroid/view/SurfaceView;->mWidth:I

    .line 165
    iput v2, p0, Landroid/view/SurfaceView;->mHeight:I

    .line 166
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 167
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 168
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/SurfaceView;->mResolutionOverride:Landroid/util/ResolutionOverride;

    .line 174
    iput v2, p0, Landroid/view/SurfaceView;->mLastWidth:I

    .line 175
    iput v2, p0, Landroid/view/SurfaceView;->mLastHeight:I

    .line 177
    new-instance v0, Landroid/view/SurfaceView$3;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 753
    new-instance v0, Landroid/view/SurfaceView$4;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$4;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 191
    invoke-direct {p0}, Landroid/view/SurfaceView;->init()V

    .line 192
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 195
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    .line 95
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 97
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 98
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 99
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 102
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    .line 107
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mOverscanInsets:Landroid/graphics/Rect;

    .line 109
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    .line 110
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mStableInsets:Landroid/graphics/Rect;

    .line 111
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mOutsets:Landroid/graphics/Rect;

    .line 112
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    .line 118
    const/16 v0, 0x3e9

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 120
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 122
    new-instance v0, Landroid/view/SurfaceView$1;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    .line 139
    new-instance v0, Landroid/view/SurfaceView$2;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 147
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 148
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 149
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 150
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 151
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 155
    const/4 v0, 0x4

    iput v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 157
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 158
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 159
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 161
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mVisible:Z

    .line 162
    iput v2, p0, Landroid/view/SurfaceView;->mLeft:I

    .line 163
    iput v2, p0, Landroid/view/SurfaceView;->mTop:I

    .line 164
    iput v2, p0, Landroid/view/SurfaceView;->mWidth:I

    .line 165
    iput v2, p0, Landroid/view/SurfaceView;->mHeight:I

    .line 166
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 167
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 168
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/SurfaceView;->mResolutionOverride:Landroid/util/ResolutionOverride;

    .line 174
    iput v2, p0, Landroid/view/SurfaceView;->mLastWidth:I

    .line 175
    iput v2, p0, Landroid/view/SurfaceView;->mLastHeight:I

    .line 177
    new-instance v0, Landroid/view/SurfaceView$3;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 753
    new-instance v0, Landroid/view/SurfaceView$4;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$4;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 196
    invoke-direct {p0}, Landroid/view/SurfaceView;->init()V

    .line 197
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 200
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    .line 95
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 97
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 98
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 99
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 102
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    .line 107
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mOverscanInsets:Landroid/graphics/Rect;

    .line 109
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    .line 110
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mStableInsets:Landroid/graphics/Rect;

    .line 111
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mOutsets:Landroid/graphics/Rect;

    .line 112
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    .line 118
    const/16 v0, 0x3e9

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 120
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 122
    new-instance v0, Landroid/view/SurfaceView$1;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    .line 139
    new-instance v0, Landroid/view/SurfaceView$2;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 147
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 148
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 149
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 150
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 151
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 155
    const/4 v0, 0x4

    iput v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 157
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 158
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 159
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 161
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mVisible:Z

    .line 162
    iput v2, p0, Landroid/view/SurfaceView;->mLeft:I

    .line 163
    iput v2, p0, Landroid/view/SurfaceView;->mTop:I

    .line 164
    iput v2, p0, Landroid/view/SurfaceView;->mWidth:I

    .line 165
    iput v2, p0, Landroid/view/SurfaceView;->mHeight:I

    .line 166
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 167
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 168
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/SurfaceView;->mResolutionOverride:Landroid/util/ResolutionOverride;

    .line 174
    iput v2, p0, Landroid/view/SurfaceView;->mLastWidth:I

    .line 175
    iput v2, p0, Landroid/view/SurfaceView;->mLastHeight:I

    .line 177
    new-instance v0, Landroid/view/SurfaceView$3;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 753
    new-instance v0, Landroid/view/SurfaceView$4;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$4;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 201
    invoke-direct {p0}, Landroid/view/SurfaceView;->init()V

    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 205
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    .line 95
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    .line 97
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 98
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    .line 99
    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0}, Landroid/view/Surface;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    .line 100
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 102
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    .line 106
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    .line 107
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    .line 108
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mOverscanInsets:Landroid/graphics/Rect;

    .line 109
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    .line 110
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mStableInsets:Landroid/graphics/Rect;

    .line 111
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mOutsets:Landroid/graphics/Rect;

    .line 112
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    .line 118
    const/16 v0, 0x3e9

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 120
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 122
    new-instance v0, Landroid/view/SurfaceView$1;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$1;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mHandler:Landroid/os/Handler;

    .line 139
    new-instance v0, Landroid/view/SurfaceView$2;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$2;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    .line 147
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 148
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 149
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 150
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    .line 151
    iput v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    .line 155
    const/4 v0, 0x4

    iput v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    .line 157
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 158
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 159
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/SurfaceView;->mLastLockTime:J

    .line 161
    iput-boolean v3, p0, Landroid/view/SurfaceView;->mVisible:Z

    .line 162
    iput v2, p0, Landroid/view/SurfaceView;->mLeft:I

    .line 163
    iput v2, p0, Landroid/view/SurfaceView;->mTop:I

    .line 164
    iput v2, p0, Landroid/view/SurfaceView;->mWidth:I

    .line 165
    iput v2, p0, Landroid/view/SurfaceView;->mHeight:I

    .line 166
    iput v2, p0, Landroid/view/SurfaceView;->mFormat:I

    .line 167
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    .line 168
    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    iput v2, p0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/SurfaceView;->mResolutionOverride:Landroid/util/ResolutionOverride;

    .line 174
    iput v2, p0, Landroid/view/SurfaceView;->mLastWidth:I

    .line 175
    iput v2, p0, Landroid/view/SurfaceView;->mLastHeight:I

    .line 177
    new-instance v0, Landroid/view/SurfaceView$3;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$3;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 753
    new-instance v0, Landroid/view/SurfaceView$4;

    invoke-direct {v0, p0}, Landroid/view/SurfaceView$4;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 206
    invoke-direct {p0}, Landroid/view/SurfaceView;->init()V

    .line 207
    return-void
.end method

.method private getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;
    .locals 3

    .prologue
    .line 655
    iget-object v2, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v2

    .line 656
    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v0, v1, [Landroid/view/SurfaceHolder$Callback;

    .line 657
    .local v0, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    iget-object v1, p0, Landroid/view/SurfaceView;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 658
    monitor-exit v2

    .line 659
    return-object v0

    .line 658
    .end local v0    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private init()V
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setWillNotDraw(Z)V

    .line 211
    new-instance v0, Landroid/util/ResolutionOverride;

    invoke-direct {v0, p0}, Landroid/util/ResolutionOverride;-><init>(Landroid/view/SurfaceView;)V

    iput-object v0, p0, Landroid/view/SurfaceView;->mResolutionOverride:Landroid/util/ResolutionOverride;

    .line 212
    iget-object v0, p0, Landroid/view/SurfaceView;->mResolutionOverride:Landroid/util/ResolutionOverride;

    invoke-virtual {v0, p0}, Landroid/util/ResolutionOverride;->setFixedSize(Landroid/view/SurfaceView;)V

    .line 213
    return-void
.end method


# virtual methods
.method public captureSurface()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->captureSurface()Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 364
    iget v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 366
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    .line 368
    const/4 v0, 0x0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 371
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 372
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 311
    iget-object v0, p0, Landroid/view/SurfaceView;->mResolutionOverride:Landroid/util/ResolutionOverride;

    invoke-virtual {v0, p0, p1}, Landroid/util/ResolutionOverride;->handleTouch(Landroid/view/SurfaceView;Landroid/view/MotionEvent;)V

    .line 312
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 352
    iget v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    .line 354
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_0

    .line 356
    const/4 v0, 0x0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 359
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 360
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 9
    .param p1, "region"    # Landroid/graphics/Region;

    .prologue
    .line 325
    iget v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    const/16 v3, 0x3e8

    if-ne v0, v3, :cond_1

    .line 326
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v7

    .line 347
    :cond_0
    :goto_0
    return v7

    .line 329
    :cond_1
    const/4 v7, 0x1

    .line 330
    .local v7, "opaque":Z
    iget v0, p0, Landroid/view/SurfaceView;->mPrivateFlags:I

    and-int/lit16 v0, v0, 0x80

    if-nez v0, :cond_3

    .line 332
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v7

    .line 344
    :cond_2
    :goto_1
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedFormat:I

    invoke-static {v0}, Landroid/graphics/PixelFormat;->formatHasAlpha(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    const/4 v7, 0x0

    goto :goto_0

    .line 333
    :cond_3
    if-eqz p1, :cond_2

    .line 334
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v8

    .line 335
    .local v8, "w":I
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v6

    .line 336
    .local v6, "h":I
    if-lez v8, :cond_2

    if-lez v6, :cond_2

    .line 337
    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    .line 339
    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v3, 0x0

    aget v1, v0, v3

    .line 340
    .local v1, "l":I
    iget-object v0, p0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v3, 0x1

    aget v2, v0, v3

    .line 341
    .local v2, "t":I
    add-int v3, v1, v8

    add-int v4, v2, v6

    sget-object v5, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    goto :goto_1
.end method

.method public getHolder()Landroid/view/SurfaceHolder;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method handleGetNewSurface()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 663
    invoke-virtual {p0, v0, v0}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 664
    return-void
.end method

.method public isFixedSize()Z
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 674
    iget v0, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 227
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 228
    iget-object v1, p0, Landroid/view/SurfaceView;->mParent:Landroid/view/ViewParent;

    invoke-interface {v1, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 229
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWindowSession()Landroid/view/IWindowSession;

    move-result-object v1

    iput-object v1, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    .line 230
    iget-object v1, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    iput-object v3, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 231
    iget-object v1, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const-string v3, "SurfaceView"

    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 232
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 234
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    if-nez v1, :cond_0

    .line 235
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 236
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 237
    iget-object v1, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 238
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    .line 240
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_0
    return-void

    .line 232
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 270
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    if-eqz v1, :cond_0

    .line 271
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 272
    .local v0, "observer":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/view/SurfaceView;->mScrollChangedListener:Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 273
    iget-object v1, p0, Landroid/view/SurfaceView;->mDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 274
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mGlobalListenersAdded:Z

    .line 277
    .end local v0    # "observer":Landroid/view/ViewTreeObserver;
    :cond_0
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 278
    invoke-virtual {p0, v2, v2}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 279
    iput-boolean v2, p0, Landroid/view/SurfaceView;->mHaveFrame:Z

    .line 280
    iget-object v1, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-eqz v1, :cond_1

    .line 282
    :try_start_0
    iget-object v1, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    iget-object v2, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v1, v2}, Landroid/view/IWindowSession;->remove(Landroid/view/IWindow;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    :goto_0
    iput-object v3, p0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    .line 288
    :cond_1
    iput-object v3, p0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    .line 289
    iget-object v1, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iput-object v3, v1, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 291
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 292
    return-void

    .line 283
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 4
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v3, 0x0

    .line 296
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    if-ltz v2, :cond_0

    iget v2, p0, Landroid/view/SurfaceView;->mRequestedWidth:I

    invoke-static {v2, p1, v3}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    move-result v1

    .line 299
    .local v1, "width":I
    :goto_0
    iget v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    if-ltz v2, :cond_1

    iget v2, p0, Landroid/view/SurfaceView;->mRequestedHeight:I

    invoke-static {v2, p2, v3}, Landroid/view/SurfaceView;->resolveSizeAndState(III)I

    move-result v0

    .line 302
    .local v0, "height":I
    :goto_1
    invoke-virtual {p0, v1, v0}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    .line 303
    return-void

    .line 296
    .end local v0    # "height":I
    .end local v1    # "width":I
    :cond_0
    invoke-static {v3, p1}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v1

    goto :goto_0

    .line 299
    .restart local v1    # "width":I
    :cond_1
    invoke-static {v3, p2}, Landroid/view/SurfaceView;->getDefaultSize(II)I

    move-result v0

    goto :goto_1
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 244
    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    .line 245
    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    .line 246
    iget-boolean v0, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v0, :cond_1

    :goto_1
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 247
    invoke-virtual {p0, v2, v2}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 248
    return-void

    :cond_0
    move v0, v2

    .line 245
    goto :goto_0

    :cond_1
    move v1, v2

    .line 246
    goto :goto_1
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    const/4 v1, 0x0

    .line 318
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setFrame(IIII)Z

    move-result v0

    .line 319
    .local v0, "result":Z
    invoke-virtual {p0, v1, v1}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 320
    return v0
.end method

.method public setSecure(Z)V
    .locals 2
    .param p1, "isSecure"    # Z

    .prologue
    .line 428
    if-eqz p1, :cond_0

    .line 429
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 433
    :goto_0
    return-void

    .line 431
    :cond_0
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v1, v1, -0x2001

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method public setVisibility(I)V
    .locals 4
    .param p1, "visibility"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 252
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 253
    if-nez p1, :cond_1

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    .line 254
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mWindowVisibility:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/view/SurfaceView;->mViewVisibility:Z

    if-eqz v1, :cond_2

    move v0, v2

    .line 255
    .local v0, "newRequestedVisible":Z
    :goto_1
    iget-boolean v1, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eq v0, v1, :cond_0

    .line 262
    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestLayout()V

    .line 264
    :cond_0
    iput-boolean v0, p0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    .line 265
    invoke-virtual {p0, v3, v3}, Landroid/view/SurfaceView;->updateWindow(ZZ)V

    .line 266
    return-void

    .end local v0    # "newRequestedVisible":Z
    :cond_1
    move v1, v3

    .line 253
    goto :goto_0

    :cond_2
    move v0, v3

    .line 254
    goto :goto_1
.end method

.method public setWindowType(I)V
    .locals 0
    .param p1, "type"    # I

    .prologue
    .line 441
    iput p1, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 442
    return-void
.end method

.method public setZOrderMediaOverlay(Z)V
    .locals 1
    .param p1, "isMediaOverlay"    # Z

    .prologue
    .line 386
    if-eqz p1, :cond_0

    const/16 v0, 0x3ec

    :goto_0
    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 389
    return-void

    .line 386
    :cond_0
    const/16 v0, 0x3e9

    goto :goto_0
.end method

.method public setZOrderOnTop(Z)V
    .locals 3
    .param p1, "onTop"    # Z

    .prologue
    .line 405
    if-eqz p1, :cond_0

    .line 406
    const/16 v0, 0x3e8

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 408
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 413
    :goto_0
    return-void

    .line 410
    :cond_0
    const/16 v0, 0x3e9

    iput v0, p0, Landroid/view/SurfaceView;->mWindowType:I

    .line 411
    iget-object v0, p0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method protected updateWindow(ZZ)V
    .locals 42
    .param p1, "force"    # Z
    .param p2, "redrawNeeded"    # Z

    .prologue
    .line 446
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/view/SurfaceView;->mHaveFrame:Z

    if-nez v3, :cond_1

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 449
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v39

    .line 450
    .local v39, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v39, :cond_2

    .line 451
    move-object/from16 v0, v39

    iget-object v3, v0, Landroid/view/ViewRootImpl;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    .line 454
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v3, :cond_3

    .line 455
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    invoke-virtual {v3, v4}, Landroid/view/Surface;->setCompatibilityTranslator(Landroid/content/res/CompatibilityInfo$Translator;)V

    .line 458
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedWidth:I

    move/from16 v31, v0

    .line 459
    .local v31, "myWidth":I
    if-gtz v31, :cond_4

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v31

    .line 460
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/SurfaceView;->mRequestedHeight:I

    move/from16 v30, v0

    .line 461
    .local v30, "myHeight":I
    if-gtz v30, :cond_5

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v30

    .line 465
    :cond_5
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mLastWidth:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v4

    if-ne v3, v4, :cond_6

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mLastHeight:I

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v4

    if-eq v3, v4, :cond_10

    :cond_6
    const/16 v25, 0x1

    .line 467
    .local v25, "forceSizeChanged":Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLocation:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->getLocationInWindow([I)V

    .line 468
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-nez v3, :cond_11

    const/16 v23, 0x1

    .line 469
    .local v23, "creating":Z
    :goto_2
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mFormat:I

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    if-eq v3, v4, :cond_12

    const/16 v26, 0x1

    .line 470
    .local v26, "formatChanged":Z
    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mWidth:I

    move/from16 v0, v31

    if-ne v3, v0, :cond_7

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mHeight:I

    move/from16 v0, v30

    if-ne v3, v0, :cond_7

    if-eqz v25, :cond_13

    :cond_7
    const/16 v35, 0x1

    .line 471
    .local v35, "sizeChanged":Z
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/view/SurfaceView;->mVisible:Z

    move-object/from16 v0, p0

    iget-boolean v4, v0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    if-eq v3, v4, :cond_14

    const/16 v41, 0x1

    .line 472
    .local v41, "visibleChanged":Z
    :goto_5
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v3, v4, :cond_8

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v3, v4, :cond_15

    :cond_8
    const/16 v28, 0x1

    .line 475
    .local v28, "layoutSizeChanged":Z
    :goto_6
    if-nez p1, :cond_9

    if-nez v23, :cond_9

    if-nez v26, :cond_9

    if-nez v35, :cond_9

    if-nez v41, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mLeft:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    if-ne v3, v4, :cond_9

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mTop:I

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    if-ne v3, v4, :cond_9

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/view/SurfaceView;->mUpdateWindowNeeded:Z

    if-nez v3, :cond_9

    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    if-nez v3, :cond_9

    if-nez p2, :cond_9

    if-eqz v28, :cond_0

    .line 486
    :cond_9
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mRequestedVisible:Z

    move/from16 v40, v0

    move/from16 v0, v40

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/SurfaceView;->mVisible:Z

    .line 487
    .local v40, "visible":Z
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/SurfaceView;->mLeft:I

    .line 488
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLocation:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/SurfaceView;->mTop:I

    .line 489
    move/from16 v0, v31

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mWidth:I

    .line 490
    move/from16 v0, v30

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mHeight:I

    .line 491
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/SurfaceView;->mFormat:I

    .line 493
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/SurfaceView;->mLastWidth:I

    .line 494
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Landroid/view/SurfaceView;->mLastHeight:I

    .line 499
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mLeft:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 500
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mTop:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 501
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 502
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v4

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 503
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-eqz v3, :cond_a

    .line 504
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/content/res/CompatibilityInfo$Translator;->translateLayoutParamsInAppWindowToScreen(Landroid/view/WindowManager$LayoutParams;)V

    .line 507
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mRequestedFormat:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 508
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v4, v4, 0x4218

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 515
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/CompatibilityInfo;->supportsScreen()Z

    move-result v3

    if-nez v3, :cond_b

    .line 516
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit16 v4, v4, 0x80

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 519
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v4, v4, 0x40

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 521
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    if-nez v3, :cond_c

    .line 522
    invoke-virtual/range {p0 .. p0}, Landroid/view/SurfaceView;->getDisplay()Landroid/view/Display;

    move-result-object v24

    .line 523
    .local v24, "display":Landroid/view/Display;
    new-instance v3, Landroid/view/SurfaceView$MyWindow;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/view/SurfaceView$MyWindow;-><init>(Landroid/view/SurfaceView;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    .line 524
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mWindowType:I

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 525
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    const v4, 0x800033

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 526
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    iget v5, v5, Landroid/view/SurfaceView$MyWindow;->mSeq:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Landroid/view/SurfaceView;->mVisible:Z

    if-eqz v7, :cond_16

    const/4 v7, 0x0

    :goto_7
    invoke-virtual/range {v24 .. v24}, Landroid/view/Display;->getDisplayId()I

    move-result v8

    move-object/from16 v0, p0

    iget-object v9, v0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/view/SurfaceView;->mStableInsets:Landroid/graphics/Rect;

    invoke-interface/range {v3 .. v10}, Landroid/view/IWindowSession;->addToDisplayWithoutInputChannel(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IILandroid/graphics/Rect;Landroid/graphics/Rect;)I

    .line 536
    .end local v24    # "display":Landroid/view/Display;
    :cond_c
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/SurfaceView;->mUpdateWindowNeeded:Z

    .line 539
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    move/from16 v34, v0

    .line 540
    .local v34, "reportDrawNeeded":Z
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/SurfaceView;->mReportDrawNeeded:Z

    .line 541
    if-nez v40, :cond_17

    const/4 v3, 0x1

    :goto_8
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/SurfaceView;->mDrawingStopped:Z

    .line 545
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    iget v5, v5, Landroid/view/SurfaceView$MyWindow;->mSeq:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/view/SurfaceView;->mLayout:Landroid/view/WindowManager$LayoutParams;

    move-object/from16 v0, p0

    iget v7, v0, Landroid/view/SurfaceView;->mWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Landroid/view/SurfaceView;->mHeight:I

    if-eqz v40, :cond_18

    const/4 v9, 0x0

    :goto_9
    const/4 v10, 0x2

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/view/SurfaceView;->mOverscanInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/view/SurfaceView;->mContentInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/view/SurfaceView;->mVisibleInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/view/SurfaceView;->mStableInsets:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mOutsets:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    move-object/from16 v18, v0

    invoke-interface/range {v3 .. v18}, Landroid/view/IWindowSession;->relayout(Landroid/view/IWindow;ILandroid/view/WindowManager$LayoutParams;IIIILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;Landroid/view/Surface;)I

    move-result v33

    .line 552
    .local v33, "relayoutResult":I
    and-int/lit8 v3, v33, 0x2

    if-eqz v3, :cond_d

    .line 553
    const/16 v34, 0x1

    .line 559
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    const/4 v4, 0x0

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 560
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    const/4 v4, 0x0

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 561
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    if-nez v3, :cond_19

    .line 562
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 563
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 570
    :goto_a
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->right:I

    move/from16 v38, v0

    .line 571
    .local v38, "surfaceWidth":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    move/from16 v37, v0

    .line 572
    .local v37, "surfaceHeight":I
    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    move/from16 v0, v38

    if-ne v3, v0, :cond_e

    move-object/from16 v0, p0

    iget v3, v0, Landroid/view/SurfaceView;->mLastSurfaceHeight:I

    move/from16 v0, v37

    if-eq v3, v0, :cond_1a

    :cond_e
    const/16 v32, 0x1

    .line 574
    .local v32, "realSizeChanged":Z
    :goto_b
    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mLastSurfaceWidth:I

    .line 575
    move/from16 v0, v37

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/SurfaceView;->mLastSurfaceHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 577
    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 581
    or-int v3, v23, v34

    or-int p2, p2, v3

    .line 583
    const/16 v22, 0x0

    .line 585
    .local v22, "callbacks":[Landroid/view/SurfaceHolder$Callback;
    and-int/lit8 v3, v33, 0x4

    if-eqz v3, :cond_1b

    const/16 v36, 0x1

    .line 587
    .local v36, "surfaceChanged":Z
    :goto_c
    :try_start_3
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-eqz v3, :cond_1c

    if-nez v36, :cond_f

    if-nez v40, :cond_1c

    if-eqz v41, :cond_1c

    .line 588
    :cond_f
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 589
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 591
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v22

    .line 592
    move-object/from16 v20, v22

    .local v20, "arr$":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v29, v0

    .local v29, "len$":I
    const/16 v27, 0x0

    .local v27, "i$":I
    :goto_d
    move/from16 v0, v27

    move/from16 v1, v29

    if-ge v0, v1, :cond_1c

    aget-object v21, v20, v27

    .line 593
    .local v21, "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 592
    add-int/lit8 v27, v27, 0x1

    goto :goto_d

    .line 465
    .end local v20    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    .end local v21    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v22    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .end local v23    # "creating":Z
    .end local v25    # "forceSizeChanged":Z
    .end local v26    # "formatChanged":Z
    .end local v27    # "i$":I
    .end local v28    # "layoutSizeChanged":Z
    .end local v29    # "len$":I
    .end local v32    # "realSizeChanged":Z
    .end local v33    # "relayoutResult":I
    .end local v34    # "reportDrawNeeded":Z
    .end local v35    # "sizeChanged":Z
    .end local v36    # "surfaceChanged":Z
    .end local v37    # "surfaceHeight":I
    .end local v38    # "surfaceWidth":I
    .end local v40    # "visible":Z
    .end local v41    # "visibleChanged":Z
    :cond_10
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 468
    .restart local v25    # "forceSizeChanged":Z
    :cond_11
    const/16 v23, 0x0

    goto/16 :goto_2

    .line 469
    .restart local v23    # "creating":Z
    :cond_12
    const/16 v26, 0x0

    goto/16 :goto_3

    .line 470
    .restart local v26    # "formatChanged":Z
    :cond_13
    const/16 v35, 0x0

    goto/16 :goto_4

    .line 471
    .restart local v35    # "sizeChanged":Z
    :cond_14
    const/16 v41, 0x0

    goto/16 :goto_5

    .line 472
    .restart local v41    # "visibleChanged":Z
    :cond_15
    const/16 v28, 0x0

    goto/16 :goto_6

    .line 526
    .restart local v24    # "display":Landroid/view/Display;
    .restart local v28    # "layoutSizeChanged":Z
    .restart local v40    # "visible":Z
    :cond_16
    const/16 v7, 0x8

    goto/16 :goto_7

    .line 541
    .end local v24    # "display":Landroid/view/Display;
    .restart local v34    # "reportDrawNeeded":Z
    :cond_17
    const/4 v3, 0x0

    goto/16 :goto_8

    .line 545
    :cond_18
    const/16 v9, 0x8

    goto/16 :goto_9

    .line 565
    .restart local v33    # "relayoutResult":I
    :cond_19
    :try_start_4
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mTranslator:Landroid/content/res/CompatibilityInfo$Translator;

    iget v0, v3, Landroid/content/res/CompatibilityInfo$Translator;->applicationInvertedScale:F

    move/from16 v19, v0

    .line 566
    .local v19, "appInvertedScale":F
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v19

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 567
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceFrame:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mWinFrame:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    mul-float v4, v4, v19

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_a

    .line 577
    .end local v19    # "appInvertedScale":F
    .end local v33    # "relayoutResult":I
    .end local v34    # "reportDrawNeeded":Z
    :catchall_0
    move-exception v3

    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSurfaceLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v3
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 644
    .end local v40    # "visible":Z
    :catch_0
    move-exception v3

    goto/16 :goto_0

    .line 572
    .restart local v33    # "relayoutResult":I
    .restart local v34    # "reportDrawNeeded":Z
    .restart local v37    # "surfaceHeight":I
    .restart local v38    # "surfaceWidth":I
    .restart local v40    # "visible":Z
    :cond_1a
    const/16 v32, 0x0

    goto/16 :goto_b

    .line 585
    .restart local v22    # "callbacks":[Landroid/view/SurfaceHolder$Callback;
    .restart local v32    # "realSizeChanged":Z
    :cond_1b
    const/16 v36, 0x0

    goto/16 :goto_c

    .line 598
    .restart local v36    # "surfaceChanged":Z
    :cond_1c
    :try_start_6
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mNewSurface:Landroid/view/Surface;

    invoke-virtual {v3, v4}, Landroid/view/Surface;->transferFrom(Landroid/view/Surface;)V

    .line 600
    if-eqz v40, :cond_25

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurface:Landroid/view/Surface;

    invoke-virtual {v3}, Landroid/view/Surface;->isValid()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 601
    move-object/from16 v0, p0

    iget-boolean v3, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    if-nez v3, :cond_1f

    if-nez v36, :cond_1d

    if-eqz v41, :cond_1f

    .line 602
    :cond_1d
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/SurfaceView;->mSurfaceCreated:Z

    .line 603
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 605
    if-nez v22, :cond_1e

    .line 606
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v22

    .line 608
    :cond_1e
    move-object/from16 v20, v22

    .restart local v20    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v29, v0

    .restart local v29    # "len$":I
    const/16 v27, 0x0

    .restart local v27    # "i$":I
    :goto_e
    move/from16 v0, v27

    move/from16 v1, v29

    if-ge v0, v1, :cond_1f

    aget-object v21, v20, v27

    .line 609
    .restart local v21    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 608
    add-int/lit8 v27, v27, 0x1

    goto :goto_e

    .line 612
    .end local v20    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    .end local v21    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v27    # "i$":I
    .end local v29    # "len$":I
    :cond_1f
    if-nez v23, :cond_20

    if-nez v26, :cond_20

    if-nez v35, :cond_20

    if-nez v41, :cond_20

    if-eqz v32, :cond_22

    .line 616
    :cond_20
    if-nez v22, :cond_21

    .line 617
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v22

    .line 619
    :cond_21
    move-object/from16 v20, v22

    .restart local v20    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v29, v0

    .restart local v29    # "len$":I
    const/16 v27, 0x0

    .restart local v27    # "i$":I
    :goto_f
    move/from16 v0, v27

    move/from16 v1, v29

    if-ge v0, v1, :cond_22

    aget-object v21, v20, v27

    .line 620
    .restart local v21    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v0, p0

    iget v4, v0, Landroid/view/SurfaceView;->mFormat:I

    move-object/from16 v0, v21

    move/from16 v1, v31

    move/from16 v2, v30

    invoke-interface {v0, v3, v4, v1, v2}, Landroid/view/SurfaceHolder$Callback;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 619
    add-int/lit8 v27, v27, 0x1

    goto :goto_f

    .line 623
    .end local v20    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    .end local v21    # "c":Landroid/view/SurfaceHolder$Callback;
    .end local v27    # "i$":I
    .end local v29    # "len$":I
    :cond_22
    if-eqz p2, :cond_25

    .line 625
    if-nez v22, :cond_23

    .line 626
    invoke-direct/range {p0 .. p0}, Landroid/view/SurfaceView;->getSurfaceCallbacks()[Landroid/view/SurfaceHolder$Callback;

    move-result-object v22

    .line 628
    :cond_23
    move-object/from16 v20, v22

    .restart local v20    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v29, v0

    .restart local v29    # "len$":I
    const/16 v27, 0x0

    .restart local v27    # "i$":I
    :goto_10
    move/from16 v0, v27

    move/from16 v1, v29

    if-ge v0, v1, :cond_25

    aget-object v21, v20, v27

    .line 629
    .restart local v21    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, v21

    instance-of v3, v0, Landroid/view/SurfaceHolder$Callback2;

    if-eqz v3, :cond_24

    .line 630
    check-cast v21, Landroid/view/SurfaceHolder$Callback2;

    .end local v21    # "c":Landroid/view/SurfaceHolder$Callback;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    move-object/from16 v0, v21

    invoke-interface {v0, v3}, Landroid/view/SurfaceHolder$Callback2;->surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 628
    :cond_24
    add-int/lit8 v27, v27, 0x1

    goto :goto_10

    .line 637
    .end local v20    # "arr$":[Landroid/view/SurfaceHolder$Callback;
    .end local v27    # "i$":I
    .end local v29    # "len$":I
    :cond_25
    const/4 v3, 0x0

    :try_start_7
    move-object/from16 v0, p0

    iput-boolean v3, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 638
    if-eqz p2, :cond_26

    .line 640
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v3, v4}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    .line 642
    :cond_26
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v3, v4}, Landroid/view/IWindowSession;->performDeferredDestroy(Landroid/view/IWindow;)V

    goto/16 :goto_0

    .line 637
    :catchall_1
    move-exception v3

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Landroid/view/SurfaceView;->mIsCreating:Z

    .line 638
    if-eqz p2, :cond_27

    .line 640
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->finishDrawing(Landroid/view/IWindow;)V

    .line 642
    :cond_27
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/view/SurfaceView;->mSession:Landroid/view/IWindowSession;

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/view/SurfaceView;->mWindow:Landroid/view/SurfaceView$MyWindow;

    invoke-interface {v4, v5}, Landroid/view/IWindowSession;->performDeferredDestroy(Landroid/view/IWindow;)V

    throw v3
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
.end method
