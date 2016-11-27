.class public Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;
.super Ljava/lang/Object;
.source "LeTextOpt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/text/LeTextOpt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnapShotCatcher"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCanvas:Landroid/graphics/Canvas;

.field private mHeight:I

.field private mLocInWindow:[I

.field private mSize:I

.field private mView:Landroid/view/View;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "size"    # I

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->mView:Landroid/view/View;

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->mCanvas:Landroid/graphics/Canvas;

    iput p2, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->mSize:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->mLocInWindow:[I

    return-void
.end method

.method static synthetic access$000(Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;F)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;
    .param p1, "x1"    # F

    .prologue
    invoke-direct {p0, p1}, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->initBitmap(F)V

    return-void
.end method

.method static synthetic access$100(Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;II)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->createSnapShot(II)V

    return-void
.end method

.method private createSnapShot(II)V
    .locals 12
    .param p1, "pivotX"    # I
    .param p2, "pivotY"    # I

    .prologue
    iget-object v9, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v9, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v9, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v7

    .local v7, "viewWidth":I
    iget-object v9, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v4

    .local v4, "viewHeight":I
    iget v8, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->mWidth:I

    .local v8, "width":I
    iget v0, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->mHeight:I

    .local v0, "height":I
    iget-object v9, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->mView:Landroid/view/View;

    iget-object v10, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->mLocInWindow:[I

    invoke-virtual {v9, v10}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v9, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->mLocInWindow:[I

    const/4 v10, 0x0

    aget v5, v9, v10

    .local v5, "viewPosX":I
    iget-object v9, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->mLocInWindow:[I

    const/4 v10, 0x1

    aget v6, v9, v10

    .local v6, "viewPosY":I
    div-int/lit8 v9, v8, 0x2

    sub-int v1, p1, v9

    .local v1, "offsetX":I
    div-int/lit8 v9, v0, 0x2

    sub-int v2, p2, v9

    .local v2, "offsetY":I
    iget-object v9, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v3

    .local v3, "rootView":Landroid/view/View;
    iget-object v9, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->mLocInWindow:[I

    invoke-virtual {v3, v9}, Landroid/view/View;->getLocationInWindow([I)V

    add-int/2addr v5, v1

    add-int/2addr v6, v2

    iget-object v9, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->mLocInWindow:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    if-ge v5, v9, :cond_1

    iget-object v9, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->mLocInWindow:[I

    const/4 v10, 0x0

    aget v5, v9, v10

    :cond_1
    add-int v9, v5, v8

    iget-object v10, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->mLocInWindow:[I

    const/4 v11, 0x0

    aget v10, v10, v11

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    if-le v9, v10, :cond_2

    iget-object v9, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->mLocInWindow:[I

    const/4 v10, 0x0

    aget v9, v9, v10

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v10

    add-int/2addr v9, v10

    sub-int v5, v9, v8

    :cond_2
    iget-object v9, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->mLocInWindow:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    if-ge v6, v9, :cond_3

    iget-object v9, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->mLocInWindow:[I

    const/4 v10, 0x1

    aget v6, v9, v10

    :cond_3
    add-int v9, v6, v0

    iget-object v10, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->mLocInWindow:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    if-le v9, v10, :cond_4

    iget-object v9, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->mLocInWindow:[I

    const/4 v10, 0x1

    aget v9, v9, v10

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    sub-int v6, v9, v0

    :cond_4
    iget-object v9, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->mCanvas:Landroid/graphics/Canvas;

    iget-object v10, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9, v10}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v9, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v9}, Landroid/graphics/Canvas;->save()I

    iget-object v9, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->mCanvas:Landroid/graphics/Canvas;

    const/4 v10, 0x0

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v9, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->mCanvas:Landroid/graphics/Canvas;

    neg-int v10, v5

    int-to-float v10, v10

    neg-int v11, v6

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v9, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v3, v9}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    iget-object v9, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v9}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0
.end method

.method private initBitmap(F)V
    .locals 3
    .param p1, "zoomMultiplier"    # F

    .prologue
    iget v0, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->mSize:I

    int-to-float v0, v0

    div-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->mWidth:I

    iget v0, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->mSize:I

    int-to-float v0, v0

    div-float/2addr v0, p1

    float-to-int v0, v0

    iput v0, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->mHeight:I

    iget v0, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->mWidth:I

    iget v1, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->mHeight:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/text/LeTextOpt$SnapShotCatcher;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method
