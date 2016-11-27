.class public Landroid/view/animation/TranslateAnimation;
.super Landroid/view/animation/Animation;
.source "TranslateAnimation.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "TranslateAnimation"


# instance fields
.field protected mFromXDelta:F

.field private mFromXType:I

.field protected mFromXValue:F

.field protected mFromYDelta:F

.field private mFromYType:I

.field protected mFromYValue:F

.field private mPackageName:Ljava/lang/String;

.field private mPerf:Landroid/util/BoostFramework;

.field protected mToXDelta:F

.field private mToXType:I

.field protected mToXValue:F

.field protected mToYDelta:F

.field private mToYType:I

.field protected mToYValue:F

.field private sBoostParamVal:[I

.field private sBoostTimeOut:I


# direct methods
.method public constructor <init>(FFFF)V
    .locals 3
    .param p1, "fromXDelta"    # F
    .param p2, "toXDelta"    # F
    .param p3, "fromYDelta"    # F
    .param p4, "toYDelta"    # F

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    iput-object v2, p0, Landroid/view/animation/TranslateAnimation;->mPackageName:Ljava/lang/String;

    iput-object v2, p0, Landroid/view/animation/TranslateAnimation;->mPerf:Landroid/util/BoostFramework;

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->sBoostTimeOut:I

    iput p1, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    iput p2, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    iput p3, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    iput p4, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    return-void
.end method

.method public constructor <init>(IFIFIFIF)V
    .locals 3
    .param p1, "fromXType"    # I
    .param p2, "fromXValue"    # F
    .param p3, "toXType"    # I
    .param p4, "toXValue"    # F
    .param p5, "fromYType"    # I
    .param p6, "fromYValue"    # F
    .param p7, "toYType"    # I
    .param p8, "toYValue"    # F

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    iput-object v2, p0, Landroid/view/animation/TranslateAnimation;->mPackageName:Ljava/lang/String;

    iput-object v2, p0, Landroid/view/animation/TranslateAnimation;->mPerf:Landroid/util/BoostFramework;

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->sBoostTimeOut:I

    iput p2, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    iput p4, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    iput p6, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    iput p8, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    iput p1, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    iput p3, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    iput p5, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    iput p7, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v3, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    iput v3, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    iput v3, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    iput v3, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    iput-object v4, p0, Landroid/view/animation/TranslateAnimation;->mPackageName:Ljava/lang/String;

    iput-object v4, p0, Landroid/view/animation/TranslateAnimation;->mPerf:Landroid/util/BoostFramework;

    iput v3, p0, Landroid/view/animation/TranslateAnimation;->sBoostTimeOut:I

    sget-object v2, Lcom/android/internal/R$styleable;->TranslateAnimation:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .local v1, "d":Landroid/view/animation/Animation$Description;
    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0, p1}, Landroid/view/animation/TranslateAnimation;->initBoost(Landroid/content/Context;)V

    return-void
.end method

.method private initBoost(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    if-eqz p1, :cond_0

    iget-object v7, p0, Landroid/view/animation/TranslateAnimation;->mPerf:Landroid/util/BoostFramework;

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    .local v2, "bIsPerfBoostEnabled":Z
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x11200cc

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .local v3, "currentActivity":Ljava/lang/String;
    iput-object v3, p0, Landroid/view/animation/TranslateAnimation;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x107007d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, "activityList":[Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v6, v1, v4

    .local v6, "match":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e00cc

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Landroid/view/animation/TranslateAnimation;->sBoostTimeOut:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x107007e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    iput-object v7, p0, Landroid/view/animation/TranslateAnimation;->sBoostParamVal:[I

    iget-object v7, p0, Landroid/view/animation/TranslateAnimation;->mPerf:Landroid/util/BoostFramework;

    if-nez v7, :cond_0

    new-instance v7, Landroid/util/BoostFramework;

    invoke-direct {v7}, Landroid/util/BoostFramework;-><init>()V

    iput-object v7, p0, Landroid/view/animation/TranslateAnimation;->mPerf:Landroid/util/BoostFramework;

    goto :goto_0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private startBoost(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "boostTimeOut":I
    iget-object v1, p0, Landroid/view/animation/TranslateAnimation;->mPerf:Landroid/util/BoostFramework;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->sBoostTimeOut:I

    if-nez v1, :cond_1

    add-int/lit8 v0, p1, 0x14

    :goto_0
    iget-object v1, p0, Landroid/view/animation/TranslateAnimation;->mPerf:Landroid/util/BoostFramework;

    iget-object v2, p0, Landroid/view/animation/TranslateAnimation;->sBoostParamVal:[I

    invoke-virtual {v1, v0, v2}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Landroid/view/animation/TranslateAnimation;->sBoostTimeOut:I

    goto :goto_0
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 5
    .param p1, "interpolatedTime"    # F
    .param p2, "t"    # Landroid/view/animation/Transformation;

    .prologue
    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    .local v0, "dx":F
    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    .local v1, "dy":F
    iget v2, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    iget v3, p0, Landroid/view/animation/TranslateAnimation;->mToXDelta:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    iget v3, p0, Landroid/view/animation/TranslateAnimation;->mToXDelta:F

    iget v4, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float v0, v2, v3

    :cond_0
    iget v2, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    iget v3, p0, Landroid/view/animation/TranslateAnimation;->mToYDelta:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    iget v3, p0, Landroid/view/animation/TranslateAnimation;->mToYDelta:F

    iget v4, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float v1, v2, v3

    :cond_1
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    return-void
.end method

.method public initialize(IIII)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/TranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/TranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXDelta:F

    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Landroid/view/animation/TranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Landroid/view/animation/TranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYDelta:F

    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resID"    # I

    .prologue
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/content/Context;I)V

    invoke-direct {p0, p1}, Landroid/view/animation/TranslateAnimation;->initBoost(Landroid/content/Context;)V

    return-void
.end method

.method public setStartTime(J)V
    .locals 3
    .param p1, "startTimeMillis"    # J

    .prologue
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    invoke-virtual {p0}, Landroid/view/animation/TranslateAnimation;->getDuration()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/view/animation/TranslateAnimation;->startBoost(I)V

    return-void
.end method
