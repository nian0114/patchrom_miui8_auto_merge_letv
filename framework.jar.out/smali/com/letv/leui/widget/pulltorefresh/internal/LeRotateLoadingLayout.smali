.class public Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;
.super Lcom/letv/leui/widget/pulltorefresh/internal/RotateLoadingLayout;
.source "LeRotateLoadingLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;,
        Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;
    }
.end annotation


# static fields
.field private static final ANGLE_MAX_SWEEP:F = -330.0f

.field private static final ANGLE_OFFSET:F = -90.0f

.field private static final ARROW_PAINT_WIDTH:F = 2.0f

.field private static final BALLNUM:I = 0x6

.field private static final BALL_RADIUS_FACTOR:F = 1.4f

.field private static final BALL_RADIUS_MAX:F = 10.0f

.field private static final BOXSIZE_COEF:F = 2.2f

.field private static final CIRCLE_PAINT_WIDTH:F = 6.0f

.field private static final DISMISS_DURATION:I = 0xfa

.field private static final DURATION_ARROW:I = 0x15e

.field private static final DURATION_ROTATE:I = 0x1f4

.field private static final HEADERIMAGE_SIZE:I = 0x5f

.field private static final REFRESH_STOP_ANGLE:F = 0.0f

.field private static final START_ANGLE:F = 270.0f

.field private static final WHITE:I = -0x1


# instance fields
.field private animator:Landroid/animation/ObjectAnimator;

.field private animatorCanbeStarted:Z

.field private arrowShape:Lcom/letv/leui/widget/LeArrowShape;

