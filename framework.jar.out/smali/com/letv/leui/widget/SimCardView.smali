.class public Lcom/letv/leui/widget/SimCardView;
.super Landroid/view/View;
.source "SimCardView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# static fields
.field private static final CENTER:I = 0x1

.field private static final CENTER_HORIZONTAL:I = 0x3

.field private static final CENTER_VERTICAL:I = 0x2

.field public static final HAS_SIMCARD:I = 0x0

.field private static final HOOK_DELAY:I = 0x1f4

.field private static final LOCK_ARC_DELAY:I = 0x28a

.field private static final LOCK_ARC_DURATION:I = 0x15e

.field private static final LOCK_ZOOM_DELAY:I = 0x1f4

.field private static final LOCK_ZOOM_DURATION:I = 0x1f4

.field private static final MARK_DELAY:I = 0x1f4

.field private static final MARK_DOWN_DURATION:I = 0xaf

.field private static final MARK_UP_DURATION:I = 0x1f4

.field private static final NORMAL:I = 0x0

.field public static final NO_SIMCARD:I = 0x3

.field private static final SIMCARD_DELAY:I = 0xaf

.field public static final SIMCARD_ERROR:I = 0x1

.field public static final SIMCARD_LOCK:I = 0x2


# instance fields
.field private CIRCLE_ZOOM_OUT_DURATION:I

.field private NORMAL_BACK_BALL_RADIUS:F

.field private NORMAL_RECT_HEIGHT:F

.field private NORMAL_RECT_WIDTH:F

.field private arc:F

.field private centerX:F

.field private centerY:F

.field private hookDownSpeed:F

.field private hookUpSpeed:F

.field private lockScale:F

.field private mBackBallColor:I

.field private mGravity:I

.field private mPaint:Landroid/graphics/Paint;

.field private mPath:Landroid/graphics/Path;

.field private mSimCardColor:I

.field private mSimCardStatus:I

.field private mStrokeWidth:F

.field private markDownSpeed:F

.field private markUpSpeed:F

.field private radius:F

.field private rectHeight:F

.field private rectWidth:F

.field private simCardAnim:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/SimCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/letv/leui/widget/SimCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v2, p0, Lcom/letv/leui/widget/SimCardView;->mGravity:I

    const/high16 v1, 0x40c00000    # 6.0f

    iput v1, p0, Lcom/letv/leui/widget/SimCardView;->mStrokeWidth:F

    const-string v1, "#43AD69"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/SimCardView;->mBackBallColor:I

    const/high16 v1, 0x42fe0000    # 127.0f

    iput v1, p0, Lcom/letv/leui/widget/SimCardView;->NORMAL_BACK_BALL_RADIUS:F

    const/16 v1, 0x3e8

    iput v1, p0, Lcom/letv/leui/widget/SimCardView;->CIRCLE_ZOOM_OUT_DURATION:I

    const-string v1, "#FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/SimCardView;->mSimCardColor:I

    const/high16 v1, 0x42980000    # 76.0f

    iput v1, p0, Lcom/letv/leui/widget/SimCardView;->NORMAL_RECT_WIDTH:F

    const/high16 v1, 0x42c00000    # 96.0f

    iput v1, p0, Lcom/letv/leui/widget/SimCardView;->NORMAL_RECT_HEIGHT:F

    sget-object v1, Lcom/android/internal/R$styleable;->SimCardView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/SimCardView;->mGravity:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v1, p0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v1, p0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/widget/SimCardView;->mPath:Landroid/graphics/Path;

    return-void
.end method

