.class public Lcom/android/server/policy/global/GlobalActionHostView;
.super Landroid/widget/FrameLayout;
.source "GlobalActionHostView.java"

# interfaces
.implements Lcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;
.implements Lcom/android/server/policy/global/GlobalActionHandlerView$HostViewCallback;


# static fields
.field private static final DEBUG:Z = true

.field public static final HIDE_TIME:J = 0x1f4L

.field public static final REBOOT_TIME:J = 0x12cL

.field public static final SHOW_TIME:J = 0x1f4L

.field public static final SHUTDOWN_TIME:J = 0x190L

.field private static TAG:Ljava/lang/String; = null

.field public static final TIME_REBOOT_CANCEL:J = 0x320L


# instance fields
.field private isRebootOrShutdown:Z

.field private isRebootPending:Z

.field private mAnimatorObjectCallback:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

.field private mCancelView:Lcom/android/server/policy/global/CancelButton;

.field private mClick:Landroid/view/View$OnClickListener;

.field private mColorP0:I

.field private mColorP1:I

.field private mColorP2:I

.field private mColorP3:I

.field private mColorP4:I

.field private mColorP5:I

.field private mConverAlpha:I

.field private mConverColor:I

.field private mCoverPaint:Landroid/graphics/Paint;

.field private mDecorView:Landroid/view/View;

.field private mFillPaint:Landroid/graphics/Paint;

.field private mHandlerView:Lcom/android/server/policy/global/GlobalActionHandlerView;

.field private mInitConverAlpha:I

.field private mLocked:Z

.field protected mMediatorCallback:Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

.field private mMsg:Landroid/widget/TextView;

.field private mP0:F

.field private mP1:F

.field private mP2:F

.field private mP3:F

.field private mP4:F

.field private mP5:F

.field private mPositionFactor:F

.field private mRebootView:Lcom/android/server/policy/global/RebootButton;

.field private mRect:Landroid/graphics/Rect;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSwipeHelper:Lcom/android/server/policy/global/GlobalActionSwipeHelper;

.field private mX0:F

.field private mX1:F

.field private mY0:F

