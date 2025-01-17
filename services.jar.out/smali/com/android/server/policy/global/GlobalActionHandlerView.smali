.class public Lcom/android/server/policy/global/GlobalActionHandlerView;
.super Landroid/view/View;
.source "GlobalActionHandlerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/global/GlobalActionHandlerView$HostViewCallback;
    }
.end annotation


# static fields
.field public static final CIRCLE_DELAY_TIME:J = 0xdcL

.field public static final HIDE_TIME:J = 0xfaL

.field public static final REBOOT_TIME:J = 0x12cL

.field public static final SHOW_TIME:J = 0x15eL

.field public static final SHUTDOWN_TIME:J = 0x12cL


# instance fields
.field private density:F

.field private mAnimator:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

.field mCancel:Z

.field private mHandlerRect:Landroid/graphics/Rect;

.field private mHostCallback:Lcom/android/server/policy/global/GlobalActionHandlerView$HostViewCallback;

.field private mInitBottom:I

.field private mLocked:Z

.field private mMaxTriMarqueeOffset:I

.field private mTipColor:I

.field private mTipMsg:Ljava/lang/String;

.field private mTipPaint:Landroid/graphics/Paint;

.field private mTipRegionHeight:I

.field private mTipRegionWidth:I

.field private mTipTextSize:I

.field private mTriAlphaIn:Landroid/animation/ValueAnimator;

.field mTriAlphaInListener:Landroid/animation/Animator$AnimatorListener;

.field private mTriColor:I

.field private mTriColorAlpha:I

.field private mTriHeight:I

.field private mTriMarqueeOffset:I

.field private mTriMoveAlphaOut:Landroid/animation/ObjectAnimator;

.field mTriMoveListener:Landroid/animation/Animator$AnimatorListener;

.field private mTriPaint:Landroid/graphics/Paint;

.field private mTriPath:Landroid/graphics/Path;

.field private mTriPenWidth:I

.field private mTriRegionHeight:I

.field private mTriRegionWidth:I

.field private mTriWidth:I

.field protected mViewManager:Lcom/android/server/policy/global/GlobalActionViewManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/global/GlobalActionHandlerView;-><init>(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locked"    # Z

    .prologue
    const/16 v2, 0x12c

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v2, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriRegionWidth:I

    const/16 v0, 0x96

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriRegionHeight:I

    const/16 v0, 0x78

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriWidth:I

    const/16 v0, 0x5a

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriHeight:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriPenWidth:I

    const v0, 0x44ffffff    # 2047.9999f

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriColor:I

    const/16 v0, 0x44

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriColorAlpha:I

    iput v1, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriMarqueeOffset:I

    iput v1, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mMaxTriMarqueeOffset:I

    iput v2, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipRegionWidth:I

    const/16 v0, 0x168

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipRegionHeight:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipColor:I

    const/16 v0, 0x2a

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipTextSize:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mHandlerRect:Landroid/graphics/Rect;

    iput v1, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mInitBottom:I

    iput-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mCancel:Z

    new-instance v0, Lcom/android/server/policy/global/GlobalActionHandlerView$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/global/GlobalActionHandlerView$1;-><init>(Lcom/android/server/policy/global/GlobalActionHandlerView;)V

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriAlphaInListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/android/server/policy/global/GlobalActionHandlerView$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/global/GlobalActionHandlerView$2;-><init>(Lcom/android/server/policy/global/GlobalActionHandlerView;)V

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriMoveListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/android/server/policy/global/GlobalActionHandlerView$3;

    invoke-direct {v0, p0}, Lcom/android/server/policy/global/GlobalActionHandlerView$3;-><init>(Lcom/android/server/policy/global/GlobalActionHandlerView;)V

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mAnimator:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    iput-boolean p2, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mLocked:Z

    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/global/GlobalActionHandlerView;)Landroid/animation/ObjectAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/global/GlobalActionHandlerView;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriMoveAlphaOut:Landroid/animation/ObjectAnimator;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/policy/global/GlobalActionHandlerView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/global/GlobalActionHandlerView;
    .param p1, "x1"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/policy/global/GlobalActionHandlerView;->setMarqueeOffset(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/policy/global/GlobalActionHandlerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/global/GlobalActionHandlerView;

    .prologue
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriColorAlpha:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/policy/global/GlobalActionHandlerView;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/global/GlobalActionHandlerView;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriAlphaIn:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/policy/global/GlobalActionHandlerView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/global/GlobalActionHandlerView;

    .prologue
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mInitBottom:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/policy/global/GlobalActionHandlerView;)Lcom/android/server/policy/global/GlobalActionHandlerView$HostViewCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/global/GlobalActionHandlerView;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mHostCallback:Lcom/android/server/policy/global/GlobalActionHandlerView$HostViewCallback;

    return-object v0
