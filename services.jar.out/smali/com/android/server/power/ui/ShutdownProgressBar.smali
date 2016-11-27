.class public Lcom/android/server/power/ui/ShutdownProgressBar;
.super Landroid/widget/ProgressBar;
.source "ShutdownProgressBar.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPaint:Landroid/graphics/Paint;

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p1, p0, Lcom/android/server/power/ui/ShutdownProgressBar;->mContext:Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Lcom/android/server/power/ui/ShutdownProgressBar;->initText()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-object p1, p0, Lcom/android/server/power/ui/ShutdownProgressBar;->mContext:Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Lcom/android/server/power/ui/ShutdownProgressBar;->initText()V

    .line 33
    return-void
.end method

.method private initText()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 54
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ui/ShutdownProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 55
    iget-object v0, p0, Lcom/android/server/power/ui/ShutdownProgressBar;->mPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 56
    iget-object v0, p0, Lcom/android/server/power/ui/ShutdownProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 57
    iget-object v0, p0, Lcom/android/server/power/ui/ShutdownProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 58
    iget-object v0, p0, Lcom/android/server/power/ui/ShutdownProgressBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040748

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/ui/ShutdownProgressBar;->mText:Ljava/lang/String;

    .line 59
    return-void
.end method


# virtual methods
.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    .line 43
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    .line 45
    iget-object v1, p0, Lcom/android/server/power/ui/ShutdownProgressBar;->mText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/power/ui/ShutdownProgressBar;->getWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/power/ui/ShutdownProgressBar;->getHeight()I

    move-result v1

    if-lez v1, :cond_0

    .line 46
    iget-object v1, p0, Lcom/android/server/power/ui/ShutdownProgressBar;->mPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/server/power/ui/ShutdownProgressBar;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1050241

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 47
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 48
    .local v0, "seq":I
    iget-object v1, p0, Lcom/android/server/power/ui/ShutdownProgressBar;->mText:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/power/ui/ShutdownProgressBar;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/server/power/ui/ShutdownProgressBar;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/android/server/power/ui/ShutdownProgressBar;->mText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v5

    invoke-virtual {p0}, Lcom/android/server/power/ui/ShutdownProgressBar;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/server/power/ui/ShutdownProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F

    move-result v4

    add-float/2addr v3, v4

    div-float/2addr v3, v5

    iget-object v4, p0, Lcom/android/server/power/ui/ShutdownProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 49
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .end local v0    # "seq":I
    :cond_0
    monitor-exit p0

    return-void

    .line 43
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 37
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit p0

    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