.field private mY1:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "GlobalAction"

    sput-object v0, Lcom/android/server/policy/global/GlobalActionHostView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v5, 0x64

    const/high16 v4, 0x3f000000    # 0.5f

    const/16 v3, 0xff

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mPositionFactor:F

    iput v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mConverColor:I

    iput v3, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mInitConverAlpha:I

    iput v3, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mConverAlpha:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRect:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mFillPaint:Landroid/graphics/Paint;

    iput v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mScreenHeight:I

    iput v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mScreenWidth:I

    iput-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->isRebootPending:Z

    iput-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->isRebootOrShutdown:Z

    iput v2, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mX0:F

    iput v2, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mY0:F

    iput v2, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mX1:F

    iput v2, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mY1:F

    invoke-static {v3, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mColorP0:I

    const/16 v0, 0xe1

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mColorP1:I

    invoke-static {v5, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mColorP2:I

    const/16 v0, 0x50

    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mColorP3:I

    invoke-static {v5, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mColorP4:I

    invoke-static {v3, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mColorP5:I

    iput v2, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mP0:F

    const v0, 0x3dcccccd    # 0.1f

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mP1:F

    iput v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mP2:F

    const v0, 0x3f19999a    # 0.6f

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mP3:F

    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mP4:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mP5:F

    new-instance v0, Lcom/android/server/policy/global/GlobalActionHostView$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/global/GlobalActionHostView$1;-><init>(Lcom/android/server/policy/global/GlobalActionHostView;)V

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mClick:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "globalActionDecorView"    # Landroid/view/View;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/global/GlobalActionHostView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mDecorView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/global/GlobalActionHostView;)Lcom/android/server/policy/global/RebootButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/global/GlobalActionHostView;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/policy/global/GlobalActionHostView;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/global/GlobalActionHostView;
    .param p1, "x1"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/global/GlobalActionHostView;->reboot(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/policy/global/GlobalActionHostView;)Lcom/android/server/policy/global/CancelButton;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/global/GlobalActionHostView;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/policy/global/GlobalActionHostView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/global/GlobalActionHostView;

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->cancel()V

    return-void
.end method

.method private cancel()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    invoke-virtual {v0}, Lcom/android/server/policy/global/RebootButton;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    invoke-virtual {v0}, Lcom/android/server/policy/global/CancelButton;->cancel()V

    :cond_1
    return-void
.end method

.method private drawConver(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawGradient(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v9, v9, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v8, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mFillPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mX0:F

    iget v2, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mY0:F

    iget v3, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mX1:F

    iget v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mY1:F

    const/4 v5, 0x6

    new-array v5, v5, [I

    iget v6, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mColorP0:I

    aput v6, v5, v9

    iget v6, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mColorP1:I

    aput v6, v5, v10

    iget v6, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mColorP2:I

    aput v6, v5, v11

    iget v6, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mColorP3:I

    aput v6, v5, v12

    iget v6, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mColorP4:I

    aput v6, v5, v13

    const/4 v6, 0x5

    iget v7, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mColorP5:I

    aput v7, v5, v6

    const/4 v6, 0x6

    new-array v6, v6, [F

    iget v7, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mP0:F

    aput v7, v6, v9

    iget v7, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mP1:F

    aput v7, v6, v10

    iget v7, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mP2:F

    aput v7, v6, v11

    iget v7, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mP3:F

    aput v7, v6, v12

    iget v7, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mP4:F

    aput v7, v6, v13

    const/4 v7, 0x5

    iget v9, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mP5:F

    aput v9, v6, v7

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method private getDix(I)I
    .locals 1
    .param p1, "dimen"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getHandlerViewBottom()I
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mScreenHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mPositionFactor:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private hideMsg()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mMsg:Landroid/widget/TextView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mMsg:Landroid/widget/TextView;

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "hideAnim":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x0
    .end array-data
.end method

.method private initCoverPen()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCoverPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCoverPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCoverPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mConverColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCoverPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCoverPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCoverPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method private initShader()V
    .locals 2

    .prologue
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mFillPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mFillPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mFillPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mScreenHeight:I

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mScreenWidth:I

    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->refreshScreenParams()V

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->density:F

    .local v0, "densityScale":F
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    int-to-float v1, v2

    .local v1, "pagingTouchSlop":F
    new-instance v2, Lcom/android/server/policy/global/GlobalActionSwipeHelper;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0, v0, v1}, Lcom/android/server/policy/global/GlobalActionSwipeHelper;-><init>(ILcom/android/server/policy/global/GlobalActionSwipeHelper$Callback;FF)V

    iput-object v2, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mSwipeHelper:Lcom/android/server/policy/global/GlobalActionSwipeHelper;

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106014a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mConverColor:I

    iget v2, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mConverColor:I

    shr-int/lit8 v2, v2, 0x18

    iput v2, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mConverAlpha:I

    iput v2, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mInitConverAlpha:I

    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->initShader()V

    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->initCoverPen()V

    return-void
.end method

.method private reboot(Landroid/animation/Animator$AnimatorListener;)V
    .locals 6
    .param p1, "animationListener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/policy/global/GlobalActionHostView;->isRebootPending:Z

    const-string v1, "converAlpha"

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mConverAlpha:I

    aput v4, v2, v3

    const/16 v3, 0xff

    aput v3, v2, v5

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "objectAni":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x320

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const v2, 0x3fe66666    # 1.8f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mHandlerView:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-virtual {v1}, Lcom/android/server/policy/global/GlobalActionHandlerView;->shutDown()V

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    invoke-virtual {v1}, Lcom/android/server/policy/global/RebootButton;->reBoot()V

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    invoke-virtual {v1}, Lcom/android/server/policy/global/CancelButton;->reBoot()V

    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->hideMsg()V

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->stopMarquee()V

    return-void
.end method

.method private refreshScreenParams()V
    .locals 3

    .prologue
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mScreenHeight:I

    .local v0, "temp":I
    iget v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mScreenHeight:I

    iget v2, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mScreenWidth:I

    if-ge v1, v2, :cond_0

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mScreenWidth:I

    iput v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mScreenHeight:I

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mScreenWidth:I

    :cond_0
    return-void
.end method

.method private setBlurViewAlpha(I)V
    .locals 3
    .param p1, "alpha"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mDecorView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mDecorView:Landroid/view/View;

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mConverColor:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    shl-int/lit8 v2, p1, 0x18

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->setBlurBlendColor(I)V

    :cond_0
    return-void
.end method

.method private showMsg()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mMsg:Landroid/widget/TextView;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mMsg:Landroid/widget/TextView;

    const-string v2, "alpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "showAnim":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data
.end method


# virtual methods
.method public canSwipeToBottom()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/global/RebootButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/global/CancelButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/policy/global/GlobalActionHostView;->setAnimatorObjectCallback(Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;)V

    return-void
.end method

.method public destroyMarquee()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mLocked:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mHandlerView:Lcom/android/server/policy/global/GlobalActionHandlerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mHandlerView:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->destroyMarquee()V

    goto :goto_0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public dispatchSystemUiVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchSystemUiVisibilityChanged(I)V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    const/high16 v0, 0x400000

    invoke-virtual {p0, v0}, Lcom/android/server/policy/global/GlobalActionHostView;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->isRebootOrShutdown:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/policy/global/GlobalActionHostView;->TAG:Ljava/lang/String;

    const-string v2, "host onInterceptTouchEvent is reboot or shutdown ok..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mAnimatorObjectCallback:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_2

    :cond_1
    sget-object v1, Lcom/android/server/policy/global/GlobalActionHostView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "host dispatchTouchEvent, mAnimatorObjectCallback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mAnimatorObjectCallback:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->isRebootPending:Z

    if-nez v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_5

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->stopMarquee()V

    :cond_4
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-eq v1, v0, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/global/GlobalActionHostView;->startMarquee(Z)V

    goto :goto_1
.end method

.method public getAnimatorObject()Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mAnimatorObjectCallback:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    return-object v0
.end method

.method public getHostHeight()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getThreshold()I
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    invoke-virtual {v1}, Lcom/android/server/policy/global/CancelButton;->getTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mHandlerView:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-virtual {v2}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getInitBottom()I

    move-result v2

    sub-int v0, v1, v2

    .local v0, "dis":I
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    invoke-virtual {v1}, Lcom/android/server/policy/global/CancelButton;->getTop()I

    move-result v1

    div-int/lit8 v2, v0, 0xa

    sub-int/2addr v1, v2

    :goto_0
    return v1

    .end local v0    # "dis":I
    :cond_0
    iget v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mScreenHeight:I

    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mHandlerView:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-virtual {v2}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getInitBottom()I

    move-result v2

    sub-int v0, v1, v2

    .restart local v0    # "dis":I
    iget v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mScreenHeight:I

    div-int/lit8 v2, v0, 0xa

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method public hidden(Landroid/animation/Animator$AnimatorListener;)V
    .locals 3
    .param p1, "animationListener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/global/RebootButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/global/CancelButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mHandlerView:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/global/GlobalActionHandlerView;->hide(Z)V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/global/RebootButton;->hide(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/global/CancelButton;->hide(Z)V

    :cond_3
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->hideMsg()V

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->stopMarquee()V

    return-void
.end method

.method public hintCancelRect(FF)Z
    .locals 1
    .param p1, "rawX"    # F
    .param p2, "rawY"    # F

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public hintSwipeRect(FF)Z
    .locals 6
    .param p1, "rawX"    # F
    .param p2, "rawY"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x2

    new-array v0, v4, [I

    .local v0, "location":[I
    invoke-virtual {p0, v0}, Lcom/android/server/policy/global/GlobalActionHostView;->getLocationInWindow([I)V

    aget v2, v0, v3

    .local v2, "startY":I
    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mHandlerView:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-virtual {v4, v0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getLocationInWindow([I)V

    aget v4, v0, v3

    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mHandlerView:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-virtual {v5}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->getMeasuredHeight()I

    move-result v5

    mul-int/lit8 v5, v5, 0x5

    div-int/lit8 v5, v5, 0x9

    add-int/2addr v5, v2

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .local v1, "minEndY":I
    int-to-float v4, v2

    cmpl-float v4, p2, v4

    if-ltz v4, :cond_0

    int-to-float v4, v1

    cmpg-float v4, p2, v4

    if-gez v4, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public installHost(Z)V
    .locals 11
    .param p1, "isLocked"    # Z

    .prologue
    const v6, 0x10501dc

    const/16 v10, 0x31

    const/4 v9, -0x1

    const/4 v8, -0x2

    const v7, 0x3dcccccd    # 0.1f

    iput-boolean p1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mLocked:Z

    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mHandlerView:Lcom/android/server/policy/global/GlobalActionHandlerView;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    if-nez v4, :cond_0

    const/4 v2, 0x0

    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v4, Lcom/android/server/policy/global/RebootButton;

    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/policy/global/RebootButton;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    const v5, 0x1040632

    invoke-virtual {v4, v5}, Lcom/android/server/policy/global/RebootButton;->setCustomerText(I)V

    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    invoke-virtual {v4}, Lcom/android/server/policy/global/RebootButton;->getBottomBarWidth()I

    move-result v0

    .local v0, "calendWidth":I
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {p0, v6}, Lcom/android/server/policy/global/GlobalActionHostView;->getDix(I)I

    move-result v4

    const/16 v5, 0x53

    invoke-direct {v2, v0, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .restart local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    const v4, 0x10501dd

    invoke-direct {p0, v4}, Lcom/android/server/policy/global/GlobalActionHostView;->getDix(I)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    iget v5, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mScreenWidth:I

    div-int/lit8 v5, v5, 0x4

    invoke-virtual {v4, v0, v5}, Lcom/android/server/policy/global/RebootButton;->getMargin(II)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    invoke-virtual {p0, v4, v2}, Lcom/android/server/policy/global/GlobalActionHostView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lcom/android/server/policy/global/CancelButton;

    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/policy/global/CancelButton;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    const v5, 0x1040633

    invoke-virtual {v4, v5}, Lcom/android/server/policy/global/CancelButton;->setCustomerText(I)V

    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    invoke-virtual {v4}, Lcom/android/server/policy/global/CancelButton;->getBottomBarWidth()I

    move-result v0

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {p0, v6}, Lcom/android/server/policy/global/GlobalActionHostView;->getDix(I)I

    move-result v4

    const/16 v5, 0x55

    invoke-direct {v2, v0, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .restart local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    const v4, 0x10501dd

    invoke-direct {p0, v4}, Lcom/android/server/policy/global/GlobalActionHostView;->getDix(I)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    iget v5, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mScreenWidth:I

    div-int/lit8 v5, v5, 0x4

    invoke-virtual {v4, v0, v5}, Lcom/android/server/policy/global/CancelButton;->getMargin(II)I

    move-result v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    invoke-virtual {p0, v4, v2}, Lcom/android/server/policy/global/GlobalActionHostView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v4, Lcom/android/server/policy/global/GlobalActionHandlerView;

    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mContext:Landroid/content/Context;

    iget-boolean v6, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mLocked:Z

    invoke-direct {v4, v5, v6}, Lcom/android/server/policy/global/GlobalActionHandlerView;-><init>(Landroid/content/Context;Z)V

    iput-object v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mHandlerView:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->getHandlerViewBottom()I

    move-result v1

    .local v1, "initHandlerViewBottom":I
    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mHandlerView:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-virtual {v4}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getRegionHeight()I

    move-result v3

    .local v3, "regionHeight":I
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v2, v9, v3, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .restart local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    sub-int v4, v1, v3

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mHandlerView:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-virtual {v4, v1}, Lcom/android/server/policy/global/GlobalActionHandlerView;->setInitBottom(I)V

    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mHandlerView:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-virtual {p0, v4, v2}, Lcom/android/server/policy/global/GlobalActionHostView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mHandlerView:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-virtual {v4}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getGlobalActionAnimatorCallback()Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/policy/global/GlobalActionHostView;->setAnimatorObjectCallback(Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;)V

    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mHandlerView:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-virtual {v4, p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->setHostViewCallback(Lcom/android/server/policy/global/GlobalActionHandlerView$HostViewCallback;)V

    new-instance v4, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mMsg:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mMsg:Landroid/widget/TextView;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mMsg:Landroid/widget/TextView;

    const/high16 v5, 0x41700000    # 15.0f

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mMsg:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1040631

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mMsg:Landroid/widget/TextView;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-direct {v2, v8, v8, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .restart local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    iget v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mScreenHeight:I

    int-to-float v4, v4

    const v5, 0x3d8f5c29    # 0.07f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mScreenWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mScreenWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v7

    float-to-int v4, v4

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mMsg:Landroid/widget/TextView;

    invoke-virtual {p0, v4, v2}, Lcom/android/server/policy/global/GlobalActionHostView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .end local v0    # "calendWidth":I
    .end local v1    # "initHandlerViewBottom":I
    .end local v2    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v3    # "regionHeight":I
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->destroyMarquee()V

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->isRebootOrShutdown:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/policy/global/GlobalActionHostView;->TAG:Ljava/lang/String;

    const-string v2, "host onInterceptTouchEvent is reboot or shutdown ok..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->isRebootPending:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->stopMarquee()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mMediatorCallback:Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    invoke-interface {v1}, Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;->hiddenWindow()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mAnimatorObjectCallback:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_4

    :cond_3
    sget-object v1, Lcom/android/server/policy/global/GlobalActionHostView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "host onInterceptTouchEvent, mAnimatorObjectCallback: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mAnimatorObjectCallback:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mLocked:Z

    if-eqz v1, :cond_5

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mSwipeHelper:Lcom/android/server/policy/global/GlobalActionSwipeHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRebootOrShutdown(Z)V
    .locals 3
    .param p1, "reboot"    # Z

    .prologue
    sget-object v0, Lcom/android/server/policy/global/GlobalActionHostView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "host onRebootOrShutdown reboot: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->isRebootOrShutdown:Z

    return-void
.end method

.method public onSwapToBottom()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/server/policy/global/GlobalActionHostView$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/global/GlobalActionHostView$2;-><init>(Lcom/android/server/policy/global/GlobalActionHostView;)V

    invoke-virtual {p0, v0}, Lcom/android/server/policy/global/GlobalActionHostView;->reBoot(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->isRebootOrShutdown:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/server/policy/global/GlobalActionHostView;->TAG:Ljava/lang/String;

    const-string v2, "host onTouchEvent is reboot or shutdown ok..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mMediatorCallback:Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    invoke-interface {v1}, Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;->userActivity()V

    iget-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mLocked:Z

    if-eqz v1, :cond_2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mSwipeHelper:Lcom/android/server/policy/global/GlobalActionSwipeHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reBoot(Landroid/animation/Animator$AnimatorListener;)V
    .locals 6
    .param p1, "animationListener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/policy/global/GlobalActionHostView;->isRebootPending:Z

    const-string v1, "converAlpha"

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mConverAlpha:I

    aput v4, v2, v3

    const/16 v3, 0xff

    aput v3, v2, v5

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "objectAni":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const v2, 0x3fe66666    # 1.8f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    invoke-virtual {v0, p1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mHandlerView:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-virtual {v1}, Lcom/android/server/policy/global/GlobalActionHandlerView;->reBoot()V

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    invoke-virtual {v1}, Lcom/android/server/policy/global/RebootButton;->reBoot()V

    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    invoke-virtual {v1}, Lcom/android/server/policy/global/CancelButton;->reBoot()V

    :cond_1
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->hideMsg()V

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->stopMarquee()V

    return-void
.end method

.method public setAlaphaWhenDrag(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/global/RebootButton;->setAlaphaWhenDrag(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/global/CancelButton;->setAlaphaWhenDrag(F)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mMsg:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_2

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mMsg:Landroid/widget/TextView;

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method

.method public setAnimatorObjectCallback(Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mAnimatorObjectCallback:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    return-void
.end method

.method public setBlackGrident(F)V
    .locals 8
    .param p1, "value"    # F

    .prologue
    const-wide v2, 0x406fe00000000000L    # 255.0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    float-to-double v4, v1

    const-wide v6, 0x4003333333333333L    # 2.4

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double/2addr v2, v4

    double-to-int v0, v2

    .local v0, "alpha":I
    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mConverAlpha:I

    invoke-virtual {p0, v0}, Lcom/android/server/policy/global/GlobalActionHostView;->setConverAlpha(I)V

    return-void
.end method

.method public setConverAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    iput p1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mConverAlpha:I

    invoke-direct {p0, p1}, Lcom/android/server/policy/global/GlobalActionHostView;->setBlurViewAlpha(I)V

    return-void
.end method

.method public setGradientLength(I)V
    .locals 2
    .param p1, "length"    # I

    .prologue
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mScreenHeight:I

    sub-int v0, p1, v0

    neg-int v0, v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mY0:F

    iget v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mScreenHeight:I

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mScreenHeight:I

    sub-int v1, p1, v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mY1:F

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->invalidate()V

    return-void
.end method

.method public setMediatorCallback(Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;)V
    .locals 2
    .param p1, "viewMediatorCallback"    # Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mMediatorCallback:Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mSwipeHelper:Lcom/android/server/policy/global/GlobalActionSwipeHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mSwipeHelper:Lcom/android/server/policy/global/GlobalActionSwipeHelper;

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mMediatorCallback:Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/global/GlobalActionSwipeHelper;->setMediatorCallback(Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;)V

    :cond_0
    return-void
.end method

.method public show(Landroid/animation/Animator$AnimatorListener;)V
    .locals 3
    .param p1, "animationListener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/global/RebootButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/global/CancelButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mHandlerView:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/global/GlobalActionHandlerView;->show(Z)V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mRebootView:Lcom/android/server/policy/global/RebootButton;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/global/RebootButton;->show(Z)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mCancelView:Lcom/android/server/policy/global/CancelButton;

    invoke-virtual {v0, v2}, Lcom/android/server/policy/global/CancelButton;->show(Z)V

    :cond_3
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionHostView;->showMsg()V

    invoke-virtual {p0, v2}, Lcom/android/server/policy/global/GlobalActionHostView;->startMarquee(Z)V

    return-void
.end method

.method public startMarquee(Z)V
    .locals 1
    .param p1, "first"    # Z

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mLocked:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mHandlerView:Lcom/android/server/policy/global/GlobalActionHandlerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mHandlerView:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->startMarquee()V

    goto :goto_0
.end method

.method public stopMarquee()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mLocked:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mHandlerView:Lcom/android/server/policy/global/GlobalActionHandlerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHostView;->mHandlerView:Lcom/android/server/policy/global/GlobalActionHandlerView;

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->stopMarquee()V

    goto :goto_0
.end method
