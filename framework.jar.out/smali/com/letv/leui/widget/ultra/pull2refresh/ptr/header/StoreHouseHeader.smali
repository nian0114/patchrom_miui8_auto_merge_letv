.class public Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;
.super Landroid/view/View;
.source "StoreHouseHeader.java"

# interfaces
.implements Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrUIHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$1;,
        Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;
    }
.end annotation


# instance fields
.field private mAniController:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;

.field private mBarDarkAlpha:F

.field private mDrawZoneHeight:I

.field private mDrawZoneWidth:I

.field private mDropHeight:I

.field private mFromAlpha:F

.field private mHorizontalRandomness:I

.field private mInternalAnimationFactor:F

.field private mIsInLoading:Z

.field public mItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLineWidth:I

.field private mLoadingAniDuration:I

.field private mLoadingAniItemDuration:I

.field private mLoadingAniSegDuration:I

.field private mOffsetX:I

.field private mOffsetY:I

.field private mProgress:F

.field private mScale:F

.field private mTextColor:I

.field private mToAlpha:F

.field private mTransformation:Landroid/view/animation/Transformation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v5, 0x3e8

    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3ecccccd    # 0.4f

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mItemList:Ljava/util/ArrayList;

    iput v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mLineWidth:I

    iput v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mScale:F

    iput v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mDropHeight:I

    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mInternalAnimationFactor:F

    iput v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mHorizontalRandomness:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mProgress:F

    iput v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mDrawZoneWidth:I

    iput v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mDrawZoneHeight:I

    iput v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mOffsetX:I

    iput v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mOffsetY:I

    iput v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mBarDarkAlpha:F

    iput v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mFromAlpha:F

    iput v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mToAlpha:F

    iput v5, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mLoadingAniDuration:I

    iput v5, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mLoadingAniSegDuration:I

    const/16 v0, 0x190

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mLoadingAniItemDuration:I

    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mTransformation:Landroid/view/animation/Transformation;

    iput-boolean v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mIsInLoading:Z

    new-instance v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;-><init>(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$1;)V

    iput-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mAniController:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;

    iput v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mTextColor:I

    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/16 v5, 0x3e8

    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3ecccccd    # 0.4f

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mItemList:Ljava/util/ArrayList;

    iput v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mLineWidth:I

    iput v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mScale:F

    iput v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mDropHeight:I

    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mInternalAnimationFactor:F

    iput v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mHorizontalRandomness:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mProgress:F

    iput v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mDrawZoneWidth:I

    iput v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mDrawZoneHeight:I

    iput v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mOffsetX:I

    iput v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mOffsetY:I

    iput v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mBarDarkAlpha:F

    iput v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mFromAlpha:F

    iput v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mToAlpha:F

    iput v5, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mLoadingAniDuration:I

    iput v5, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mLoadingAniSegDuration:I

    const/16 v0, 0x190

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mLoadingAniItemDuration:I

    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mTransformation:Landroid/view/animation/Transformation;

    iput-boolean v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mIsInLoading:Z

    new-instance v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;-><init>(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$1;)V

    iput-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mAniController:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;

    iput v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mTextColor:I

    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/16 v5, 0x3e8

    const/high16 v4, 0x3f800000    # 1.0f

    const v3, 0x3ecccccd    # 0.4f

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mItemList:Ljava/util/ArrayList;

    iput v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mLineWidth:I

    iput v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mScale:F

    iput v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mDropHeight:I

    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mInternalAnimationFactor:F

    iput v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mHorizontalRandomness:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mProgress:F

    iput v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mDrawZoneWidth:I

    iput v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mDrawZoneHeight:I

    iput v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mOffsetX:I

    iput v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mOffsetY:I

    iput v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mBarDarkAlpha:F

    iput v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mFromAlpha:F

    iput v3, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mToAlpha:F

    iput v5, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mLoadingAniDuration:I

    iput v5, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mLoadingAniSegDuration:I

    const/16 v0, 0x190

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mLoadingAniItemDuration:I

    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mTransformation:Landroid/view/animation/Transformation;

    iput-boolean v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mIsInLoading:Z

    new-instance v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;-><init>(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$1;)V

    iput-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mAniController:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;

    iput v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mTextColor:I

    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->initView()V

    return-void