.field private ballCenters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private ballColor:[I

.field private ballRadius:F

.field public cancelAnimator:Z

.field private colorStyle:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;

.field private duration:I

.field private holder:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;

.field private isPullToRefresh:Z

.field private isRefreshing:Z

.field private isReleaseToRefresh:Z

.field private mAngle:F

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mHeaderImageMatrix:Landroid/graphics/Matrix;

.field private mHeight:I

.field private mPaint:Landroid/graphics/Paint;

.field private mRectF:Landroid/graphics/RectF;

.field private mUseCenter:Z

.field private mWidth:I

.field private paintColor:I

.field private radius:F

.field public refreshCompletedListener:Lcom/letv/leui/widget/pulltorefresh/internal/RefreshCompletedListener;

.field private relativeCenters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private startAngle:F

.field private stopAngle:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;
    .param p3, "scrollDirection"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;
    .param p4, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/letv/leui/widget/pulltorefresh/internal/RotateLoadingLayout;-><init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    sget-object v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;->COLOR:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->colorStyle:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->ballColor:[I

    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->cancelAnimator:Z

    iput-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->refreshCompletedListener:Lcom/letv/leui/widget/pulltorefresh/internal/RefreshCompletedListener;

    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mUseCenter:Z

    const/high16 v0, 0x43870000    # 270.0f

    iput v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->startAngle:F

    iput-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeaderImageMatrix:Landroid/graphics/Matrix;

    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->isReleaseToRefresh:Z

    iput-boolean v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->isPullToRefresh:Z

    iput-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mBitmap:Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mCanvas:Landroid/graphics/Canvas;

    iput-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->arrowShape:Lcom/letv/leui/widget/LeArrowShape;

    const/4 v0, -0x1

    iput v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->paintColor:I

    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->isRefreshing:Z

    iput-boolean v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->animatorCanbeStarted:Z

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->duration:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->paintColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeaderImageMatrix:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeaderImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;

    invoke-direct {v0, p0, v2}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;-><init>(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$1;)V

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->holder:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;

    invoke-direct {p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->setImageViewLayoutParams()V

    invoke-direct {p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->initVariable()V

    return-void

    nop

    :array_0
    .array-data 4
        -0x12e1e0
        -0x93db3a
        -0xe54e15
        -0x752ed9
        -0x2800
        -0x7600
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mode"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;
    .param p3, "scrollDirection"    # Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;
    .param p4, "attrs"    # Landroid/content/res/TypedArray;
    .param p5, "paintColor"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;-><init>(Landroid/content/Context;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcom/letv/leui/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    iput p5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->paintColor:I

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Landroid/graphics/Bitmap;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->animatorCanbeStarted:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Landroid/graphics/Canvas;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->colorStyle:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)[I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->ballColor:[I

    return-object v0
.end method

.method static synthetic access$1500(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->relativeCenters:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Lcom/letv/leui/widget/LeArrowShape;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->arrowShape:Lcom/letv/leui/widget/LeArrowShape;

    return-object v0
.end method

.method static synthetic access$200(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->isRefreshing:Z

    return v0
.end method

.method static synthetic access$202(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->isRefreshing:Z

    return p1
.end method

.method static synthetic access$300(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->startDismiss()V

    return-void
.end method

.method static synthetic access$400(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->holder:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;

    return-object v0
.end method

.method static synthetic access$500(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)F
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->stopAngle:F

    return v0
.end method

.method static synthetic access$502(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;F)F
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;
    .param p1, "x1"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->stopAngle:F

    return p1
.end method

.method static synthetic access$600(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->animator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$700(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mWidth:I

    return v0
.end method

.method static synthetic access$800(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeight:I

    return v0
.end method

.method static synthetic access$900(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)Landroid/graphics/Matrix;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeaderImageMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method private drawBalls()V
    .locals 6

    .prologue
    const v2, 0xffffff

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->colorStyle:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;

    sget-object v2, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;->WHITE:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mPaint:Landroid/graphics/Paint;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    iget-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mCanvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->ballCenters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->ballCenters:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    const v4, 0x40e49249

    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->ballColor:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mAngle:F

    return-void
.end method

.method private drawLeArrow()V
    .locals 4

    .prologue
    new-instance v0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;-><init>(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$1;)V

    .local v0, "arrowHolder":Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;->setAngle(F)V

    const-string v2, "angle"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .local v1, "drawArrowAnimator":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x15e

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    sget-object v2, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v2, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->paintColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v2, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$5;

    invoke-direct {v2, p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$5;-><init>(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v2, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$6;

    invoke-direct {v2, p0, v0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$6;-><init>(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initAnimator()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->animator:Landroid/animation/ObjectAnimator;

    sget-object v1, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->animator:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->animator:Landroid/animation/ObjectAnimator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->animator:Landroid/animation/ObjectAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->animator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$1;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$1;-><init>(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->animator:Landroid/animation/ObjectAnimator;

    new-instance v1, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$2;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$2;-><init>(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private initVariable()V
    .locals 14

    .prologue
    const/16 v4, 0x5f

    iput v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mWidth:I

    iget v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mWidth:I

    iput v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeight:I

    iget v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mWidth:I

    iget v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeight:I

    if-lt v4, v5, :cond_2

    iget v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeight:I

    int-to-float v4, v4

    const v5, 0x400ccccd    # 2.2f

    div-float/2addr v4, v5

    :goto_0
    iput v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->radius:F

    iget-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v4, :cond_1

    iget v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mWidth:I

    if-lez v4, :cond_1

    iget v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeight:I

    if-lez v4, :cond_1

    iget v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mWidth:I

    iget v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeight:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mCanvas:Landroid/graphics/Canvas;

    if-nez v4, :cond_0

    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mCanvas:Landroid/graphics/Canvas;

    new-instance v4, Landroid/graphics/RectF;

    iget v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mWidth:I

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    iget v7, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->radius:F

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget v6, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeight:I

    int-to-float v6, v6

    const/high16 v7, 0x40000000    # 2.0f

    iget v8, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->radius:F

    mul-float/2addr v7, v8

    sub-float/2addr v6, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    iget v7, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mWidth:I

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    iget v8, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->radius:F

    add-float/2addr v7, v8

    iget v8, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeight:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    iget v9, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->radius:F

    add-float/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mRectF:Landroid/graphics/RectF;

    :cond_0
    iget-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->arrowShape:Lcom/letv/leui/widget/LeArrowShape;

    if-nez v4, :cond_1

    new-instance v4, Lcom/letv/leui/widget/LeArrowShape;

    iget v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mWidth:I

    int-to-float v5, v5

    const/4 v6, 0x0

    const/high16 v7, 0x40000000    # 2.0f

    invoke-direct {v4, v5, v6, v7}, Lcom/letv/leui/widget/LeArrowShape;-><init>(FZF)V

    iput-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->arrowShape:Lcom/letv/leui/widget/LeArrowShape;

    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->ballCenters:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->relativeCenters:Ljava/util/List;

    const/high16 v0, 0x42700000    # 60.0f

    .local v0, "angleUnit":F
    iget v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->radius:F

    const/high16 v5, 0x41200000    # 10.0f

    sub-float v1, v4, v5

    .local v1, "drawRadius":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v4, 0x6

    if-ge v2, v4, :cond_3

    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    .local v3, "pointF":Landroid/graphics/PointF;
    const-wide v4, 0x4047800000000000L    # 47.0

    float-to-double v6, v1

    add-int/lit8 v8, v2, 0x3

    int-to-float v8, v8

    mul-float/2addr v8, v0

    float-to-double v8, v8

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-float v4, v4

    const-wide v6, 0x4047800000000000L    # 47.0

    float-to-double v8, v1

    add-int/lit8 v5, v2, 0x3

    int-to-float v5, v5

    mul-float/2addr v5, v0

    float-to-double v10, v5

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v10, v12

    const-wide v12, 0x4066800000000000L    # 180.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-float v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/PointF;->set(FF)V

    iget-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->ballCenters:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->relativeCenters:Ljava/util/List;

    new-instance v5, Landroid/graphics/PointF;

    float-to-double v6, v1

    add-int/lit8 v8, v2, 0x3

    int-to-float v8, v8

    mul-float/2addr v8, v0

    float-to-double v8, v8

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v6, v6

    float-to-double v8, v1

    add-int/lit8 v7, v2, 0x3

    int-to-float v7, v7

    mul-float/2addr v7, v0

    float-to-double v10, v7

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v10, v12

    const-wide v12, 0x4066800000000000L    # 180.0

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    double-to-float v7, v8

    invoke-direct {v5, v6, v7}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    .end local v0    # "angleUnit":F
    .end local v1    # "drawRadius":F
    .end local v2    # "i":I
    .end local v3    # "pointF":Landroid/graphics/PointF;
    :cond_2
    iget v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mWidth:I

    int-to-float v4, v4

    const v5, 0x400ccccd    # 2.2f

    div-float/2addr v4, v5

    goto/16 :goto_0

    .restart local v0    # "angleUnit":F
    .restart local v1    # "drawRadius":F
    .restart local v2    # "i":I
    :cond_3
    return-void
.end method

.method private setImageViewLayoutParams()V
    .locals 3

    .prologue
    const/16 v2, 0x5f

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private startDismiss()V
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mCanvas:Landroid/graphics/Canvas;

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .local v0, "dismissAnimator":Landroid/animation/ValueAnimator;
    new-instance v1, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$3;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$3;-><init>(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$4;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$4;-><init>(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .end local v0    # "dismissAnimator":Landroid/animation/ValueAnimator;
    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->resetImageHeader()V

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->refreshCompletedListener:Lcom/letv/leui/widget/pulltorefresh/internal/RefreshCompletedListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->refreshCompletedListener:Lcom/letv/leui/widget/pulltorefresh/internal/RefreshCompletedListener;

    invoke-interface {v1}, Lcom/letv/leui/widget/pulltorefresh/internal/RefreshCompletedListener;->refreshHeaderCompleteInternal()V

    goto :goto_0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startRotation()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    iget-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->animatorCanbeStarted:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mAngle:F

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->animator:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->holder:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$AnimatorHolder;

    const-string v1, "angle"

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mAngle:F

    aput v3, v2, v6

    const/4 v3, 0x1

    iget v4, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mAngle:F

    const/high16 v5, 0x43b40000    # 360.0f

    add-float/2addr v4, v5

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->animator:Landroid/animation/ObjectAnimator;

    :cond_0
    invoke-direct {p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->initAnimator()V

    iput-boolean v6, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->animatorCanbeStarted:Z

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    return-void
.end method


# virtual methods
.method public forceRefreshingImpl()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->drawBalls()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->refreshingImpl()V

    return-void
.end method

.method public getAnimator()Landroid/animation/ObjectAnimator;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->animator:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method public getBallColor()[I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->ballColor:[I

    return-object v0
.end method

.method public getColorStyle()Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->colorStyle:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->duration:I

    return v0
.end method

.method protected onPullImpl(F)V
    .locals 14
    .param p1, "scaleOfLayout"    # F

    .prologue
    const v6, 0xffffff

    const/4 v13, -0x1

    const/high16 v12, 0x41200000    # 10.0f

    const v11, 0x3fb33333    # 1.4f

    const/4 v10, 0x0

    move v1, p1

    .local v1, "scale":F
    iget-boolean v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->isPullToRefresh:Z

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v5, v6}, Landroid/graphics/Canvas;->drawColor(I)V

    const v5, 0x3f99999a    # 1.2f

    cmpl-float v5, v1, v5

    if-lez v5, :cond_0

    const v1, 0x3e4ccccd    # 0.2f

    :cond_0
    const v5, 0x3e4ccccd    # 0.2f

    sub-float v5, v1, v5

    const/high16 v6, 0x40c00000    # 6.0f

    mul-float v1, v5, v6

    cmpl-float v5, v1, v10

    if-lez v5, :cond_9

    float-to-double v6, v1

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v2, v6

    .local v2, "scale_int":I
    const/4 v5, 0x6

    if-lt v2, v5, :cond_1

    const/4 v2, 0x5

    :cond_1
    int-to-float v5, v2

    sub-float v3, v1, v5

    .local v3, "scale_offset":F
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->colorStyle:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;

    sget-object v6, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;->WHITE:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v13}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->ballCenters:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v7, v5, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->ballCenters:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    const v8, 0x40e49249

    iget-object v9, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v7, v5, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->ballColor:[I

    aget v6, v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_3
    const v4, 0x3f36db6e

    .local v4, "temp":F
    cmpl-float v5, v3, v10

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->colorStyle:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;

    sget-object v6, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;->WHITE:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;

    if-ne v5, v6, :cond_7

    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v13}, Landroid/graphics/Paint;->setColor(I)V

    :goto_2
    cmpg-float v5, v3, v4

    if-gez v5, :cond_8

    mul-float v5, v11, v3

    mul-float/2addr v5, v12

    iput v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->ballRadius:F

    :goto_3
    iget-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mCanvas:Landroid/graphics/Canvas;

    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->ballCenters:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v7, v5, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->ballCenters:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v8, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->ballRadius:F

    iget-object v9, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v7, v5, v8, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_4
    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .end local v0    # "i":I
    .end local v2    # "scale_int":I
    .end local v3    # "scale_offset":F
    .end local v4    # "temp":F
    :goto_4
    iget-boolean v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->isRefreshing:Z

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->animator:Landroid/animation/ObjectAnimator;

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->animatorCanbeStarted:Z

    if-nez v5, :cond_5

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->cancelAnimator:Z

    :cond_5
    iget-boolean v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->isReleaseToRefresh:Z

    if-eqz v5, :cond_6

    invoke-direct {p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->startRotation()V

    :cond_6
    return-void

    .restart local v0    # "i":I
    .restart local v2    # "scale_int":I
    .restart local v3    # "scale_offset":F
    .restart local v4    # "temp":F
    :cond_7
    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->ballColor:[I

    aget v6, v6, v2

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_2

    :cond_8
    mul-float v5, v11, v3

    const v6, 0x40333333    # 2.8f

    sub-float v7, v3, v4

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    mul-float/2addr v5, v12

    iput v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->ballRadius:F

    goto :goto_3

    .end local v0    # "i":I
    .end local v2    # "scale_int":I
    .end local v3    # "scale_offset":F
    .end local v4    # "temp":F
    :cond_9
    iget-object v5, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_4
.end method

.method protected pullToRefreshImpl()V
    .locals 2

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->isPullToRefresh:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->isReleaseToRefresh:Z

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeaderImageMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeaderImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeaderImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeaderImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mHeaderImageMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method protected refreshingImpl()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->isRefreshing:Z

    invoke-direct {p0}, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->startRotation()V

    return-void
.end method

.method protected releaseToRefreshImpl()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->isReleaseToRefresh:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->isPullToRefresh:Z

    return-void
.end method

.method public resetImageHeader()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->isPullToRefresh:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->isReleaseToRefresh:Z

    iput-boolean v1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->animatorCanbeStarted:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mAngle:F

    return-void
.end method

.method protected resetImpl()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->animator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->animator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public setBallColor(II)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "pos"    # I

    .prologue
    if-ltz p2, :cond_0

    const/4 v0, 0x6

    if-le p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->ballColor:[I

    aput p1, v0, p2

    goto :goto_0
.end method

.method public setBallColor([I)V
    .locals 2
    .param p1, "ballColor"    # [I

    .prologue
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->ballColor:[I

    goto :goto_0
.end method

.method public setColorStyle(Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;)V
    .locals 0
    .param p1, "colorStyle"    # Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->colorStyle:Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout$ColorStyle;

    return-void
.end method

.method public setDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->duration:I

    return-void
.end method

.method public setPaintColor(I)V
    .locals 1
    .param p1, "paintColor"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->paintColor:I

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setRefreshCompletedListener(Lcom/letv/leui/widget/pulltorefresh/internal/RefreshCompletedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/widget/pulltorefresh/internal/RefreshCompletedListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/pulltorefresh/internal/LeRotateLoadingLayout;->refreshCompletedListener:Lcom/letv/leui/widget/pulltorefresh/internal/RefreshCompletedListener;

    return-void
.end method
