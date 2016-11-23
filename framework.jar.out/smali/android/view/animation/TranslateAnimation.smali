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

    .line 117
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 36
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    .line 37
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    .line 39
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    .line 40
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    .line 43
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    .line 45
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    .line 48
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    .line 50
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    .line 204
    iput-object v2, p0, Landroid/view/animation/TranslateAnimation;->mPackageName:Ljava/lang/String;

    .line 205
    iput-object v2, p0, Landroid/view/animation/TranslateAnimation;->mPerf:Landroid/util/BoostFramework;

    .line 206
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->sBoostTimeOut:I

    .line 118
    iput p1, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    .line 119
    iput p2, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    .line 120
    iput p3, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    .line 121
    iput p4, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    .line 123
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    .line 124
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    .line 125
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    .line 126
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    .line 133
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

    .line 164
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 36
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    .line 37
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    .line 39
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    .line 40
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    .line 43
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    .line 45
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    .line 48
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    .line 50
    iput v1, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    .line 204
    iput-object v2, p0, Landroid/view/animation/TranslateAnimation;->mPackageName:Ljava/lang/String;

    .line 205
    iput-object v2, p0, Landroid/view/animation/TranslateAnimation;->mPerf:Landroid/util/BoostFramework;

    .line 206
    iput v0, p0, Landroid/view/animation/TranslateAnimation;->sBoostTimeOut:I

    .line 166
    iput p2, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    .line 167
    iput p4, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    .line 168
    iput p6, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    .line 169
    iput p8, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    .line 171
    iput p1, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    .line 172
    iput p3, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    .line 173
    iput p5, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    .line 174
    iput p7, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    .line 175
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

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/view/animation/Animation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput v3, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    .line 37
    iput v3, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    .line 39
    iput v3, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    .line 40
    iput v3, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    .line 43
    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    .line 45
    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    .line 48
    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    .line 50
    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    .line 204
    iput-object v4, p0, Landroid/view/animation/TranslateAnimation;->mPackageName:Ljava/lang/String;

    .line 205
    iput-object v4, p0, Landroid/view/animation/TranslateAnimation;->mPerf:Landroid/util/BoostFramework;

    .line 206
    iput v3, p0, Landroid/view/animation/TranslateAnimation;->sBoostTimeOut:I

    .line 72
    sget-object v2, Lcom/android/internal/R$styleable;->TranslateAnimation:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 75
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .line 77
    .local v1, "d":Landroid/view/animation/Animation$Description;
    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    .line 78
    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    .line 80
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .line 82
    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    .line 83
    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    .line 85
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .line 87
    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    .line 88
    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    .line 90
    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    invoke-static {v2}, Landroid/view/animation/Animation$Description;->parseValue(Landroid/util/TypedValue;)Landroid/view/animation/Animation$Description;

    move-result-object v1

    .line 92
    iget v2, v1, Landroid/view/animation/Animation$Description;->type:I

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    .line 93
    iget v2, v1, Landroid/view/animation/Animation$Description;->value:F

    iput v2, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    .line 95
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    invoke-direct {p0, p1}, Landroid/view/animation/TranslateAnimation;->initBoost(Landroid/content/Context;)V

    .line 103
    return-void
.end method