.end method

.method static synthetic access$300(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mLoadingAniDuration:I

    return v0
.end method

.method static synthetic access$400(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mLoadingAniSegDuration:I

    return v0
.end method

.method static synthetic access$500(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mLoadingAniItemDuration:I

    return v0
.end method

.method static synthetic access$600(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;)F
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mFromAlpha:F

    return v0
.end method

.method static synthetic access$700(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;)F
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mToAlpha:F

    return v0
.end method

.method private beginLoading()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mIsInLoading:Z

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mAniController:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;

    # invokes: Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;->start()V
    invoke-static {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;->access$100(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->invalidate()V

    return-void
.end method

.method private getBottomOffset()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->getPaddingBottom()I

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrLocalDisplay;->dp2px(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private getTopOffset()I
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->getPaddingTop()I

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrLocalDisplay;->dp2px(F)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private initView()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrLocalDisplay;->init(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrLocalDisplay;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mLineWidth:I

    const/high16 v0, 0x42200000    # 40.0f

    invoke-static {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrLocalDisplay;->dp2px(F)I

    move-result v0

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mDropHeight:I

    sget v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrLocalDisplay;->SCREEN_WIDTH_PIXELS:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mHorizontalRandomness:I

    return-void
.end method

.method private loadFinish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mIsInLoading:Z

    iget-object v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mAniController:Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;

    # invokes: Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;->stop()V
    invoke-static {v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;->access$200(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader$AniController;)V

    return-void
.end method

.method private setProgress(F)V
    .locals 0
    .param p1, "progress"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mProgress:F

    return-void
.end method


# virtual methods
.method public getLoadingAniDuration()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mLoadingAniDuration:I

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mScale:F

    return v0
.end method

.method public initWithPointList(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[F>;)V"
        }
    .end annotation

    .prologue
    .local p1, "pointList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[F>;"
    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v7, 0x0

    .local v7, "drawWidth":F
    const/4 v6, 0x0

    .local v6, "drawHeight":F
    iget-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    move v9, v10

    .local v9, "shouldLayout":Z
    :goto_0
    iget-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [F

    .local v8, "line":[F
    new-instance v2, Landroid/graphics/PointF;

    aget v4, v8, v11

    invoke-static {v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrLocalDisplay;->dp2px(F)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mScale:F

    mul-float/2addr v4, v5

    aget v5, v8, v10

    invoke-static {v5}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrLocalDisplay;->dp2px(F)I

    move-result v5

    int-to-float v5, v5

    iget v12, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mScale:F

    mul-float/2addr v5, v12

    invoke-direct {v2, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .local v2, "startPoint":Landroid/graphics/PointF;
    new-instance v3, Landroid/graphics/PointF;

    const/4 v4, 0x2

    aget v4, v8, v4

    invoke-static {v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrLocalDisplay;->dp2px(F)I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mScale:F

    mul-float/2addr v4, v5

    const/4 v5, 0x3

    aget v5, v8, v5

    invoke-static {v5}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/util/PtrLocalDisplay;->dp2px(F)I

    move-result v5

    int-to-float v5, v5

    iget v12, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mScale:F

    mul-float/2addr v5, v12

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .local v3, "endPoint":Landroid/graphics/PointF;
    iget v4, v2, Landroid/graphics/PointF;->x:F

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget v4, v3, Landroid/graphics/PointF;->x:F

    invoke-static {v7, v4}, Ljava/lang/Math;->max(FF)F

    move-result v7

    iget v4, v2, Landroid/graphics/PointF;->y:F

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iget v4, v3, Landroid/graphics/PointF;->y:F

    invoke-static {v6, v4}, Ljava/lang/Math;->max(FF)F

    move-result v6

    new-instance v0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;

    iget v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mTextColor:I

    iget v5, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mLineWidth:I

    invoke-direct/range {v0 .. v5}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;-><init>(ILandroid/graphics/PointF;Landroid/graphics/PointF;II)V

    .local v0, "item":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;
    iget v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mHorizontalRandomness:I

    invoke-virtual {v0, v4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;->resetPosition(I)V

    iget-object v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "item":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;
    .end local v1    # "i":I
    .end local v2    # "startPoint":Landroid/graphics/PointF;
    .end local v3    # "endPoint":Landroid/graphics/PointF;
    .end local v8    # "line":[F
    .end local v9    # "shouldLayout":Z
    :cond_0
    move v9, v11

    goto :goto_0

    .restart local v1    # "i":I
    .restart local v9    # "shouldLayout":Z
    :cond_1
    float-to-double v4, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iput v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mDrawZoneWidth:I

    float-to-double v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    iput v4, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mDrawZoneHeight:I

    if-eqz v9, :cond_2

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->requestLayout()V

    :cond_2
    return-void
.end method

.method public initWithString(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const/16 v0, 0x19

    invoke-virtual {p0, p1, v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->initWithString(Ljava/lang/String;I)V

    return-void
.end method

.method public initWithString(Ljava/lang/String;I)V
    .locals 3
    .param p1, "str"    # Ljava/lang/String;
    .param p2, "fontSize"    # I

    .prologue
    int-to-float v1, p2

    const v2, 0x3c23d70a    # 0.01f

    mul-float/2addr v1, v2

    const/16 v2, 0xe

    invoke-static {p1, v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHousePath;->getPath(Ljava/lang/String;FI)Ljava/util/ArrayList;

    move-result-object v0

    .local v0, "pointList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[F>;"
    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->initWithPointList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public initWithStringArray(I)V
    .locals 9
    .param p1, "id"    # I

    .prologue
    const/4 v8, 0x4

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .local v4, "points":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "pointList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[F>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, v4

    if-ge v1, v6, :cond_1

    aget-object v6, v4, v1

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .local v5, "x":[Ljava/lang/String;
    new-array v0, v8, [F

    .local v0, "f":[F
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v8, :cond_0

    aget-object v6, v5, v2

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    aput v6, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0    # "f":[F
    .end local v2    # "j":I
    .end local v5    # "x":[Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v3}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->initWithPointList(Ljava/util/ArrayList;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v7, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mProgress:F

    .local v7, "progress":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .local v0, "c1":I
    iget-object v11, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "len":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_5

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v11, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;

    .local v10, "storeHouseBarItem":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;
    iget v11, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mOffsetX:I

    int-to-float v11, v11

    iget-object v12, v10, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;->midPoint:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->x:F

    add-float v5, v11, v12

    .local v5, "offsetX":F
    iget v11, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mOffsetY:I

    int-to-float v11, v11

    iget-object v12, v10, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;->midPoint:Landroid/graphics/PointF;

    iget v12, v12, Landroid/graphics/PointF;->y:F

    add-float v6, v11, v12

    .local v6, "offsetY":F
    iget-boolean v11, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mIsInLoading:Z

    if-eqz v11, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->getDrawingTime()J

    move-result-wide v12

    iget-object v11, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v10, v12, v13, v11}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;->getTransformation(JLandroid/view/animation/Transformation;)Z

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_1
    invoke-virtual {v10, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    cmpl-float v11, v7, v11

    if-nez v11, :cond_1

    iget v11, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mHorizontalRandomness:I

    invoke-virtual {v10, v11}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;->resetPosition(I)V

    goto :goto_2

    :cond_1
    const/high16 v11, 0x3f800000    # 1.0f

    iget v12, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mInternalAnimationFactor:F

    sub-float/2addr v11, v12

    int-to-float v12, v2

    mul-float/2addr v11, v12

    int-to-float v12, v3

    div-float v9, v11, v12

    .local v9, "startPadding":F
    const/high16 v11, 0x3f800000    # 1.0f

    iget v12, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mInternalAnimationFactor:F

    sub-float/2addr v11, v12

    sub-float v1, v11, v9

    .local v1, "endPadding":F
    const/high16 v11, 0x3f800000    # 1.0f

    cmpl-float v11, v7, v11

    if-eqz v11, :cond_2

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v11, v1

    cmpl-float v11, v7, v11

    if-ltz v11, :cond_3

    :cond_2
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    iget v11, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mBarDarkAlpha:F

    invoke-virtual {v10, v11}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;->setAlpha(F)V

    goto :goto_1

    :cond_3
    cmpg-float v11, v7, v9

    if-gtz v11, :cond_4

    const/4 v8, 0x0

    .local v8, "realProgress":F
    :goto_3
    iget v11, v10, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;->translationX:F

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v8

    mul-float/2addr v11, v12

    add-float/2addr v5, v11

    iget v11, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mDropHeight:I

    neg-int v11, v11

    int-to-float v11, v11

    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, v8

    mul-float/2addr v11, v12

    add-float/2addr v6, v11

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .local v4, "matrix":Landroid/graphics/Matrix;
    const/high16 v11, 0x43b40000    # 360.0f

    mul-float/2addr v11, v8

    invoke-virtual {v4, v11}, Landroid/graphics/Matrix;->postRotate(F)Z

    invoke-virtual {v4, v8, v8}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    iget v11, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mBarDarkAlpha:F

    mul-float/2addr v11, v8

    invoke-virtual {v10, v11}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;->setAlpha(F)V

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    goto :goto_1

    .end local v4    # "matrix":Landroid/graphics/Matrix;
    .end local v8    # "realProgress":F
    :cond_4
    const/high16 v11, 0x3f800000    # 1.0f

    sub-float v12, v7, v9

    iget v13, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mInternalAnimationFactor:F

    div-float/2addr v12, v13

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v8

    .restart local v8    # "realProgress":F
    goto :goto_3

    .end local v1    # "endPadding":F
    .end local v5    # "offsetX":F
    .end local v6    # "offsetY":F
    .end local v8    # "realProgress":F
    .end local v9    # "startPadding":F
    .end local v10    # "storeHouseBarItem":Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;
    :cond_5
    iget-boolean v11, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mIsInLoading:Z

    if-eqz v11, :cond_6

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->invalidate()V

    :cond_6
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->getTopOffset()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mDrawZoneHeight:I

    add-int/2addr v1, v2

    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->getBottomOffset()I

    move-result v2

    add-int v0, v1, v2

    .local v0, "height":I
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mDrawZoneWidth:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mOffsetX:I

    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->getTopOffset()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mOffsetY:I

    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->getTopOffset()I

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mDropHeight:I

    return-void
.end method

.method public onUIPositionChange(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;ZBLcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;)V
    .locals 3
    .param p1, "frame"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;
    .param p2, "isUnderTouch"    # Z
    .param p3, "status"    # B
    .param p4, "ptrIndicator"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p4}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/indicator/PtrIndicator;->getCurrentPercent()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .local v0, "currentPercent":F
    invoke-direct {p0, v0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->setProgress(F)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->invalidate()V

    return-void
.end method

.method public onUIRefreshBegin(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V
    .locals 0
    .param p1, "frame"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->beginLoading()V

    return-void
.end method

.method public onUIRefreshComplete(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V
    .locals 0
    .param p1, "frame"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->loadFinish()V

    return-void
.end method

.method public onUIRefreshPrepare(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V
    .locals 0
    .param p1, "frame"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    .prologue
    return-void
.end method

.method public onUIReset(Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;)V
    .locals 3
    .param p1, "frame"    # Lcom/letv/leui/widget/ultra/pull2refresh/ptr/PtrFrameLayout;

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->loadFinish()V

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;

    iget v2, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mHorizontalRandomness:I

    invoke-virtual {v1, v2}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;->resetPosition(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDropHeight(I)Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;
    .locals 0
    .param p1, "height"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mDropHeight:I

    return-object p0
.end method

.method public setLineWidth(I)Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;
    .locals 2
    .param p1, "width"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mLineWidth:I

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;

    invoke-virtual {v1, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;->setLineWidth(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setLoadingAniDuration(I)V
    .locals 0
    .param p1, "duration"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mLoadingAniDuration:I

    iput p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mLoadingAniSegDuration:I

    return-void
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mScale:F

    return-void
.end method

.method public setTextColor(I)Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;
    .locals 2
    .param p1, "color"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mTextColor:I

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseHeader;->mItemList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;

    invoke-virtual {v1, p1}, Lcom/letv/leui/widget/ultra/pull2refresh/ptr/header/StoreHouseBarItem;->setColor(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
