.class public Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;
.super Ljava/lang/Object;
.source "TwoLayerEffectByClipDrawable.java"

# interfaces
.implements Lcom/letv/leui/widget/ITwoLayerEffect;


# instance fields
.field private mAnimationTime:J

.field private mBaseHelper:Lcom/letv/leui/widget/BaseSwipeHelper;

.field private mContext:Landroid/content/Context;

.field private mFirstLeftViewInBackId:I

.field private mFirstRightViewInbackId:I

.field private mScreenWidth:I

.field private mSecondLeftViewInbackId:I

.field private mSecondRightViewInbackId:I


# direct methods
.method public constructor <init>(IIIIJLandroid/content/Context;ILcom/letv/leui/widget/BaseSwipeHelper;)V
    .locals 1
    .param p1, "mFirstLeftViewInBackId"    # I
    .param p2, "mSecondLeftViewInbackId"    # I
    .param p3, "mFirstRightViewInbackId"    # I
    .param p4, "mSecondRightViewInbackId"    # I
    .param p5, "pAnimationTime"    # J
    .param p7, "pContext"    # Landroid/content/Context;
    .param p8, "pScreenWidth"    # I
    .param p9, "mHelper"    # Lcom/letv/leui/widget/BaseSwipeHelper;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput p1, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->mFirstLeftViewInBackId:I

    .line 37
    iput p2, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->mSecondLeftViewInbackId:I

    .line 38
    iput p3, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->mFirstRightViewInbackId:I

    .line 39
    iput p4, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->mSecondRightViewInbackId:I

    .line 40
    iput-wide p5, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->mAnimationTime:J

    .line 41
    iput-object p7, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->mContext:Landroid/content/Context;

    .line 42
    iput p8, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->mScreenWidth:I

    .line 43
    iput-object p9, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->mBaseHelper:Lcom/letv/leui/widget/BaseSwipeHelper;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->setViewVisible(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->setViewInvisible(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;)Lcom/letv/leui/widget/BaseSwipeHelper;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->mBaseHelper:Lcom/letv/leui/widget/BaseSwipeHelper;

    return-object v0
.end method

.method private clipBgDrawableByDeltaX(Landroid/view/View;F)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "deltax"    # F

    .prologue
    .line 216
    if-eqz p1, :cond_0

    .line 217
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_0

    .line 218
    const v1, 0x461c4000    # 10000.0f

    mul-float/2addr v1, p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v0, v1

    .line 219
    .local v0, "bgLevel":I
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 222
    .end local v0    # "bgLevel":I
    :cond_0
    return-void
.end method

.method private clipDrawableByDeltaX(Landroid/view/View;F)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;
    .param p2, "abDeltaX"    # F

    .prologue
    const/16 v10, 0x2710

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 194
    if-eqz p1, :cond_0

    instance-of v4, p1, Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    move-object v1, p1

    .line 195
    check-cast v1, Landroid/widget/ImageView;

    .line 196
    .local v1, "imgView":Landroid/widget/ImageView;
    invoke-virtual {v1}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    .line 197
    .local v3, "viewWidth":I
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 198
    .local v0, "drawableWidth":I
    float-to-double v4, p2

    sub-int v6, v3, v0

    int-to-double v6, v6

    mul-double/2addr v6, v8

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 199
    float-to-double v4, p2

    add-int v6, v3, v0

    int-to-double v6, v6

    mul-double/2addr v6, v8

    cmpg-double v4, v4, v6

    if-gez v4, :cond_1

    .line 200
    div-int v4, v10, v0

    int-to-float v4, v4

    mul-float/2addr v4, p2

    mul-int/lit16 v5, v3, 0x1388

    div-int/2addr v5, v0

    rsub-int v5, v5, 0x1388

    int-to-float v5, v5

    add-float/2addr v4, v5

    float-to-int v2, v4

    .line 201
    .local v2, "level":I
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 207
    .end local v0    # "drawableWidth":I
    .end local v1    # "imgView":Landroid/widget/ImageView;
    .end local v2    # "level":I
    .end local v3    # "viewWidth":I
    :cond_0
    :goto_0
    return-void

    .line 203
    .restart local v0    # "drawableWidth":I
    .restart local v1    # "imgView":Landroid/widget/ImageView;
    .restart local v3    # "viewWidth":I
    :cond_1
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0
.end method

.method private dpFromPx(Landroid/content/Context;F)F
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "px"    # F

    .prologue
    .line 183
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float v0, p2, v0

    return v0
.end method

.method private setViewInvisible(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x4

    .line 243
    if-eqz p1, :cond_0

    .line 244
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 245
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 248
    :cond_0
    return-void
.end method

.method private setViewVisible(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 230
    if-eqz p1, :cond_0

    .line 231
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 233
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 234
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 235
    check-cast v0, Landroid/widget/ImageView;

    .line 236
    .local v0, "ImageView":Landroid/widget/ImageView;
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 240
    .end local v0    # "ImageView":Landroid/widget/ImageView;
    :cond_0
    return-void
.end method


# virtual methods
.method public generateRevealAnimateInTwoLayer(ILandroid/view/View;Landroid/view/View;ZZZ)V
    .locals 17
    .param p1, "moveTo"    # I
    .param p2, "mBackView"    # Landroid/view/View;
    .param p3, "view"    # Landroid/view/View;
    .param p4, "swap"    # Z
    .param p5, "swapRight"    # Z
    .param p6, "mOpened"    # Z

    .prologue
    .line 252
    if-nez p2, :cond_0

    .line 387
    :goto_0
    return-void

    .line 255
    :cond_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->mFirstRightViewInbackId:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 256
    .local v6, "firRightImgView":Landroid/view/View;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->mSecondRightViewInbackId:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 257
    .local v5, "secRightImgView":Landroid/view/View;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->mFirstLeftViewInBackId:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 258
    .local v7, "firLeftView":Landroid/view/View;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->mSecondLeftViewInbackId:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 260
    .local v8, "secLeftView":Landroid/view/View;
    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getTranslationX()F

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x1

    move/from16 v0, p1

    int-to-float v4, v0

    aput v4, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v16

    .line 261
    .local v16, "valueAnimator":Landroid/animation/ValueAnimator;
    sget-object v2, Lcom/letv/leui/widget/BaseSwipeHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 262
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->mAnimationTime:J

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 263
    new-instance v2, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$1;

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p3

    invoke-direct/range {v2 .. v11}, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$1;-><init>(Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;ILandroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;ZZLandroid/view/View;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 305
    new-instance v9, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;

    move-object/from16 v10, p0

    move-object/from16 v11, p3

    move-object v12, v6

    move-object v13, v5

    move-object v14, v7

    move-object v15, v8

    invoke-direct/range {v9 .. v15}, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$2;-><init>(Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 386
    invoke-virtual/range {v16 .. v16}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method public generateSwitchAnimateInTwoLayer(Landroid/view/View;Landroid/view/View;Z)V
    .locals 11
    .param p1, "mBackView"    # Landroid/view/View;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "isSwitched"    # Z

    .prologue
    .line 391
    invoke-virtual {p2}, Landroid/view/View;->getTranslationX()F

    move-result v6

    .line 392
    .local v6, "currTranslationX":F
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput v6, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v10

    .line 393
    .local v10, "valueAnimator":Landroid/animation/ValueAnimator;
    iget-wide v0, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->mAnimationTime:J

    invoke-virtual {v10, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 394
    sget-object v0, Lcom/letv/leui/widget/BaseSwipeHelper;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 395
    new-instance v0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$3;

    invoke-direct {v0, p0, p3, p2}, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$3;-><init>(Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;ZLandroid/view/View;)V

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 403
    iget v0, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->mFirstLeftViewInBackId:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 404
    .local v7, "mFirstLeftView":Landroid/view/View;
    instance-of v0, v7, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    move-object v3, v7

    .line 405
    check-cast v3, Landroid/widget/ImageView;

    .line 406
    .local v3, "btnHasRead":Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/ClipDrawable;

    .line 407
    .local v4, "clipDrawable":Landroid/graphics/drawable/ClipDrawable;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/ClipDrawable;

    .line 408
    .local v5, "clipDrawableBg":Landroid/graphics/drawable/ClipDrawable;
    new-instance v0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$4;

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$4;-><init>(Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;Landroid/view/View;Landroid/widget/ImageView;Landroid/graphics/drawable/ClipDrawable;Landroid/graphics/drawable/ClipDrawable;)V

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 446
    .end local v3    # "btnHasRead":Landroid/widget/ImageView;
    .end local v4    # "clipDrawable":Landroid/graphics/drawable/ClipDrawable;
    .end local v5    # "clipDrawableBg":Landroid/graphics/drawable/ClipDrawable;
    :goto_0
    invoke-virtual {v10}, Landroid/animation/ValueAnimator;->start()V

    .line 447
    return-void

    .line 420
    :cond_0
    instance-of v0, v7, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    move-object v9, v7

    .line 421
    check-cast v9, Landroid/widget/TextView;

    .line 422
    .local v9, "mTextView":Landroid/widget/TextView;
    invoke-virtual {v9}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 423
    .local v8, "mTextBack":Landroid/graphics/drawable/Drawable;
    new-instance v0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$5;

    invoke-direct {v0, p0, p2, v8, v9}, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$5;-><init>(Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;Landroid/view/View;Landroid/graphics/drawable/Drawable;Landroid/widget/TextView;)V

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    .line 438
    .end local v8    # "mTextBack":Landroid/graphics/drawable/Drawable;
    .end local v9    # "mTextView":Landroid/widget/TextView;
    :cond_1
    new-instance v0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$6;

    invoke-direct {v0, p0, p2}, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable$6;-><init>(Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;Landroid/view/View;)V

    invoke-virtual {v10, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0
.end method

.method public moveInTwoLayerActionReveal(Landroid/view/View;FFF)V
    .locals 10
    .param p1, "pBackView"    # Landroid/view/View;
    .param p2, "pDeltaX"    # F
    .param p3, "pLeftOffset"    # F
    .param p4, "pRightOffset"    # F

    .prologue
    .line 49
    iget v8, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->mFirstLeftViewInBackId:I

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 50
    .local v3, "mFirstLeftView":Landroid/view/View;
    iget v8, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->mFirstRightViewInbackId:I

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 51
    .local v4, "mFirstRightView":Landroid/view/View;
    iget v8, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->mSecondRightViewInbackId:I

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 52
    .local v6, "mSecondRightView":Landroid/view/View;
    iget v8, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->mSecondLeftViewInbackId:I

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 54
    .local v5, "mSecondLeftView":Landroid/view/View;
    const/4 v8, 0x0

    cmpg-float v8, p2, v8

    if-gez v8, :cond_6

    .line 55
    invoke-direct {p0, v3}, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->setViewInvisible(Landroid/view/View;)V

    .line 56
    invoke-direct {p0, v5}, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->setViewInvisible(Landroid/view/View;)V

    .line 57
    invoke-direct {p0, v4}, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->setViewVisible(Landroid/view/View;)V

    .line 58
    invoke-direct {p0, v6}, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->setViewVisible(Landroid/view/View;)V

    .line 60
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 61
    .local v0, "abDeltaX":F
    iget v8, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->mScreenWidth:I

    int-to-float v8, v8

    sub-float/2addr v8, p3

    cmpg-float v8, v0, v8

    if-gez v8, :cond_4

    .line 62
    if-nez v4, :cond_1

    .line 118
    .end local v0    # "abDeltaX":F
    :cond_0
    :goto_0
    return-void

    .line 65
    .restart local v0    # "abDeltaX":F
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    cmpg-float v8, v0, v8

    if-gtz v8, :cond_2

    .line 66
    invoke-direct {p0, v4, v0}, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->clipBgDrawableByDeltaX(Landroid/view/View;F)V

    .line 67
    invoke-direct {p0, v4, v0}, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->clipDrawableByDeltaX(Landroid/view/View;F)V

    .line 68
    if-eqz v6, :cond_0

    instance-of v8, v6, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    move-object v7, v6

    .line 69
    check-cast v7, Landroid/widget/ImageView;

    .line 70
    .local v7, "secondRightImageView":Landroid/widget/ImageView;
    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 71
    invoke-virtual {v7}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    .line 74
    .end local v7    # "secondRightImageView":Landroid/widget/ImageView;
    :cond_2
    if-eqz v4, :cond_3

    instance-of v8, v4, Landroid/widget/ImageView;

    if-eqz v8, :cond_3

    move-object v2, v4

    .line 75
    check-cast v2, Landroid/widget/ImageView;

    .line 76
    .local v2, "imgView":Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const/16 v9, 0x2710

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 77
    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const/16 v9, 0x2710

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 79
    .end local v2    # "imgView":Landroid/widget/ImageView;
    :cond_3
    if-eqz v6, :cond_0

    .line 80
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float v8, v0, v8

    float-to-int v1, v8

    .line 81
    .local v1, "abDeltaxMinusFirst":I
    int-to-float v8, v1

    invoke-direct {p0, v6, v8}, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->clipBgDrawableByDeltaX(Landroid/view/View;F)V

    .line 82
    int-to-float v8, v1

    invoke-direct {p0, v6, v8}, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->clipDrawableByDeltaX(Landroid/view/View;F)V

    goto :goto_0

    .line 86
    .end local v1    # "abDeltaxMinusFirst":I
    :cond_4
    if-eqz v6, :cond_5

    instance-of v8, v6, Landroid/widget/ImageView;

    if-eqz v8, :cond_5

    move-object v7, v6

    .line 87
    check-cast v7, Landroid/widget/ImageView;

    .line 88
    .restart local v7    # "secondRightImageView":Landroid/widget/ImageView;
    invoke-virtual {v7}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const/16 v9, 0x2710

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 89
    invoke-virtual {v7}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const/16 v9, 0x2710

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 91
    .end local v7    # "secondRightImageView":Landroid/widget/ImageView;
    :cond_5
    if-eqz v4, :cond_0

    instance-of v8, v4, Landroid/widget/ImageView;

    if-eqz v8, :cond_0

    move-object v2, v4

    .line 92
    check-cast v2, Landroid/widget/ImageView;

    .line 93
    .restart local v2    # "imgView":Landroid/widget/ImageView;
    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const/16 v9, 0x2710

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 94
    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const/16 v9, 0x2710

    invoke-virtual {v8, v9}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto/16 :goto_0

    .line 98
    .end local v0    # "abDeltaX":F
    .end local v2    # "imgView":Landroid/widget/ImageView;
    :cond_6
    const/4 v8, 0x0

    cmpl-float v8, p2, v8

    if-lez v8, :cond_8

    .line 99
    invoke-direct {p0, v4}, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->setViewInvisible(Landroid/view/View;)V

    .line 100
    invoke-direct {p0, v6}, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->setViewInvisible(Landroid/view/View;)V

    .line 101
    invoke-direct {p0, v3}, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->setViewVisible(Landroid/view/View;)V

    .line 102
    invoke-direct {p0, v5}, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->setViewVisible(Landroid/view/View;)V

    .line 104
    if-eqz v3, :cond_7

    .line 105
    invoke-direct {p0, v3, p2}, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->clipBgDrawableByDeltaX(Landroid/view/View;F)V

    .line 106
    invoke-direct {p0, v3, p2}, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->clipDrawableByDeltaX(Landroid/view/View;F)V

    .line 108
    :cond_7
    if-eqz v5, :cond_0

    .line 109
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float v8, p2, v8

    invoke-direct {p0, v5, v8}, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->clipBgDrawableByDeltaX(Landroid/view/View;F)V

    .line 110
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    sub-float v8, p2, v8

    invoke-direct {p0, v5, v8}, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->clipDrawableByDeltaX(Landroid/view/View;F)V

    goto/16 :goto_0

    .line 113
    :cond_8
    invoke-direct {p0, v3}, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->setViewInvisible(Landroid/view/View;)V

    .line 114
    invoke-direct {p0, v4}, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->setViewInvisible(Landroid/view/View;)V

    .line 115
    invoke-direct {p0, v6}, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->setViewInvisible(Landroid/view/View;)V

    .line 116
    invoke-direct {p0, v5}, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->setViewInvisible(Landroid/view/View;)V

    goto/16 :goto_0
.end method

.method public moveInTwoLayerActionSwitch(ILandroid/view/View;IFF)V
    .locals 13
    .param p1, "pSwipeMode"    # I
    .param p2, "pBackView"    # Landroid/view/View;
    .param p3, "mFirstLeftViewInBackId"    # I
    .param p4, "pDeltaX"    # F
    .param p5, "mSwipeRightSwitchLine"    # F

    .prologue
    .line 122
    invoke-virtual/range {p2 .. p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 123
    .local v11, "mFirstLeftView":Landroid/view/View;
    instance-of v2, v11, Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    move-object v9, v11

    .line 124
    check-cast v9, Landroid/widget/ImageView;

    .line 125
    .local v9, "firstLeftImageView":Landroid/widget/ImageView;
    const/4 v2, 0x0

    cmpl-float v2, p4, v2

    if-lez v2, :cond_3

    .line 126
    cmpg-float v2, p4, p5

    if-gez v2, :cond_2

    .line 127
    invoke-virtual {v9}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    :cond_0
    move/from16 v0, p4

    invoke-direct {p0, v9, v0}, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->clipBgDrawableByDeltaX(Landroid/view/View;F)V

    .line 131
    move/from16 v0, p4

    invoke-direct {p0, v9, v0}, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->clipDrawableByDeltaX(Landroid/view/View;F)V

    .line 174
    .end local v9    # "firstLeftImageView":Landroid/widget/ImageView;
    :cond_1
    :goto_0
    return-void

    .line 133
    .restart local v9    # "firstLeftImageView":Landroid/widget/ImageView;
    :cond_2
    invoke-virtual {v9}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v5, 0x2710

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 134
    invoke-virtual {v9}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/16 v5, 0x2710

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_0

    .line 137
    :cond_3
    invoke-virtual {v9}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    const/4 v5, 0x4

    if-eq v2, v5, :cond_1

    .line 138
    const/4 v2, 0x4

    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 141
    .end local v9    # "firstLeftImageView":Landroid/widget/ImageView;
    :cond_4
    instance-of v2, v11, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    move-object v10, v11

    .line 142
    check-cast v10, Landroid/widget/TextView;

    .line 144
    .local v10, "firstLeftTextView":Landroid/widget/TextView;
    invoke-virtual {v10}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/ClipDrawable;

    if-eqz v2, :cond_6

    .line 145
    invoke-virtual {v10}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/ClipDrawable;

    .line 161
    .local v8, "clipTextDrawable":Landroid/graphics/drawable/ClipDrawable;
    :goto_1
    const/4 v2, 0x0

    cmpl-float v2, p4, v2

    if-lez v2, :cond_8

    .line 162
    cmpg-float v2, p4, p5

    if-gez v2, :cond_7

    .line 163
    invoke-virtual {v10}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_5

    .line 164
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 166
    :cond_5
    move/from16 v0, p4

    invoke-direct {p0, v10, v0}, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->clipBgDrawableByDeltaX(Landroid/view/View;F)V

    goto :goto_0

    .line 147
    .end local v8    # "clipTextDrawable":Landroid/graphics/drawable/ClipDrawable;
    :cond_6
    new-instance v12, Lcom/letv/leui/widget/TextDrawable;

    iget-object v2, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->mContext:Landroid/content/Context;

    invoke-direct {v12, v2}, Lcom/letv/leui/widget/TextDrawable;-><init>(Landroid/content/Context;)V

    .line 148
    .local v12, "textDrawable":Lcom/letv/leui/widget/TextDrawable;
    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/letv/leui/widget/TextDrawable;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v2, p0, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    invoke-direct {p0, v2, v5}, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->dpFromPx(Landroid/content/Context;F)F

    move-result v2

    invoke-virtual {v12, v2}, Lcom/letv/leui/widget/TextDrawable;->setTextSize(F)V

    .line 150
    invoke-virtual {v10}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/letv/leui/widget/TextDrawable;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 151
    invoke-virtual {v10}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 152
    .local v7, "background":Landroid/graphics/drawable/Drawable;
    new-instance v1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    const/4 v5, 0x0

    aput-object v7, v2, v5

    const/4 v5, 0x1

    aput-object v12, v2, v5

    invoke-direct {v1, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 153
    .local v1, "container":Landroid/graphics/drawable/LayerDrawable;
    invoke-virtual {v10}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v12}, Lcom/letv/leui/widget/TextDrawable;->getIntrinsicWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v3, v2, v5

    .line 154
    .local v3, "leftInset":I
    invoke-virtual {v10}, Landroid/widget/TextView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v12}, Lcom/letv/leui/widget/TextDrawable;->getIntrinsicHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v4, v2, v5

    .line 155
    .local v4, "topInset":I
    const/4 v2, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    .line 157
    new-instance v8, Landroid/graphics/drawable/ClipDrawable;

    const/4 v2, 0x3

    const/4 v5, 0x1

    invoke-direct {v8, v1, v2, v5}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 158
    .restart local v8    # "clipTextDrawable":Landroid/graphics/drawable/ClipDrawable;
    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 159
    const-string v2, ""

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 168
    .end local v1    # "container":Landroid/graphics/drawable/LayerDrawable;
    .end local v3    # "leftInset":I
    .end local v4    # "topInset":I
    .end local v7    # "background":Landroid/graphics/drawable/Drawable;
    .end local v12    # "textDrawable":Lcom/letv/leui/widget/TextDrawable;
    :cond_7
    const/16 v2, 0x2710

    invoke-virtual {v8, v2}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    goto/16 :goto_0

    .line 171
    :cond_8
    invoke-direct {p0, v11}, Lcom/letv/leui/widget/TwoLayerEffectByClipDrawable;->setViewInvisible(Landroid/view/View;)V

    goto/16 :goto_0
.end method