.method private initBoost(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 210
    if-eqz p1, :cond_0

    iget-object v7, p0, Landroid/view/animation/TranslateAnimation;->mPerf:Landroid/util/BoostFramework;

    if-eqz v7, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 212
    :cond_1
    const/4 v2, 0x0

    .line 213
    .local v2, "bIsPerfBoostEnabled":Z
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x11200d0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    .line 215
    if-eqz v2, :cond_0

    .line 216
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, "currentActivity":Ljava/lang/String;
    iput-object v3, p0, Landroid/view/animation/TranslateAnimation;->mPackageName:Ljava/lang/String;

    .line 218
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x107007f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 222
    .local v0, "activityList":[Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 223
    move-object v1, v0

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_0

    aget-object v6, v1, v4

    .line 224
    .local v6, "match":Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    .line 225
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e00cf

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, p0, Landroid/view/animation/TranslateAnimation;->sBoostTimeOut:I

    .line 227
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1070080

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    iput-object v7, p0, Landroid/view/animation/TranslateAnimation;->sBoostParamVal:[I

    .line 229
    iget-object v7, p0, Landroid/view/animation/TranslateAnimation;->mPerf:Landroid/util/BoostFramework;

    if-nez v7, :cond_0

    .line 230
    new-instance v7, Landroid/util/BoostFramework;

    invoke-direct {v7}, Landroid/util/BoostFramework;-><init>()V

    iput-object v7, p0, Landroid/view/animation/TranslateAnimation;->mPerf:Landroid/util/BoostFramework;

    goto :goto_0

    .line 223
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private startBoost(I)V
    .locals 3
    .param p1, "duration"    # I

    .prologue
    .line 245
    const/4 v0, 0x0

    .line 246
    .local v0, "boostTimeOut":I
    iget-object v1, p0, Landroid/view/animation/TranslateAnimation;->mPerf:Landroid/util/BoostFramework;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 247
    iget v1, p0, Landroid/view/animation/TranslateAnimation;->sBoostTimeOut:I

    if-nez v1, :cond_1

    .line 250
    add-int/lit8 v0, p1, 0x14

    .line 257
    :goto_0
    iget-object v1, p0, Landroid/view/animation/TranslateAnimation;->mPerf:Landroid/util/BoostFramework;

    iget-object v2, p0, Landroid/view/animation/TranslateAnimation;->sBoostParamVal:[I

    invoke-virtual {v1, v0, v2}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    .line 259
    :cond_0
    return-void

    .line 253
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
    .line 180
    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    .line 181
    .local v0, "dx":F
    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    .line 182
    .local v1, "dy":F
    iget v2, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    iget v3, p0, Landroid/view/animation/TranslateAnimation;->mToXDelta:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 183
    iget v2, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    iget v3, p0, Landroid/view/animation/TranslateAnimation;->mToXDelta:F

    iget v4, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float v0, v2, v3

    .line 185
    :cond_0
    iget v2, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    iget v3, p0, Landroid/view/animation/TranslateAnimation;->mToYDelta:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 186
    iget v2, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    iget v3, p0, Landroid/view/animation/TranslateAnimation;->mToYDelta:F

    iget v4, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float v1, v2, v3

    .line 188
    :cond_1
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 189
    return-void
.end method

.method public initialize(IIII)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "parentWidth"    # I
    .param p4, "parentHeight"    # I

    .prologue
    .line 193
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 194
    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXType:I

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mFromXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/TranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromXDelta:F

    .line 195
    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mToXType:I

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mToXValue:F

    invoke-virtual {p0, v0, v1, p1, p3}, Landroid/view/animation/TranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToXDelta:F

    .line 196
    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYType:I

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mFromYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Landroid/view/animation/TranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mFromYDelta:F

    .line 197
    iget v0, p0, Landroid/view/animation/TranslateAnimation;->mToYType:I

    iget v1, p0, Landroid/view/animation/TranslateAnimation;->mToYValue:F

    invoke-virtual {p0, v0, v1, p2, p4}, Landroid/view/animation/TranslateAnimation;->resolveSize(IFII)F

    move-result v0

    iput v0, p0, Landroid/view/animation/TranslateAnimation;->mToYDelta:F

    .line 198
    return-void
.end method

.method public setInterpolator(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resID"    # I

    .prologue
    .line 263
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->setInterpolator(Landroid/content/Context;I)V

    .line 265
    invoke-direct {p0, p1}, Landroid/view/animation/TranslateAnimation;->initBoost(Landroid/content/Context;)V

    .line 266
    return-void
.end method

.method public setStartTime(J)V
    .locals 3
    .param p1, "startTimeMillis"    # J

    .prologue
    .line 270
    invoke-super {p0, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 272
    invoke-virtual {p0}, Landroid/view/animation/TranslateAnimation;->getDuration()J

    move-result-wide v0

    long-to-int v0, v0

    invoke-direct {p0, v0}, Landroid/view/animation/TranslateAnimation;->startBoost(I)V

    .line 273
    return-void
.end method