.method private createAnimation()V
    .locals 13

    .prologue
    iget-object v9, p0, Lcom/letv/leui/widget/SimCardView;->simCardAnim:Landroid/animation/AnimatorSet;

    if-nez v9, :cond_0

    const-string v9, "radius"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    const/4 v11, 0x1

    iget v12, p0, Lcom/letv/leui/widget/SimCardView;->NORMAL_BACK_BALL_RADIUS:F

    aput v12, v10, v11

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "circleZoomOut":Landroid/animation/ObjectAnimator;
    iget v9, p0, Lcom/letv/leui/widget/SimCardView;->CIRCLE_ZOOM_OUT_DURATION:I

    int-to-long v10, v9

    invoke-virtual {v0, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/SimCardView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x10c001c

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string v9, "rectWidth"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    const/4 v11, 0x1

    iget v12, p0, Lcom/letv/leui/widget/SimCardView;->NORMAL_RECT_WIDTH:F

    aput v12, v10, v11

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .local v8, "simCardWidth":Landroid/animation/ObjectAnimator;
    iget v9, p0, Lcom/letv/leui/widget/SimCardView;->CIRCLE_ZOOM_OUT_DURATION:I

    add-int/lit16 v9, v9, -0xaf

    int-to-long v10, v9

    invoke-virtual {v8, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v10, 0xaf

    invoke-virtual {v8, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/SimCardView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x10c001c

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v8, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string v9, "rectHeight"

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    const/4 v11, 0x1

    iget v12, p0, Lcom/letv/leui/widget/SimCardView;->NORMAL_RECT_HEIGHT:F

    aput v12, v10, v11

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .local v7, "simCardHeight":Landroid/animation/ObjectAnimator;
    iget v9, p0, Lcom/letv/leui/widget/SimCardView;->CIRCLE_ZOOM_OUT_DURATION:I

    add-int/lit16 v9, v9, -0xaf

    int-to-long v10, v9

    invoke-virtual {v7, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v10, 0xaf

    invoke-virtual {v7, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/SimCardView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x10c001c

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v9

    invoke-virtual {v7, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v7, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Lcom/letv/leui/widget/SimCardView;->simCardAnim:Landroid/animation/AnimatorSet;

    iget v9, p0, Lcom/letv/leui/widget/SimCardView;->mSimCardStatus:I

    packed-switch v9, :pswitch_data_0

    .end local v0    # "circleZoomOut":Landroid/animation/ObjectAnimator;
    .end local v7    # "simCardHeight":Landroid/animation/ObjectAnimator;
    .end local v8    # "simCardWidth":Landroid/animation/ObjectAnimator;
    :cond_0
    :goto_0
    return-void

    .restart local v0    # "circleZoomOut":Landroid/animation/ObjectAnimator;
    .restart local v7    # "simCardHeight":Landroid/animation/ObjectAnimator;
    .restart local v8    # "simCardWidth":Landroid/animation/ObjectAnimator;
    :pswitch_0
    const-string v9, "hookDownSpeed"

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_0

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget v10, p0, Lcom/letv/leui/widget/SimCardView;->CIRCLE_ZOOM_OUT_DURATION:I

    add-int/lit16 v10, v10, -0x1f4

    div-int/lit8 v10, v10, 0x3

    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .local v1, "hookDown":Landroid/animation/ObjectAnimator;
    const-wide/16 v10, 0x1f4

    invoke-virtual {v1, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/SimCardView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x10c001c

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string v9, "hookUpSpeed"

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_1

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    iget v10, p0, Lcom/letv/leui/widget/SimCardView;->CIRCLE_ZOOM_OUT_DURATION:I

    add-int/lit16 v10, v10, -0x1f4

    div-int/lit8 v10, v10, 0x3

    mul-int/lit8 v10, v10, 0x2

    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .local v2, "hookUp":Landroid/animation/ObjectAnimator;
    iget v9, p0, Lcom/letv/leui/widget/SimCardView;->CIRCLE_ZOOM_OUT_DURATION:I

    add-int/lit16 v9, v9, -0x1f4

    div-int/lit8 v9, v9, 0x3

    add-int/lit16 v9, v9, 0x1f4

    int-to-long v10, v9

    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/SimCardView;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x10c001c

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v9, p0, Lcom/letv/leui/widget/SimCardView;->simCardAnim:Landroid/animation/AnimatorSet;

    const/4 v10, 0x5

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v11, 0x1

    aput-object v8, v10, v11

    const/4 v11, 0x2

    aput-object v7, v10, v11

    const/4 v11, 0x3

    aput-object v1, v10, v11

    const/4 v11, 0x4

    aput-object v2, v10, v11

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_0

    .end local v1    # "hookDown":Landroid/animation/ObjectAnimator;
    .end local v2    # "hookUp":Landroid/animation/ObjectAnimator;
    :pswitch_1
    const-string v9, "markUpSpeed"

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_2

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .local v6, "markUp":Landroid/animation/ObjectAnimator;
    const-wide/16 v10, 0x1f4

    invoke-virtual {v6, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v10, 0x1f4

    invoke-virtual {v6, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v6, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-string v9, "markDownSpeed"

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_3

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .local v5, "markDown":Landroid/animation/ObjectAnimator;
    const-wide/16 v10, 0xaf

    invoke-virtual {v5, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v10, 0x1f4

    invoke-virtual {v5, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v5, p0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v9, p0, Lcom/letv/leui/widget/SimCardView;->simCardAnim:Landroid/animation/AnimatorSet;

    const/4 v10, 0x5

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v11, 0x1

    aput-object v8, v10, v11

    const/4 v11, 0x2

    aput-object v7, v10, v11

    const/4 v11, 0x3

    aput-object v6, v10, v11

    const/4 v11, 0x4

    aput-object v5, v10, v11

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_0

    .end local v5    # "markDown":Landroid/animation/ObjectAnimator;
    .end local v6    # "markUp":Landroid/animation/ObjectAnimator;
    :pswitch_2
    const-string v9, "lockScale"

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_4

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .local v4, "lockZoom":Landroid/animation/ObjectAnimator;
    const-wide/16 v10, 0x1f4

    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v10, 0x1f4

    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    const-string v9, "arc"

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_5

    invoke-static {p0, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .local v3, "lockArc":Landroid/animation/ObjectAnimator;
    const-wide/16 v10, 0x15e

    invoke-virtual {v3, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v10, 0x28a

    invoke-virtual {v3, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v9, p0, Lcom/letv/leui/widget/SimCardView;->simCardAnim:Landroid/animation/AnimatorSet;

    const/4 v10, 0x5

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v11, 0x1

    aput-object v8, v10, v11

    const/4 v11, 0x2

    aput-object v7, v10, v11

    const/4 v11, 0x3

    aput-object v4, v10, v11

    const/4 v11, 0x4

    aput-object v3, v10, v11

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_0

    .end local v3    # "lockArc":Landroid/animation/ObjectAnimator;
    .end local v4    # "lockZoom":Landroid/animation/ObjectAnimator;
    :pswitch_3
    iget-object v9, p0, Lcom/letv/leui/widget/SimCardView;->simCardAnim:Landroid/animation/AnimatorSet;

    const/4 v10, 0x3

    new-array v10, v10, [Landroid/animation/Animator;

    const/4 v11, 0x0

    aput-object v0, v10, v11

    const/4 v11, 0x1

    aput-object v8, v10, v11

    const/4 v11, 0x2

    aput-object v7, v10, v11

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x43340000    # 180.0f
    .end array-data
.end method

.method private measure(I)I
    .locals 5
    .param p1, "measureSpec"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "result":F
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .local v2, "specSize":I
    const/high16 v3, 0x40000000    # 2.0f

    if-ne v1, v3, :cond_1

    int-to-float v0, v2

    :cond_0
    :goto_0
    float-to-int v3, v0

    return v3

    :cond_1
    iget v3, p0, Lcom/letv/leui/widget/SimCardView;->NORMAL_BACK_BALL_RADIUS:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v0, v3, v4

    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_0

    int-to-float v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/letv/leui/widget/SimCardView;->simCardAnim:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/SimCardView;->simCardAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/SimCardView;->simCardAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/letv/leui/widget/SimCardView;->simCardAnim:Landroid/animation/AnimatorSet;

    iput v1, p0, Lcom/letv/leui/widget/SimCardView;->radius:F

    iput v1, p0, Lcom/letv/leui/widget/SimCardView;->rectWidth:F

    iput v1, p0, Lcom/letv/leui/widget/SimCardView;->rectHeight:F

    iput v1, p0, Lcom/letv/leui/widget/SimCardView;->hookDownSpeed:F

    iput v1, p0, Lcom/letv/leui/widget/SimCardView;->hookUpSpeed:F

    iput v1, p0, Lcom/letv/leui/widget/SimCardView;->markUpSpeed:F

    iput v1, p0, Lcom/letv/leui/widget/SimCardView;->markDownSpeed:F

    iput v1, p0, Lcom/letv/leui/widget/SimCardView;->lockScale:F

    iput v1, p0, Lcom/letv/leui/widget/SimCardView;->arc:F

    invoke-virtual {p0}, Lcom/letv/leui/widget/SimCardView;->invalidate()V

    return-void
.end method

.method public getArc()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/SimCardView;->arc:F

    return v0
.end method

.method public getHookDownSpeed()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/SimCardView;->hookDownSpeed:F

    return v0
.end method

.method public getHookUpSpeed()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/SimCardView;->hookUpSpeed:F

    return v0
.end method

.method public getLockScale()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/SimCardView;->lockScale:F

    return v0
.end method

.method public getMarkDownSpeed()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/SimCardView;->markDownSpeed:F

    return v0
.end method

.method public getMarkUpSpeed()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/SimCardView;->markUpSpeed:F

    return v0
.end method

.method public getRadius()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/SimCardView;->radius:F

    return v0
.end method

.method public getRectHeight()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/SimCardView;->rectHeight:F

    return v0
.end method

.method public getRectWidth()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/SimCardView;->rectWidth:F

    return v0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/SimCardView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->mBackBallColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/letv/leui/widget/SimCardView;->centerX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->centerY:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->radius:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->centerX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->rectWidth:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->centerY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/SimCardView;->rectHeight:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->centerX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->rectWidth:F

    const/high16 v5, 0x40c00000    # 6.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->centerY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/SimCardView;->rectHeight:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->centerX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->rectWidth:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->centerY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/SimCardView;->rectHeight:F

    const/high16 v6, 0x40800000    # 4.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->centerX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->rectWidth:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->centerY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/SimCardView;->rectHeight:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->centerX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->rectWidth:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->centerY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/SimCardView;->rectHeight:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->centerX:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->rectWidth:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->centerY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/SimCardView;->rectHeight:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->mSimCardColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->mStrokeWidth:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->radius:F

    mul-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->NORMAL_BACK_BALL_RADIUS:F

    div-float/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/letv/leui/widget/SimCardView;->mSimCardStatus:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/letv/leui/widget/SimCardView;->centerX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->NORMAL_RECT_WIDTH:F

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    sub-float v8, v1, v3

    .local v8, "hookDownXStart":F
    move-object/from16 v0, p0

    iget v10, v0, Lcom/letv/leui/widget/SimCardView;->centerY:F

    .local v10, "hookDownYStart":F
    move-object/from16 v0, p0

    iget v7, v0, Lcom/letv/leui/widget/SimCardView;->centerX:F

    .local v7, "hookDownXEnd":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/letv/leui/widget/SimCardView;->centerY:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->NORMAL_RECT_HEIGHT:F

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    add-float v9, v1, v3

    .local v9, "hookDownYEnd":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, v8, v10}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->hookDownSpeed:F

    sub-float v4, v7, v8

    mul-float/2addr v3, v4

    add-float/2addr v3, v8

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->hookDownSpeed:F

    sub-float v5, v9, v10

    mul-float/2addr v4, v5

    add-float/2addr v4, v10

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move v12, v7

    .local v12, "hookUpXStart":F
    move v14, v9

    .local v14, "hookUpYStart":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/letv/leui/widget/SimCardView;->centerX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->NORMAL_RECT_WIDTH:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float v11, v1, v3

    .local v11, "hookUpXEnd":F
    move-object/from16 v0, p0

    iget v1, v0, Lcom/letv/leui/widget/SimCardView;->centerY:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->NORMAL_RECT_HEIGHT:F

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    sub-float v13, v1, v3

    .local v13, "hookUpYEnd":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPath:Landroid/graphics/Path;

    invoke-virtual {v1, v12, v14}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->hookUpSpeed:F

    sub-float v4, v11, v12

    mul-float/2addr v3, v4

    add-float/2addr v3, v12

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->hookUpSpeed:F

    sub-float v5, v13, v14

    mul-float/2addr v4, v5

    add-float/2addr v4, v14

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .end local v7    # "hookDownXEnd":F
    .end local v8    # "hookDownXStart":F
    .end local v9    # "hookDownYEnd":F
    .end local v10    # "hookDownYStart":F
    .end local v11    # "hookUpXEnd":F
    .end local v12    # "hookUpXStart":F
    .end local v13    # "hookUpYEnd":F
    .end local v14    # "hookUpYStart":F
    :pswitch_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/SimCardView;->centerX:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/letv/leui/widget/SimCardView;->centerY:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->rectHeight:F

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->mStrokeWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v3, v4

    sub-float v3, v1, v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->centerX:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/letv/leui/widget/SimCardView;->centerY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/SimCardView;->rectHeight:F

    const/high16 v6, 0x40800000    # 4.0f

    div-float/2addr v5, v6

    add-float/2addr v1, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/SimCardView;->mStrokeWidth:F

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v5, v6

    sub-float/2addr v1, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/SimCardView;->rectHeight:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/letv/leui/widget/SimCardView;->markUpSpeed:F

    mul-float/2addr v5, v6

    const v6, 0x3e99999a    # 0.3f

    mul-float/2addr v5, v6

    sub-float v5, v1, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/SimCardView;->centerX:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/letv/leui/widget/SimCardView;->centerY:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->rectHeight:F

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->mStrokeWidth:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v3, v1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->centerX:F

    move-object/from16 v0, p0

    iget v1, v0, Lcom/letv/leui/widget/SimCardView;->centerY:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/SimCardView;->rectHeight:F

    const/high16 v6, 0x40800000    # 4.0f

    div-float/2addr v5, v6

    add-float/2addr v1, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/SimCardView;->mStrokeWidth:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    add-float/2addr v1, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/SimCardView;->markDownSpeed:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/letv/leui/widget/SimCardView;->mStrokeWidth:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    sub-float v5, v1, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->mSimCardColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v15, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/letv/leui/widget/SimCardView;->centerX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->rectWidth:F

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->lockScale:F

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->centerY:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->mStrokeWidth:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/SimCardView;->lockScale:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->centerX:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/SimCardView;->rectWidth:F

    const/high16 v6, 0x40400000    # 3.0f

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/letv/leui/widget/SimCardView;->lockScale:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/SimCardView;->centerY:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/letv/leui/widget/SimCardView;->mStrokeWidth:F

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/SimCardView;->lockScale:F

    move/from16 v16, v0

    mul-float v6, v6, v16

    const/high16 v16, 0x3f000000    # 0.5f

    mul-float v6, v6, v16

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/letv/leui/widget/SimCardView;->rectHeight:F

    const/high16 v16, 0x40000000    # 2.0f

    div-float v6, v6, v16

    const/high16 v16, 0x40400000    # 3.0f

    mul-float v6, v6, v16

    const/high16 v16, 0x40a00000    # 5.0f

    div-float v6, v6, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/SimCardView;->lockScale:F

    move/from16 v16, v0

    mul-float v6, v6, v16

    add-float/2addr v5, v6

    invoke-direct {v15, v1, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .local v15, "rectF":Landroid/graphics/RectF;
    const/high16 v1, 0x40a00000    # 5.0f

    const/high16 v3, 0x40a00000    # 5.0f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v15, v1, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v2, Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget v1, v0, Lcom/letv/leui/widget/SimCardView;->centerX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->rectWidth:F

    const/high16 v4, 0x40a00000    # 5.0f

    div-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->lockScale:F

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->centerY:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->mStrokeWidth:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/SimCardView;->lockScale:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->rectHeight:F

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    const/high16 v5, 0x40a00000    # 5.0f

    div-float/2addr v4, v5

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->centerX:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/SimCardView;->rectWidth:F

    const/high16 v6, 0x40a00000    # 5.0f

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/letv/leui/widget/SimCardView;->lockScale:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/SimCardView;->centerY:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/letv/leui/widget/SimCardView;->mStrokeWidth:F

    const/high16 v16, 0x40000000    # 2.0f

    mul-float v6, v6, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/SimCardView;->lockScale:F

    move/from16 v16, v0

    mul-float v6, v6, v16

    add-float/2addr v5, v6

    invoke-direct {v2, v1, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .local v2, "oval":Landroid/graphics/RectF;
    const/high16 v3, 0x43340000    # 180.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->arc:F

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->mBackBallColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    move-object/from16 v0, p0

    iget v1, v0, Lcom/letv/leui/widget/SimCardView;->centerX:F

    move-object/from16 v0, p0

    iget v3, v0, Lcom/letv/leui/widget/SimCardView;->centerY:F

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->mStrokeWidth:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/SimCardView;->lockScale:F

    mul-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->rectHeight:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    const/high16 v5, 0x40400000    # 3.0f

    mul-float/2addr v4, v5

    const/high16 v5, 0x41200000    # 10.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/SimCardView;->lockScale:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/letv/leui/widget/SimCardView;->rectHeight:F

    const/high16 v5, 0x41400000    # 12.0f

    div-float/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/letv/leui/widget/SimCardView;->lockScale:F

    mul-float/2addr v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/letv/leui/widget/SimCardView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    iget v0, p0, Lcom/letv/leui/widget/SimCardView;->NORMAL_BACK_BALL_RADIUS:F

    iput v0, p0, Lcom/letv/leui/widget/SimCardView;->centerX:F

    iget v0, p0, Lcom/letv/leui/widget/SimCardView;->NORMAL_BACK_BALL_RADIUS:F

    iput v0, p0, Lcom/letv/leui/widget/SimCardView;->centerY:F

    iget v0, p0, Lcom/letv/leui/widget/SimCardView;->mGravity:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/SimCardView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/letv/leui/widget/SimCardView;->centerX:F

    invoke-virtual {p0}, Lcom/letv/leui/widget/SimCardView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/letv/leui/widget/SimCardView;->centerY:F

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/SimCardView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/letv/leui/widget/SimCardView;->centerY:F

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/letv/leui/widget/SimCardView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/letv/leui/widget/SimCardView;->centerX:F

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/SimCardView;->measure(I)I

    move-result v0

    invoke-direct {p0, p2}, Lcom/letv/leui/widget/SimCardView;->measure(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/letv/leui/widget/SimCardView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setArc(F)V
    .locals 0
    .param p1, "arc"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/SimCardView;->arc:F

    return-void
.end method

.method public setBackBall(I)Lcom/letv/leui/widget/SimCardView;
    .locals 1
    .param p1, "radius"    # I

    .prologue
    int-to-float v0, p1

    iput v0, p0, Lcom/letv/leui/widget/SimCardView;->NORMAL_BACK_BALL_RADIUS:F

    return-object p0
.end method

.method public setBackBallColor(I)Lcom/letv/leui/widget/SimCardView;
    .locals 0
    .param p1, "color"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/SimCardView;->mBackBallColor:I

    return-object p0
.end method

.method public setHookDownSpeed(F)V
    .locals 0
    .param p1, "hookDownSpeed"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/SimCardView;->hookDownSpeed:F

    return-void
.end method

.method public setHookUpSpeed(F)V
    .locals 0
    .param p1, "hookUpSpeed"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/SimCardView;->hookUpSpeed:F

    return-void
.end method

.method public setLockScale(F)V
    .locals 0
    .param p1, "lockScale"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/SimCardView;->lockScale:F

    return-void
.end method

.method public setMarkDownSpeed(F)V
    .locals 0
    .param p1, "markDownSpeed"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/SimCardView;->markDownSpeed:F

    return-void
.end method

.method public setMarkUpSpeed(F)V
    .locals 0
    .param p1, "markUpSpeed"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/SimCardView;->markUpSpeed:F

    return-void
.end method

.method public setRadius(F)V
    .locals 0
    .param p1, "radius"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/SimCardView;->radius:F

    return-void
.end method

.method public setRect(FF)Lcom/letv/leui/widget/SimCardView;
    .locals 0
    .param p1, "width"    # F
    .param p2, "height"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/SimCardView;->NORMAL_RECT_WIDTH:F

    iput p2, p0, Lcom/letv/leui/widget/SimCardView;->NORMAL_RECT_HEIGHT:F

    return-object p0
.end method

.method public setRectHeight(F)V
    .locals 0
    .param p1, "rectHeight"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/SimCardView;->rectHeight:F

    return-void
.end method

.method public setRectWidth(F)V
    .locals 0
    .param p1, "rectWidth"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/SimCardView;->rectWidth:F

    return-void
.end method

.method public setSimCardColor(I)Lcom/letv/leui/widget/SimCardView;
    .locals 0
    .param p1, "color"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/SimCardView;->mSimCardColor:I

    return-object p0
.end method

.method public startAnimation(I)V
    .locals 1
    .param p1, "simCardStatus"    # I

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/SimCardView;->cancelAnimation()V

    iput p1, p0, Lcom/letv/leui/widget/SimCardView;->mSimCardStatus:I

    invoke-direct {p0}, Lcom/letv/leui/widget/SimCardView;->createAnimation()V

    iget-object v0, p0, Lcom/letv/leui/widget/SimCardView;->simCardAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method
