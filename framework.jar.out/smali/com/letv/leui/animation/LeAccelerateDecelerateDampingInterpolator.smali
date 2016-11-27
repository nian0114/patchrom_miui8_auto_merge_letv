.class public Lcom/letv/leui/animation/LeAccelerateDecelerateDampingInterpolator;
.super Ljava/lang/Object;
.source "LeAccelerateDecelerateDampingInterpolator.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static mAdjustTime:F


# instance fields
.field private mAdjustFactor:F

.field private mDivideTime:F

.field private mExtend:F

.field private mFactor:F

.field private mInterpolator1:Landroid/view/animation/Interpolator;

.field private mInterpolator2:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const v0, 0x3e99999a    # 0.3f

    sput v0, Lcom/letv/leui/animation/LeAccelerateDecelerateDampingInterpolator;->mAdjustTime:F

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 3
    .param p1, "divideTime"    # F
    .param p2, "extend"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/letv/leui/animation/LeAccelerateDecelerateDampingInterpolator;->mDivideTime:F

    iput p2, p0, Lcom/letv/leui/animation/LeAccelerateDecelerateDampingInterpolator;->mExtend:F

    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/animation/LeAccelerateDecelerateDampingInterpolator;->mInterpolator1:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/letv/leui/animation/LeDampingInterpolator;

    invoke-direct {v0}, Lcom/letv/leui/animation/LeDampingInterpolator;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/animation/LeAccelerateDecelerateDampingInterpolator;->mInterpolator2:Landroid/view/animation/Interpolator;

    const v0, 0x3e12d949

    iput v0, p0, Lcom/letv/leui/animation/LeAccelerateDecelerateDampingInterpolator;->mAdjustFactor:F

    iget v0, p0, Lcom/letv/leui/animation/LeAccelerateDecelerateDampingInterpolator;->mAdjustFactor:F

    sub-float v0, v2, v0

    iget v1, p0, Lcom/letv/leui/animation/LeAccelerateDecelerateDampingInterpolator;->mDivideTime:F

    sub-float v1, v2, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/letv/leui/animation/LeAccelerateDecelerateDampingInterpolator;->mFactor:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/android/internal/R$styleable;->LeAccelerateDecelerateDampingInterpolator:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/letv/leui/animation/LeAccelerateDecelerateDampingInterpolator;->mDivideTime:F

    const/4 v1, 0x1

    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/letv/leui/animation/LeAccelerateDecelerateDampingInterpolator;->mExtend:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/animation/LeAccelerateDecelerateDampingInterpolator;->mInterpolator1:Landroid/view/animation/Interpolator;

    new-instance v1, Lcom/letv/leui/animation/LeDampingInterpolator;

    invoke-direct {v1}, Lcom/letv/leui/animation/LeDampingInterpolator;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/animation/LeAccelerateDecelerateDampingInterpolator;->mInterpolator2:Landroid/view/animation/Interpolator;

    const v1, 0x3e12d949

    iput v1, p0, Lcom/letv/leui/animation/LeAccelerateDecelerateDampingInterpolator;->mAdjustFactor:F

    iget v1, p0, Lcom/letv/leui/animation/LeAccelerateDecelerateDampingInterpolator;->mAdjustFactor:F

    sub-float v1, v3, v1

    iget v2, p0, Lcom/letv/leui/animation/LeAccelerateDecelerateDampingInterpolator;->mDivideTime:F

    sub-float v2, v3, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/letv/leui/animation/LeAccelerateDecelerateDampingInterpolator;->mFactor:F

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "theme"    # Landroid/content/res/Resources$Theme;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    sget-object v1, Lcom/android/internal/R$styleable;->LeAccelerateDecelerateDampingInterpolator:[I

    invoke-virtual {p2, p3, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .local v0, "a":Landroid/content/res/TypedArray;
    :goto_0
    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/letv/leui/animation/LeAccelerateDecelerateDampingInterpolator;->mDivideTime:F

    const/4 v1, 0x1

    const v2, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/letv/leui/animation/LeAccelerateDecelerateDampingInterpolator;->mExtend:F

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/animation/LeAccelerateDecelerateDampingInterpolator;->mInterpolator1:Landroid/view/animation/Interpolator;

    new-instance v1, Lcom/letv/leui/animation/LeDampingInterpolator;

    invoke-direct {v1}, Lcom/letv/leui/animation/LeDampingInterpolator;-><init>()V

    iput-object v1, p0, Lcom/letv/leui/animation/LeAccelerateDecelerateDampingInterpolator;->mInterpolator2:Landroid/view/animation/Interpolator;

    const v1, 0x3e12d949

    iput v1, p0, Lcom/letv/leui/animation/LeAccelerateDecelerateDampingInterpolator;->mAdjustFactor:F

    iget v1, p0, Lcom/letv/leui/animation/LeAccelerateDecelerateDampingInterpolator;->mAdjustFactor:F

    sub-float v1, v3, v1

    iget v2, p0, Lcom/letv/leui/animation/LeAccelerateDecelerateDampingInterpolator;->mDivideTime:F

    sub-float v2, v3, v2

    div-float/2addr v1, v2

    iput v1, p0, Lcom/letv/leui/animation/LeAccelerateDecelerateDampingInterpolator;->mFactor:F

    return-void

    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    sget-object v1, Lcom/android/internal/R$styleable;->LeAccelerateDecelerateDampingInterpolator:[I

    invoke-virtual {p1, p3, v1}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .restart local v0    # "a":Landroid/content/res/TypedArray;
    goto :goto_0
.end method

.method public static getDefaultInterpolator()Landroid/view/animation/Interpolator;
    .locals 3

    .prologue
    new-instance v0, Lcom/letv/leui/animation/LeAccelerateDecelerateDampingInterpolator;

    const/high16 v1, 0x3f000000    # 0.5f

    const v2, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/animation/LeAccelerateDecelerateDampingInterpolator;-><init>(FF)V

    return-object v0
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 5
    .param p1, "t"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    iget v0, p0, Lcom/letv/leui/animation/LeAccelerateDecelerateDampingInterpolator;->mDivideTime:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/letv/leui/animation/LeAccelerateDecelerateDampingInterpolator;->mExtend:F

    add-float/2addr v0, v4

    iget-object v1, p0, Lcom/letv/leui/animation/LeAccelerateDecelerateDampingInterpolator;->mInterpolator1:Landroid/view/animation/Interpolator;

    iget v2, p0, Lcom/letv/leui/animation/LeAccelerateDecelerateDampingInterpolator;->mDivideTime:F

    div-float v2, p1, v2

    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    mul-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/letv/leui/animation/LeAccelerateDecelerateDampingInterpolator;->mExtend:F

    iget-object v1, p0, Lcom/letv/leui/animation/LeAccelerateDecelerateDampingInterpolator;->mInterpolator2:Landroid/view/animation/Interpolator;

    iget v2, p0, Lcom/letv/leui/animation/LeAccelerateDecelerateDampingInterpolator;->mDivideTime:F

    sub-float v2, p1, v2

    iget v3, p0, Lcom/letv/leui/animation/LeAccelerateDecelerateDampingInterpolator;->mFactor:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/letv/leui/animation/LeAccelerateDecelerateDampingInterpolator;->mAdjustFactor:F

    add-float/2addr v2, v3

    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    mul-float/2addr v0, v1

    add-float/2addr v0, v4

    goto :goto_0
.end method