.end method

.method private drawTip(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipMsg:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipMsg:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    .local v4, "textWidth":F
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mHandlerRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v2, v5, 0x2

    .local v2, "startX":I
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mHandlerRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int v3, v5, v6

    .local v3, "startY":I
    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mHandlerRect:Landroid/graphics/Rect;

    iget-object v6, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mHandlerRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    add-int/2addr v6, v2

    iget-object v7, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mHandlerRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v5, v2, v3, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    int-to-float v5, v2

    iget-object v6, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mHandlerRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float/2addr v5, v6

    float-to-int v2, v5

    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .local v0, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    iget v5, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v3, v5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .local v1, "seq":I
    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipMsg:Ljava/lang/String;

    int-to-float v6, v2

    int-to-float v7, v3

    iget-object v8, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method private drawTri(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriWidth:I

    sub-int/2addr v3, v4

    div-int/lit8 v1, v3, 0x2

    .local v1, "startX":I
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mHandlerRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int v2, v3, v4

    .local v2, "startY":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .local v0, "seq":I
    int-to-float v3, v1

    iget v4, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipRegionHeight:I

    add-int/2addr v4, v2

    iget v5, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriMarqueeOffset:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriPath:Landroid/graphics/Path;

    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method private drawbaseLine(Landroid/graphics/Canvas;IIF)V
    .locals 33
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "startX"    # I
    .param p3, "startY"    # I
    .param p4, "textWidth"    # F

    .prologue
    move/from16 v0, p2

    int-to-float v2, v0

    .local v2, "baseX":F
    move/from16 v0, p3

    int-to-float v3, v0

    .local v3, "baseY":F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v31

    .local v31, "fontMetrics":Landroid/graphics/Paint$FontMetrics;
    move-object/from16 v0, v31

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    add-float v9, v3, v1

    .local v9, "topY":F
    move-object/from16 v0, v31

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    add-float v15, v3, v1

    .local v15, "ascentY":F
    move-object/from16 v0, v31

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float v21, v3, v1

    .local v21, "descentY":F
    move-object/from16 v0, v31

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    add-float v27, v3, v1

    .local v27, "bottomY":F
    move-object/from16 v0, v31

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->leading:F

    add-float v32, v3, v1

    .local v32, "leading":F
    new-instance v6, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v6, v1}, Landroid/graphics/Paint;-><init>(I)V

    .local v6, "baseLinePaint":Landroid/graphics/Paint;
    const/high16 v1, -0x10000

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    add-float v4, v2, p4

    move-object/from16 v1, p1

    move v5, v3

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/high16 v1, 0x40a00000    # 5.0f

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v1, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    new-instance v12, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v12, v1}, Landroid/graphics/Paint;-><init>(I)V

    .local v12, "topLinePaint":Landroid/graphics/Paint;
    const v1, -0x333334

    invoke-virtual {v12, v1}, Landroid/graphics/Paint;->setColor(I)V

    add-float v10, v2, p4

    move-object/from16 v7, p1

    move v8, v2

    move v11, v9

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    new-instance v18, Landroid/graphics/Paint;

    const/4 v1, 0x1

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .local v18, "ascentLinePaint":Landroid/graphics/Paint;
    const v1, -0xff0100

    move-object/from16 v0, v18

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    add-float v16, v2, p4

    move-object/from16 v13, p1

    move v14, v2

    move/from16 v17, v15

    invoke-virtual/range {v13 .. v18}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    new-instance v24, Landroid/graphics/Paint;

    const/4 v1, 0x1

    move-object/from16 v0, v24

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .local v24, "descentLinePaint":Landroid/graphics/Paint;
    const/16 v1, -0x100

    move-object/from16 v0, v24

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    add-float v22, v2, p4

    move-object/from16 v19, p1

    move/from16 v20, v2

    move/from16 v23, v21

    invoke-virtual/range {v19 .. v24}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    new-instance v30, Landroid/graphics/Paint;

    const/4 v1, 0x1

    move-object/from16 v0, v30

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .local v30, "bottomLinePaint":Landroid/graphics/Paint;
    const v1, -0xff01

    move-object/from16 v0, v30

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    add-float v28, v2, p4

    move-object/from16 v25, p1

    move/from16 v26, v2

    move/from16 v29, v27

    invoke-virtual/range {v25 .. v30}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->density:F

    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->initTip()V

    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->initTri()V

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipRegionWidth:I

    iget v2, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipRegionHeight:I

    iget v3, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriRegionHeight:I

    add-int/2addr v2, v3

    invoke-direct {v0, v4, v4, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mHandlerRect:Landroid/graphics/Rect;

    return-void
.end method

.method private initMove()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v2, "marqueeOffset"

    new-array v3, v7, [I

    aput v5, v3, v5

    iget v4, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mMaxTriMarqueeOffset:I

    aput v4, v3, v6

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .local v1, "triMarquee":Landroid/animation/PropertyValuesHolder;
    const-string v2, "triAlpha"

    new-array v3, v7, [I

    iget v4, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriColorAlpha:I

    aput v4, v3, v5

    aput v5, v3, v6

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .local v0, "triAlpha":Landroid/animation/PropertyValuesHolder;
    new-array v2, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v2, v5

    aput-object v0, v2, v6

    invoke-static {p0, v2}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriMoveAlphaOut:Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriMoveAlphaOut:Landroid/animation/ObjectAnimator;

    const-wide/16 v4, 0x41a

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriMoveAlphaOut:Landroid/animation/ObjectAnimator;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x3fc00000    # 1.5f

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriMoveAlphaOut:Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriMoveListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private initTip()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mLocked:Z

    if-eqz v0, :cond_0

    const v0, 0x1040634

    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipMsg:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501d3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipTextSize:I

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501d4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipRegionWidth:I

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501d5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipRegionHeight:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipTextSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTipPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void

    :cond_0
    const v0, 0x104062f

    goto :goto_0
.end method

.method private initTri()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106014b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriColor:I

    iget v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriColor:I

    shr-int/lit8 v0, v0, 0x18

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriColorAlpha:I

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501d6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriRegionWidth:I

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501d7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriRegionHeight:I

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501d8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriWidth:I

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriHeight:I

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriPenWidth:I

    iget v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriRegionHeight:I

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriHeight:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->density:F

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mMaxTriMarqueeOffset:I

    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->initTriPath()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriPenWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->initMove()V

    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->initTriAlphaIn()V

    return-void
.end method

.method private initTriAlphaIn()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const-string v0, "triAlpha"

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v2, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriColorAlpha:I

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriAlphaIn:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriAlphaIn:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x41a

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriAlphaIn:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const v2, 0x3f8ccccd    # 1.1f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriAlphaIn:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriAlphaInListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private initTriPath()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriPath:Landroid/graphics/Path;

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriPath:Landroid/graphics/Path;

    invoke-virtual {v0, v3, v3}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method private setMarqueeOffset(I)V
    .locals 1
    .param p1, "offset"    # I

    .prologue
    iput p1, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriMarqueeOffset:I

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mHandlerRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method


# virtual methods
.method public destroyMarquee()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->stopMarquee()V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriMoveAlphaOut:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriMoveAlphaOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriMoveAlphaOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriAlphaIn:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriAlphaIn:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriAlphaIn:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    :cond_1
    return-void
.end method

.method public getGlobalActionAnimatorCallback()Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mAnimator:Lcom/android/server/policy/global/GlobalActionSwipeHelper$AnimatorCallback;

    return-object v0
.end method

.method public getInitBottom()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mInitBottom:I

    return v0
.end method

.method public getRegionHeight()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mHandlerRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public hide(Z)V
    .locals 4
    .param p1, "animation"    # Z

    .prologue
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const v2, 0x3f99999a    # 1.2f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    neg-int v1, v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x7

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public isHintHandlerRect(FF)Z
    .locals 6
    .param p1, "rawX"    # F
    .param p2, "rawY"    # F

    .prologue
    const/4 v3, 0x2

    new-array v0, v3, [I

    .local v0, "location":[I
    invoke-virtual {p0, v0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getLocationInWindow([I)V

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getMeasuredWidth()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mHandlerRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int v1, v3, v4

    .local v1, "startX":I
    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getMeasuredHeight()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mHandlerRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int/2addr v4, v5

    add-int v2, v3, v4

    .local v2, "startY":I
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mHandlerRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mHandlerRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mHandlerRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v1, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mHandlerRect:Landroid/graphics/Rect;

    float-to-int v4, p1

    float-to-int v5, p2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    return v3
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getHeight()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/policy/global/GlobalActionHandlerView;->drawTip(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/android/server/policy/global/GlobalActionHandlerView;->drawTri(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public reBoot()V
    .locals 4

    .prologue
    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const v2, 0x3fe66666    # 1.8f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public setGlobalActionViewManager(Lcom/android/server/policy/global/GlobalActionViewManager;)V
    .locals 0
    .param p1, "viewManager"    # Lcom/android/server/policy/global/GlobalActionViewManager;

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mViewManager:Lcom/android/server/policy/global/GlobalActionViewManager;

    return-void
.end method

.method public setHostViewCallback(Lcom/android/server/policy/global/GlobalActionHandlerView$HostViewCallback;)V
    .locals 0
    .param p1, "hostCallback"    # Lcom/android/server/policy/global/GlobalActionHandlerView$HostViewCallback;

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mHostCallback:Lcom/android/server/policy/global/GlobalActionHandlerView$HostViewCallback;

    return-void
.end method

.method public setInitBottom(I)V
    .locals 0
    .param p1, "initBottom"    # I

    .prologue
    iput p1, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mInitBottom:I

    return-void
.end method

.method public setTriAlpha(I)V
    .locals 3
    .param p1, "alpha"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriColor:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    shl-int/lit8 v2, p1, 0x18

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->invalidate()V

    return-void
.end method

.method public show(Z)V
    .locals 5
    .param p1, "animation"    # Z

    .prologue
    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    neg-int v0, v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x7

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->setTranslationY(F)V

    invoke-virtual {p0, v4}, Lcom/android/server/policy/global/GlobalActionHandlerView;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const v2, 0x3f99999a    # 1.2f

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public shutDown()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x12c

    invoke-virtual {p0}, Lcom/android/server/policy/global/GlobalActionHandlerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v3, 0x3fc00000    # 1.5f

    invoke-direct {v2, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mHandlerRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    const-string v1, "marqueeOffset"

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriMarqueeOffset:I

    aput v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mMaxTriMarqueeOffset:I

    aput v4, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "triMove":Landroid/animation/ObjectAnimator;
    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v2, 0x40200000    # 2.5f

    invoke-direct {v1, v2}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method public startMarquee()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriMoveAlphaOut:Landroid/animation/ObjectAnimator;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mCancel:Z

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriMoveAlphaOut:Landroid/animation/ObjectAnimator;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriMoveAlphaOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mTriMoveAlphaOut:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method public stopMarquee()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mCancel:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionHandlerView;->mCancel:Z

    goto :goto_0
.end method
