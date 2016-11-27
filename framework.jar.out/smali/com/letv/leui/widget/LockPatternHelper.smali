.class public Lcom/letv/leui/widget/LockPatternHelper;
.super Ljava/lang/Object;
.source "LockPatternHelper.java"


# static fields
.field public static final DISAPPEAR_TIME:I = 0xc8


# instance fields
.field public isLineError:Z

.field private mErrorCellSize:I

.field private mErrorCells:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mIsReset:Z

.field private mLockMovePoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/letv/leui/widget/LockMovePoint;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockPatternLine:Lcom/letv/leui/widget/LockPatternLine;

.field private final mLockPatternRings:[[Lcom/letv/leui/widget/LockPatternRing;

.field private final mLockPatternView:Lcom/letv/leui/widget/LockPatternView;

.field private mResetCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/letv/leui/widget/LockPatternView;[[Lcom/letv/leui/widget/LockPatternRing;Lcom/letv/leui/widget/LockPatternLine;)V
    .locals 1
    .param p1, "lockPatternView"    # Lcom/letv/leui/widget/LockPatternView;
    .param p2, "lockPatternRings"    # [[Lcom/letv/leui/widget/LockPatternRing;
    .param p3, "lockPatternLine"    # Lcom/letv/leui/widget/LockPatternLine;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LockPatternHelper;->mLockMovePoints:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/letv/leui/widget/LockPatternHelper;->mErrorCells:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/letv/leui/widget/LockPatternHelper;->mLockPatternRings:[[Lcom/letv/leui/widget/LockPatternRing;

    iput-object p3, p0, Lcom/letv/leui/widget/LockPatternHelper;->mLockPatternLine:Lcom/letv/leui/widget/LockPatternLine;

    iput-object p1, p0, Lcom/letv/leui/widget/LockPatternHelper;->mLockPatternView:Lcom/letv/leui/widget/LockPatternView;

    return-void
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/LockPatternHelper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LockPatternHelper;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LockPatternHelper;->mIsReset:Z

    return v0
.end method

.method static synthetic access$002(Lcom/letv/leui/widget/LockPatternHelper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/LockPatternHelper;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/LockPatternHelper;->mIsReset:Z

    return p1
.end method

.method static synthetic access$100(Lcom/letv/leui/widget/LockPatternHelper;)Lcom/letv/leui/widget/LockPatternView;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LockPatternHelper;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternHelper;->mLockPatternView:Lcom/letv/leui/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/letv/leui/widget/LockPatternHelper;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/LockPatternHelper;

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/LockPatternHelper;->clearAndCancel()V

    return-void
.end method

.method static synthetic access$300(Lcom/letv/leui/widget/LockPatternHelper;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LockPatternHelper;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternHelper;->mErrorCells:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/letv/leui/widget/LockPatternHelper;)[[Lcom/letv/leui/widget/LockPatternRing;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LockPatternHelper;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternHelper;->mLockPatternRings:[[Lcom/letv/leui/widget/LockPatternRing;

    return-object v0
.end method

.method private clearAndCancel()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternHelper;->mLockPatternView:Lcom/letv/leui/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LockPatternView;->clearPattern()V

    return-void
.end method

.method private disableInput()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternHelper;->mLockPatternView:Lcom/letv/leui/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LockPatternView;->disableInput()V

    return-void
.end method

.method private doLockPatternRingsError([[Z)V
    .locals 4
    .param p1, "patternDrawLookup"    # [[Z

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_2

    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v3, :cond_1

    aget-object v2, p1, v0

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/LockPatternHelper;->mLockPatternRings:[[Lcom/letv/leui/widget/LockPatternRing;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/letv/leui/widget/LockPatternRing;->doError()V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "j":I
    :cond_2
    iget-object v2, p0, Lcom/letv/leui/widget/LockPatternHelper;->mLockPatternView:Lcom/letv/leui/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/letv/leui/widget/LockPatternView;->invalidate()V

    return-void
.end method

.method private doNewLineError(Lcom/letv/leui/widget/LockPatternLine$LineAnimListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/letv/leui/widget/LockPatternLine$LineAnimListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternHelper;->mLockMovePoints:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/letv/leui/widget/LockPatternHelper;->mLockMovePoints:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternHelper;->mLockPatternLine:Lcom/letv/leui/widget/LockPatternLine;

    iget-object v1, p0, Lcom/letv/leui/widget/LockPatternHelper;->mLockMovePoints:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p1}, Lcom/letv/leui/widget/LockPatternLine;->doNewError(Ljava/util/ArrayList;Lcom/letv/leui/widget/LockPatternLine$LineAnimListener;)V

    return-void
.end method


# virtual methods
.method public doError(Ljava/util/ArrayList;[[Z)V
    .locals 3
    .param p2, "patternDrawLookup"    # [[Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;[[Z)V"
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-direct {p0, p2}, Lcom/letv/leui/widget/LockPatternHelper;->doLockPatternRingsError([[Z)V

    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/widget/LockPatternHelper;->getPaths(Ljava/util/ArrayList;[[Z)V

    iget-object v1, p0, Lcom/letv/leui/widget/LockPatternHelper;->mErrorCells:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/letv/leui/widget/LockPatternHelper;->mErrorCells:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .local v0, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LockPatternHelper;->mLockPatternRings:[[Lcom/letv/leui/widget/LockPatternRing;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/letv/leui/widget/LockPatternRing;->resetRing()V

    :cond_0
    new-instance v1, Lcom/letv/leui/widget/LockPatternHelper$2;

    invoke-direct {v1, p0}, Lcom/letv/leui/widget/LockPatternHelper$2;-><init>(Lcom/letv/leui/widget/LockPatternHelper;)V

    invoke-direct {p0, v1}, Lcom/letv/leui/widget/LockPatternHelper;->doNewLineError(Lcom/letv/leui/widget/LockPatternLine$LineAnimListener;)V

    .end local v0    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_1
    return-void
.end method

.method public drawLine(Landroid/graphics/Canvas;Landroid/graphics/Path;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "path"    # Landroid/graphics/Path;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternHelper;->mLockPatternLine:Lcom/letv/leui/widget/LockPatternLine;

    invoke-virtual {v0, p1, p2}, Lcom/letv/leui/widget/LockPatternLine;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Path;)V

    return-void
.end method

.method public getLockPatternLine()Lcom/letv/leui/widget/LockPatternLine;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternHelper;->mLockPatternLine:Lcom/letv/leui/widget/LockPatternLine;

    return-object v0
.end method

.method public getLockPatternRings()[[Lcom/letv/leui/widget/LockPatternRing;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternHelper;->mLockPatternRings:[[Lcom/letv/leui/widget/LockPatternRing;

    return-object v0
.end method

.method public getPaths(Ljava/util/ArrayList;[[Z)V
    .locals 8
    .param p2, "mPatternDrawLookup"    # [[Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;[[Z)V"
        }
    .end annotation

    .prologue
    .local p1, "mPattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    move-object v5, p1

    .local v5, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, "count":I
    iget-object v6, p0, Lcom/letv/leui/widget/LockPatternHelper;->mLockMovePoints:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    iget-object v6, p0, Lcom/letv/leui/widget/LockPatternHelper;->mErrorCells:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_0

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .local v0, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v6

    aget-object v6, p2, v6

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v7

    aget-boolean v6, v6, v7

    if-nez v6, :cond_1

    .end local v0    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_0
    iget-object v6, p0, Lcom/letv/leui/widget/LockPatternHelper;->mErrorCells:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    iput v6, p0, Lcom/letv/leui/widget/LockPatternHelper;->mErrorCellSize:I

    return-void

    .restart local v0    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_1
    iget-object v6, p0, Lcom/letv/leui/widget/LockPatternHelper;->mErrorCells:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/letv/leui/widget/LockPatternHelper;->mLockMovePoints:Ljava/util/ArrayList;

    new-instance v7, Lcom/letv/leui/widget/LockMovePoint;

    invoke-direct {v7}, Lcom/letv/leui/widget/LockMovePoint;-><init>()V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/letv/leui/widget/LockPatternHelper;->mLockPatternView:Lcom/letv/leui/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/letv/leui/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v1

    .local v1, "centerX":F
    iget-object v6, p0, Lcom/letv/leui/widget/LockPatternHelper;->mLockPatternView:Lcom/letv/leui/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/letv/leui/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v2

    .local v2, "centerY":F
    if-nez v4, :cond_2

    iget-object v6, p0, Lcom/letv/leui/widget/LockPatternHelper;->mLockMovePoints:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/letv/leui/widget/LockMovePoint;

    invoke-virtual {v6, v1}, Lcom/letv/leui/widget/LockMovePoint;->setCurX(F)V

    iget-object v6, p0, Lcom/letv/leui/widget/LockPatternHelper;->mLockMovePoints:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/letv/leui/widget/LockMovePoint;

    invoke-virtual {v6, v2}, Lcom/letv/leui/widget/LockMovePoint;->setCurY(F)V

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/letv/leui/widget/LockPatternHelper;->mLockMovePoints:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/letv/leui/widget/LockMovePoint;

    invoke-virtual {v6, v1}, Lcom/letv/leui/widget/LockMovePoint;->setCurX(F)V

    iget-object v6, p0, Lcom/letv/leui/widget/LockPatternHelper;->mLockMovePoints:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/letv/leui/widget/LockMovePoint;

    invoke-virtual {v6, v2}, Lcom/letv/leui/widget/LockMovePoint;->setCurY(F)V

    iget-object v6, p0, Lcom/letv/leui/widget/LockPatternHelper;->mLockMovePoints:Ljava/util/ArrayList;

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/letv/leui/widget/LockMovePoint;

    invoke-virtual {v6, v1}, Lcom/letv/leui/widget/LockMovePoint;->setMoveX(F)V

    iget-object v6, p0, Lcom/letv/leui/widget/LockPatternHelper;->mLockMovePoints:Ljava/util/ArrayList;

    add-int/lit8 v7, v4, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/letv/leui/widget/LockMovePoint;

    invoke-virtual {v6, v2}, Lcom/letv/leui/widget/LockMovePoint;->setMoveY(F)V

    goto :goto_1
.end method

.method public moveAnim(II)V
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I

    .prologue
    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/letv/leui/widget/LockPatternHelper;->mIsReset:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LockPatternHelper;->resetLockPatternRings()V

    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternHelper;->mLockPatternView:Lcom/letv/leui/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LockPatternView;->getHelper()Lcom/letv/leui/widget/LockPatternHelper;

    move-result-object v0

    invoke-direct {v0}, Lcom/letv/leui/widget/LockPatternHelper;->clearAndCancel()V

    iput-boolean v1, p0, Lcom/letv/leui/widget/LockPatternHelper;->mIsReset:Z

    iput-boolean v1, p0, Lcom/letv/leui/widget/LockPatternHelper;->isLineError:Z

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternHelper;->mLockPatternRings:[[Lcom/letv/leui/widget/LockPatternRing;

    aget-object v0, v0, p1

    aget-object v0, v0, p2

    invoke-virtual {v0}, Lcom/letv/leui/widget/LockPatternRing;->downAnim()V

    return-void
.end method

.method public patternErrorDetected()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternHelper;->mResetCallback:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    new-instance v0, Lcom/letv/leui/widget/LockPatternHelper$1;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/LockPatternHelper$1;-><init>(Lcom/letv/leui/widget/LockPatternHelper;)V

    iput-object v0, p0, Lcom/letv/leui/widget/LockPatternHelper;->mResetCallback:Ljava/lang/Runnable;

    :goto_0
    iput-boolean v4, p0, Lcom/letv/leui/widget/LockPatternHelper;->mIsReset:Z

    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternHelper;->mLockPatternView:Lcom/letv/leui/widget/LockPatternView;

    iget-object v1, p0, Lcom/letv/leui/widget/LockPatternHelper;->mResetCallback:Ljava/lang/Runnable;

    iget v2, p0, Lcom/letv/leui/widget/LockPatternHelper;->mErrorCellSize:I

    mul-int/lit16 v2, v2, 0xc8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/letv/leui/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    iput-boolean v4, p0, Lcom/letv/leui/widget/LockPatternHelper;->isLineError:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternHelper;->mLockPatternView:Lcom/letv/leui/widget/LockPatternView;

    iget-object v1, p0, Lcom/letv/leui/widget/LockPatternHelper;->mResetCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LockPatternHelper;->resetLine()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LockPatternHelper;->resetLockPatternRings()V

    return-void
.end method

.method public resetLine()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternHelper;->mLockPatternLine:Lcom/letv/leui/widget/LockPatternLine;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LockPatternLine;->resetLine()V

    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternHelper;->mLockPatternView:Lcom/letv/leui/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LockPatternView;->invalidate()V

    return-void
.end method

.method public resetLockPatternRings()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_1

    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v3, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/LockPatternHelper;->mLockPatternRings:[[Lcom/letv/leui/widget/LockPatternRing;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/letv/leui/widget/LockPatternRing;->resetRing()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "j":I
    :cond_1
    return-void
.end method
