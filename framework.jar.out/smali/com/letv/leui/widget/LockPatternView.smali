.class public Lcom/letv/leui/widget/LockPatternView;
.super Landroid/view/View;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LockPatternView$1;,
        Lcom/letv/leui/widget/LockPatternView$SavedState;,
        Lcom/letv/leui/widget/LockPatternView$OnPatternListener;,
        Lcom/letv/leui/widget/LockPatternView$DisplayMode;
    }
.end annotation


# static fields
.field private static final ASPECT_LOCK_HEIGHT:I = 0x2

.field private static final ASPECT_LOCK_WIDTH:I = 0x1

.field private static final ASPECT_SQUARE:I = 0x0

.field private static final DRAG_THRESHHOLD:F = 0.0f

.field public static final MIN_LOCK_PATTERN_SIZE:I = 0x4

.field private static final PROFILE_DRAWING:Z


# instance fields
.field private mAnimatingPeriodStart:J

.field private mAspect:I

.field private final mContext:Landroid/content/Context;

.field private final mCurrentPath:Landroid/graphics/Path;

.field private mDiameterFactor:F

.field private mDrawingProfilingStarted:Z

.field private mEnableHapticFeedback:Z

.field private mHitFactor:F

.field private mInProgressX:F

.field private mInProgressY:F

.field private mInStealthMode:Z

.field private mInputEnabled:Z

.field private final mInvalidate:Landroid/graphics/Rect;

.field private final mLockPatternHelper:Lcom/letv/leui/widget/LockPatternHelper;

.field private mOnPatternListener:Lcom/letv/leui/widget/LockPatternView$OnPatternListener;

.field private mPattern:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mPatternDisplayMode:Lcom/letv/leui/widget/LockPatternView$DisplayMode;

.field private mPatternDrawLookup:[[Z

.field private mPatternInProgress:Z

.field private mRingHeight:I

.field private mRingWidth:I

.field private mSquareHeight:F

.field private mSquareWidth:F

.field private final mTmpInvalidateRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/letv/leui/widget/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    invoke-direct/range {p0 .. p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/letv/leui/widget/LockPatternView;->mDrawingProfilingStarted:Z

    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/letv/leui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    const/4 v2, 0x3

    const/4 v3, 0x3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Z

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/letv/leui/widget/LockPatternView;->mPatternDrawLookup:[[Z

    const/high16 v2, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/LockPatternView;->mInProgressX:F

    const/high16 v2, -0x40800000    # -1.0f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/LockPatternView;->mInProgressY:F

    sget-object v2, Lcom/letv/leui/widget/LockPatternView$DisplayMode;->Correct:Lcom/letv/leui/widget/LockPatternView$DisplayMode;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/letv/leui/widget/LockPatternView;->mPatternDisplayMode:Lcom/letv/leui/widget/LockPatternView$DisplayMode;

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/letv/leui/widget/LockPatternView;->mInputEnabled:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/letv/leui/widget/LockPatternView;->mInStealthMode:Z

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/letv/leui/widget/LockPatternView;->mEnableHapticFeedback:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/letv/leui/widget/LockPatternView;->mPatternInProgress:Z

    const v2, 0x3dcccccd    # 0.1f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/LockPatternView;->mDiameterFactor:F

    const v2, 0x3f0ccccd    # 0.55f

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/LockPatternView;->mHitFactor:F

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/letv/leui/widget/LockPatternView;->mCurrentPath:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/letv/leui/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/letv/leui/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    const/16 v2, 0xfc

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/LockPatternView;->mRingWidth:I

    const/16 v2, 0xfc

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/LockPatternView;->mRingHeight:I

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/letv/leui/widget/LockPatternView;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/internal/R$styleable;->LeLockPatternView:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v8

    .local v8, "a":Landroid/content/res/TypedArray;
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    .local v9, "aspect":Ljava/lang/String;
    const-string v2, "square"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/LockPatternView;->mAspect:I

    :goto_0
    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    .local v5, "innerCircleColor":I
    const/4 v2, 0x3

    const v3, -0x7f000001

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .local v6, "ringColor":I
    const/4 v2, 0x1

    const v3, -0x7f000001

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v12

    .local v12, "lineColor":I
    const/4 v2, 0x4

    const/4 v3, -0x1

    invoke-virtual {v8, v2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    .local v7, "outerCircleColor":I
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/letv/leui/widget/LockPatternView;->setClickable(Z)V

    const/4 v2, 0x3

    const/4 v3, 0x3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const-class v3, Lcom/letv/leui/widget/LockPatternRing;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [[Lcom/letv/leui/widget/LockPatternRing;

    .local v14, "lockPatternRings":[[Lcom/letv/leui/widget/LockPatternRing;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    const/4 v2, 0x3

    if-ge v10, v2, :cond_4

    const/4 v11, 0x0

    .local v11, "j":I
    :goto_2
    const/4 v2, 0x3

    if-ge v11, v2, :cond_3

    aget-object v15, v14, v10

    new-instance v2, Lcom/letv/leui/widget/LockPatternRing;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/letv/leui/widget/LockPatternView;->mContext:Landroid/content/Context;

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/letv/leui/widget/LockPatternRing;-><init>(Landroid/content/Context;Landroid/view/View;III)V

    aput-object v2, v15, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .end local v5    # "innerCircleColor":I
    .end local v6    # "ringColor":I
    .end local v7    # "outerCircleColor":I
    .end local v10    # "i":I
    .end local v11    # "j":I
    .end local v12    # "lineColor":I
    .end local v14    # "lockPatternRings":[[Lcom/letv/leui/widget/LockPatternRing;
    :cond_0
    const-string v2, "lock_width"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/LockPatternView;->mAspect:I

    goto :goto_0

    :cond_1
    const-string v2, "lock_height"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/LockPatternView;->mAspect:I

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/letv/leui/widget/LockPatternView;->mAspect:I

    goto :goto_0

    .restart local v5    # "innerCircleColor":I
    .restart local v6    # "ringColor":I
    .restart local v7    # "outerCircleColor":I
    .restart local v10    # "i":I
    .restart local v11    # "j":I
    .restart local v12    # "lineColor":I
    .restart local v14    # "lockPatternRings":[[Lcom/letv/leui/widget/LockPatternRing;
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .end local v11    # "j":I
    :cond_4
    new-instance v13, Lcom/letv/leui/widget/LockPatternLine;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v12}, Lcom/letv/leui/widget/LockPatternLine;-><init>(Landroid/view/View;I)V

    .local v13, "lockPatternLine":Lcom/letv/leui/widget/LockPatternLine;
    new-instance v2, Lcom/letv/leui/widget/LockPatternHelper;

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v14, v13}, Lcom/letv/leui/widget/LockPatternHelper;-><init>(Lcom/letv/leui/widget/LockPatternView;[[Lcom/letv/leui/widget/LockPatternRing;Lcom/letv/leui/widget/LockPatternLine;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/letv/leui/widget/LockPatternView;->mLockPatternHelper:Lcom/letv/leui/widget/LockPatternHelper;

    return-void
.end method

.method private addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V
    .locals 3
    .param p1, "newCell"    # Lcom/android/internal/widget/LockPatternView$Cell;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LockPatternView;->mInStealthMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternView;->mLockPatternHelper:Lcom/letv/leui/widget/LockPatternHelper;

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/letv/leui/widget/LockPatternHelper;->moveAnim(II)V

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/letv/leui/widget/LockPatternView;->notifyCellAdded()V

    return-void
.end method

.method private clearPatternDrawLookup()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_1

    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v4, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/LockPatternView;->mPatternDrawLookup:[[Z

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "j":I
    :cond_1
    return-void
.end method

.method private detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .locals 13
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v12, 0x2

    const/4 v10, -0x1

    const/4 v9, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/letv/leui/widget/LockPatternView;->checkForNewHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v0

    .local v0, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    if-eqz v0, :cond_7

    const/4 v4, 0x0

    .local v4, "fillInGapCell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget-object v7, p0, Lcom/letv/leui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .local v7, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/LockPatternView$Cell;

    .local v6, "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v8

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v11

    sub-int v2, v8, v11

    .local v2, "dRow":I
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v8

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v11

    sub-int v1, v8, v11

    .local v1, "dColumn":I
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v5

    .local v5, "fillInRow":I
    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v3

    .local v3, "fillInColumn":I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v12, :cond_0

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eq v8, v9, :cond_0

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v11

    if-lez v2, :cond_6

    move v8, v9

    :goto_0
    add-int v5, v11, v8

    :cond_0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v12, :cond_2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eq v8, v9, :cond_2

    invoke-virtual {v6}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v8

    if-lez v1, :cond_1

    move v10, v9

    :cond_1
    add-int v3, v8, v10

    :cond_2
    invoke-static {v5, v3}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v4

    .end local v1    # "dColumn":I
    .end local v2    # "dRow":I
    .end local v3    # "fillInColumn":I
    .end local v5    # "fillInRow":I
    .end local v6    # "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_3
    if-eqz v4, :cond_4

    iget-object v8, p0, Lcom/letv/leui/widget/LockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v10

    aget-object v8, v8, v10

    invoke-virtual {v4}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v10

    aget-boolean v8, v8, v10

    if-nez v8, :cond_4

    invoke-direct {p0, v4}, Lcom/letv/leui/widget/LockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    :cond_4
    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    iget-boolean v8, p0, Lcom/letv/leui/widget/LockPatternView;->mEnableHapticFeedback:Z

    if-eqz v8, :cond_5

    const/4 v8, 0x3

    invoke-virtual {p0, v9, v8}, Lcom/letv/leui/widget/LockPatternView;->performHapticFeedback(II)Z

    .end local v0    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v4    # "fillInGapCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v7    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :cond_5
    :goto_1
    return-object v0

    .restart local v0    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v1    # "dColumn":I
    .restart local v2    # "dRow":I
    .restart local v3    # "fillInColumn":I
    .restart local v4    # "fillInGapCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v5    # "fillInRow":I
    .restart local v6    # "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v7    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :cond_6
    move v8, v10

    goto :goto_0

    .end local v1    # "dColumn":I
    .end local v2    # "dRow":I
    .end local v3    # "fillInColumn":I
    .end local v4    # "fillInGapCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v5    # "fillInRow":I
    .end local v6    # "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v7    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :cond_7
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private drawCircle(Landroid/graphics/Canvas;IIZII)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "leftX"    # I
    .param p3, "topY"    # I
    .param p4, "partOfPattern"    # Z
    .param p5, "i"    # I
    .param p6, "j"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    iget v5, p0, Lcom/letv/leui/widget/LockPatternView;->mRingWidth:I

    .local v5, "width":I
    iget v0, p0, Lcom/letv/leui/widget/LockPatternView;->mRingHeight:I

    .local v0, "height":I
    iget v4, p0, Lcom/letv/leui/widget/LockPatternView;->mSquareWidth:F

    .local v4, "squareWidth":F
    iget v3, p0, Lcom/letv/leui/widget/LockPatternView;->mSquareHeight:F

    .local v3, "squareHeight":F
    int-to-float v6, v5

    sub-float v6, v4, v6

    div-float/2addr v6, v7

    float-to-int v1, v6

    .local v1, "offsetX":I
    int-to-float v6, v0

    sub-float v6, v3, v6

    div-float/2addr v6, v7

    float-to-int v2, v6

    .local v2, "offsetY":I
    iget-object v6, p0, Lcom/letv/leui/widget/LockPatternView;->mLockPatternHelper:Lcom/letv/leui/widget/LockPatternHelper;

    invoke-virtual {v6}, Lcom/letv/leui/widget/LockPatternHelper;->getLockPatternRings()[[Lcom/letv/leui/widget/LockPatternRing;

    move-result-object v6

    aget-object v6, v6, p5

    aget-object v6, v6, p6

    div-int/lit8 v7, v5, 0x2

    add-int/2addr v7, p2

    add-int/2addr v7, v1

    int-to-float v7, v7

    div-int/lit8 v8, v0, 0x2

    add-int/2addr v8, p3

    add-int/2addr v8, v2

    int-to-float v8, v8

    invoke-virtual {v6, p1, v7, v8}, Lcom/letv/leui/widget/LockPatternRing;->drawRing(Landroid/graphics/Canvas;FF)V

    return-void
.end method

.method private getBitmapFor(I)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "resId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getColumnHit(F)I
    .locals 8
    .param p1, "x"    # F

    .prologue
    iget v4, p0, Lcom/letv/leui/widget/LockPatternView;->mSquareWidth:F

    .local v4, "squareWidth":F
    iget v5, p0, Lcom/letv/leui/widget/LockPatternView;->mHitFactor:F

    mul-float v1, v4, v5

    .local v1, "hitSize":F
    invoke-virtual {p0}, Lcom/letv/leui/widget/LockPatternView;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    sub-float v6, v4, v1

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float v3, v5, v6

    .local v3, "offset":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v5, 0x3

    if-ge v2, v5, :cond_1

    int-to-float v5, v2

    mul-float/2addr v5, v4

    add-float v0, v3, v5

    .local v0, "hitLeft":F
    cmpl-float v5, p1, v0

    if-ltz v5, :cond_0

    add-float v5, v0, v1

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    .end local v0    # "hitLeft":F
    .end local v2    # "i":I
    :goto_1
    return v2

    .restart local v0    # "hitLeft":F
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "hitLeft":F
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private getRowHit(F)I
    .locals 8
    .param p1, "y"    # F

    .prologue
    iget v4, p0, Lcom/letv/leui/widget/LockPatternView;->mSquareHeight:F

    .local v4, "squareHeight":F
    iget v5, p0, Lcom/letv/leui/widget/LockPatternView;->mHitFactor:F

    mul-float v0, v4, v5

    .local v0, "hitSize":F
    invoke-virtual {p0}, Lcom/letv/leui/widget/LockPatternView;->getPaddingTop()I

    move-result v5

    int-to-float v5, v5

    sub-float v6, v4, v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    add-float v3, v5, v6

    .local v3, "offset":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v5, 0x3

    if-ge v2, v5, :cond_1

    int-to-float v5, v2

    mul-float/2addr v5, v4

    add-float v1, v3, v5

    .local v1, "hitTop":F
    cmpl-float v5, p1, v1

    if-ltz v5, :cond_0

    add-float v5, v1, v0

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    .end local v1    # "hitTop":F
    .end local v2    # "i":I
    :goto_1
    return v2

    .restart local v1    # "hitTop":F
    .restart local v2    # "i":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v1    # "hitTop":F
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private handleActionDown(Landroid/view/MotionEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    invoke-direct {p0}, Lcom/letv/leui/widget/LockPatternView;->resetPattern()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .local v6, "y":F
    invoke-direct {p0, v5, v6}, Lcom/letv/leui/widget/LockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v1

    .local v1, "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    if-eqz v1, :cond_2

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/letv/leui/widget/LockPatternView;->mPatternInProgress:Z

    sget-object v7, Lcom/letv/leui/widget/LockPatternView$DisplayMode;->Correct:Lcom/letv/leui/widget/LockPatternView$DisplayMode;

    iput-object v7, p0, Lcom/letv/leui/widget/LockPatternView;->mPatternDisplayMode:Lcom/letv/leui/widget/LockPatternView$DisplayMode;

    invoke-direct {p0}, Lcom/letv/leui/widget/LockPatternView;->notifyPatternStarted()V

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/letv/leui/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v2

    .local v2, "startX":F
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/letv/leui/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v3

    .local v3, "startY":F
    iget v7, p0, Lcom/letv/leui/widget/LockPatternView;->mSquareWidth:F

    div-float v4, v7, v8

    .local v4, "widthOffset":F
    iget v7, p0, Lcom/letv/leui/widget/LockPatternView;->mSquareHeight:F

    div-float v0, v7, v8

    .local v0, "heightOffset":F
    sub-float v7, v2, v4

    float-to-int v7, v7

    sub-float v8, v3, v0

    float-to-int v8, v8

    add-float v9, v2, v4

    float-to-int v9, v9

    add-float v10, v3, v0

    float-to-int v10, v10

    invoke-virtual {p0, v7, v8, v9, v10}, Lcom/letv/leui/widget/LockPatternView;->invalidate(IIII)V

    .end local v0    # "heightOffset":F
    .end local v2    # "startX":F
    .end local v3    # "startY":F
    .end local v4    # "widthOffset":F
    :cond_1
    iput v5, p0, Lcom/letv/leui/widget/LockPatternView;->mInProgressX:F

    iput v6, p0, Lcom/letv/leui/widget/LockPatternView;->mInProgressY:F

    iget-object v7, p0, Lcom/letv/leui/widget/LockPatternView;->mLockPatternHelper:Lcom/letv/leui/widget/LockPatternHelper;

    invoke-virtual {v7}, Lcom/letv/leui/widget/LockPatternHelper;->resetLine()V

    return-void

    :cond_2
    iget-boolean v7, p0, Lcom/letv/leui/widget/LockPatternView;->mPatternInProgress:Z

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/letv/leui/widget/LockPatternView;->mPatternInProgress:Z

    invoke-direct {p0}, Lcom/letv/leui/widget/LockPatternView;->notifyPatternCleared()V

    goto :goto_0
.end method

.method private handleActionMove2(Landroid/view/MotionEvent;)V
    .locals 30
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LockPatternView;->mSquareWidth:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LockPatternView;->mDiameterFactor:F

    move/from16 v26, v0

    mul-float v25, v25, v26

    const/high16 v26, 0x3f000000    # 0.5f

    mul-float v19, v25, v26

    .local v19, "radius":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v7

    .local v7, "historySize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->setEmpty()V

    const/4 v12, 0x0

    .local v12, "invalidateNow":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    add-int/lit8 v25, v7, 0x1

    move/from16 v0, v25

    if-ge v11, v0, :cond_7

    if-ge v11, v7, :cond_5

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v23

    .local v23, "x":F
    :goto_1
    if-ge v11, v7, :cond_6

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v24

    .local v24, "y":F
    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/letv/leui/widget/LockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v8

    .local v8, "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v18

    .local v18, "patternSize":I
    if-eqz v8, :cond_0

    const/16 v25, 0x1

    move/from16 v0, v18

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/letv/leui/widget/LockPatternView;->mPatternInProgress:Z

    invoke-direct/range {p0 .. p0}, Lcom/letv/leui/widget/LockPatternView;->notifyPatternStarted()V

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LockPatternView;->mInProgressX:F

    move/from16 v25, v0

    sub-float v25, v23, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .local v4, "dx":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LockPatternView;->mInProgressY:F

    move/from16 v25, v0

    sub-float v25, v24, v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .local v5, "dy":F
    const/16 v25, 0x0

    cmpl-float v25, v4, v25

    if-gtz v25, :cond_1

    const/16 v25, 0x0

    cmpl-float v25, v5, v25

    if-lez v25, :cond_2

    :cond_1
    const/4 v12, 0x1

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/letv/leui/widget/LockPatternView;->mPatternInProgress:Z

    move/from16 v25, v0

    if-eqz v25, :cond_4

    if-lez v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    .local v17, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    add-int/lit8 v25, v18, -0x1

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/widget/LockPatternView$Cell;

    .local v13, "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v13}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v14

    .local v14, "lastCellCenterX":F
    invoke-virtual {v13}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v15

    .local v15, "lastCellCenterY":F
    move/from16 v0, v23

    invoke-static {v14, v0}, Ljava/lang/Math;->min(FF)F

    move-result v25

    sub-float v16, v25, v19

    .local v16, "left":F
    move/from16 v0, v23

    invoke-static {v14, v0}, Ljava/lang/Math;->max(FF)F

    move-result v25

    add-float v20, v25, v19

    .local v20, "right":F
    move/from16 v0, v24

    invoke-static {v15, v0}, Ljava/lang/Math;->min(FF)F

    move-result v25

    sub-float v21, v25, v19

    .local v21, "top":F
    move/from16 v0, v24

    invoke-static {v15, v0}, Ljava/lang/Math;->max(FF)F

    move-result v25

    add-float v3, v25, v19

    .local v3, "bottom":F
    if-eqz v8, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LockPatternView;->mSquareWidth:F

    move/from16 v25, v0

    const/high16 v26, 0x3f000000    # 0.5f

    mul-float v22, v25, v26

    .local v22, "width":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LockPatternView;->mSquareHeight:F

    move/from16 v25, v0

    const/high16 v26, 0x3f000000    # 0.5f

    mul-float v6, v25, v26

    .local v6, "height":F
    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v9

    .local v9, "hitCellCenterX":F
    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v25

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v10

    .local v10, "hitCellCenterY":F
    sub-float v25, v9, v22

    move/from16 v0, v25

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v16

    add-float v25, v9, v22

    move/from16 v0, v25

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v20

    sub-float v25, v10, v6

    move/from16 v0, v25

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v21

    add-float v25, v10, v6

    move/from16 v0, v25

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .end local v6    # "height":F
    .end local v9    # "hitCellCenterX":F
    .end local v10    # "hitCellCenterY":F
    .end local v22    # "width":F
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->round(F)I

    move-result v26

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v27

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v28

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v29

    invoke-virtual/range {v25 .. v29}, Landroid/graphics/Rect;->union(IIII)V

    .end local v3    # "bottom":F
    .end local v13    # "lastCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v14    # "lastCellCenterX":F
    .end local v15    # "lastCellCenterY":F
    .end local v16    # "left":F
    .end local v17    # "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .end local v20    # "right":F
    .end local v21    # "top":F
    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .end local v4    # "dx":F
    .end local v5    # "dy":F
    .end local v8    # "hitCell":Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v18    # "patternSize":I
    .end local v23    # "x":F
    .end local v24    # "y":F
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v23

    goto/16 :goto_1

    .restart local v23    # "x":F
    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v24

    goto/16 :goto_2

    .end local v23    # "x":F
    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LockPatternView;->mInProgressX:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/letv/leui/widget/LockPatternView;->mInProgressY:F

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LockPatternView;->invalidate(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LockPatternView;->mTmpInvalidateRect:Landroid/graphics/Rect;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_8
    return-void
.end method

.method private handleActionUp(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/LockPatternView;->mPatternInProgress:Z

    invoke-direct {p0}, Lcom/letv/leui/widget/LockPatternView;->notifyPatternDetected()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LockPatternView;->invalidate()V

    :cond_0
    return-void
.end method

.method private notifyCellAdded()V
    .locals 2

    .prologue
    const v0, 0x10402ae

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LockPatternView;->sendAccessEvent(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternView;->mOnPatternListener:Lcom/letv/leui/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternView;->mOnPatternListener:Lcom/letv/leui/widget/LockPatternView$OnPatternListener;

    iget-object v1, p0, Lcom/letv/leui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/letv/leui/widget/LockPatternView$OnPatternListener;->onPatternCellAdded(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private notifyPatternCleared()V
    .locals 1

    .prologue
    const v0, 0x10402ad

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LockPatternView;->sendAccessEvent(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternView;->mOnPatternListener:Lcom/letv/leui/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternView;->mOnPatternListener:Lcom/letv/leui/widget/LockPatternView$OnPatternListener;

    invoke-interface {v0}, Lcom/letv/leui/widget/LockPatternView$OnPatternListener;->onPatternCleared()V

    :cond_0
    return-void
.end method

.method private notifyPatternDetected()V
    .locals 2

    .prologue
    const v0, 0x10402b0

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LockPatternView;->sendAccessEvent(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternView;->mOnPatternListener:Lcom/letv/leui/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternView;->mOnPatternListener:Lcom/letv/leui/widget/LockPatternView$OnPatternListener;

    iget-object v1, p0, Lcom/letv/leui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/letv/leui/widget/LockPatternView$OnPatternListener;->onPatternDetected(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private notifyPatternStarted()V
    .locals 1

    .prologue
    const v0, 0x10402ac

    invoke-direct {p0, v0}, Lcom/letv/leui/widget/LockPatternView;->sendAccessEvent(I)V

    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternView;->mOnPatternListener:Lcom/letv/leui/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternView;->mOnPatternListener:Lcom/letv/leui/widget/LockPatternView$OnPatternListener;

    invoke-interface {v0}, Lcom/letv/leui/widget/LockPatternView$OnPatternListener;->onPatternStart()V

    :cond_0
    return-void
.end method

.method public static patternToString(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    if-nez p0, :cond_0

    const-string v4, ""

    :goto_0
    return-object v4

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "patternSize":I
    new-array v3, v2, [B

    .local v3, "res":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .local v0, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    goto :goto_0
.end method

.method private resetPattern()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/letv/leui/widget/LockPatternView;->clearPatternDrawLookup()V

    sget-object v0, Lcom/letv/leui/widget/LockPatternView$DisplayMode;->Correct:Lcom/letv/leui/widget/LockPatternView$DisplayMode;

    iput-object v0, p0, Lcom/letv/leui/widget/LockPatternView;->mPatternDisplayMode:Lcom/letv/leui/widget/LockPatternView$DisplayMode;

    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternView;->mLockPatternHelper:Lcom/letv/leui/widget/LockPatternHelper;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LockPatternHelper;->reset()V

    invoke-virtual {p0}, Lcom/letv/leui/widget/LockPatternView;->invalidate()V

    return-void
.end method

.method private resolveMeasured(II)I
    .locals 3
    .param p1, "measureSpec"    # I
    .param p2, "desired"    # I

    .prologue
    const/4 v0, 0x0

    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .local v1, "specSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :sswitch_0
    move v0, p2

    goto :goto_0

    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method private sendAccessEvent(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/letv/leui/widget/LockPatternView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static stringToPattern(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .local v1, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v1

    if-ge v2, v4, :cond_0

    aget-byte v0, v1, v2

    .local v0, "b":B
    div-int/lit8 v4, v0, 0x3

    rem-int/lit8 v5, v0, 0x3

    invoke-static {v4, v5}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0    # "b":B
    :cond_0
    return-object v3
.end method


# virtual methods
.method public checkForNewHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .locals 4
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0, p2}, Lcom/letv/leui/widget/LockPatternView;->getRowHit(F)I

    move-result v1

    .local v1, "rowHit":I
    if-gez v1, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LockPatternView;->getColumnHit(F)I

    move-result v0

    .local v0, "columnHit":I
    if-ltz v0, :cond_0

    iget-object v3, p0, Lcom/letv/leui/widget/LockPatternView;->mPatternDrawLookup:[[Z

    aget-object v3, v3, v1

    aget-boolean v3, v3, v0

    if-nez v3, :cond_0

    invoke-static {v1, v0}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v2

    goto :goto_0
.end method

.method public clearPattern()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/LockPatternView;->resetPattern()V

    return-void
.end method

.method public disableInput()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/LockPatternView;->mInputEnabled:Z

    return-void
.end method

.method public enableInput()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/LockPatternView;->mInputEnabled:Z

    return-void
.end method

.method public getCenterXForColumn(I)F
    .locals 3
    .param p1, "column"    # I

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LockPatternView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/letv/leui/widget/LockPatternView;->mSquareWidth:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/letv/leui/widget/LockPatternView;->mSquareWidth:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getCenterYForRow(I)F
    .locals 3
    .param p1, "row"    # I

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LockPatternView;->getPaddingTop()I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/letv/leui/widget/LockPatternView;->mSquareHeight:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/letv/leui/widget/LockPatternView;->mSquareHeight:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method public getHelper()Lcom/letv/leui/widget/LockPatternHelper;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LockPatternView;->mLockPatternHelper:Lcom/letv/leui/widget/LockPatternHelper;

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LockPatternView;->mRingWidth:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LockPatternView;->mRingWidth:I

    mul-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public isInStealthMode()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LockPatternView;->mInStealthMode:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/LockPatternView;->mEnableHapticFeedback:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 23
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/letv/leui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    .local v19, "pattern":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v12

    .local v12, "count":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/LockPatternView;->mPatternDrawLookup:[[Z

    .local v14, "drawLookup":[[Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LockPatternView;->mSquareWidth:F

    move/from16 v21, v0

    .local v21, "squareWidth":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/letv/leui/widget/LockPatternView;->mSquareHeight:F

    move/from16 v20, v0

    .local v20, "squareHeight":F
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/letv/leui/widget/LockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .local v13, "currentPath":Landroid/graphics/Path;
    invoke-virtual {v13}, Landroid/graphics/Path;->rewind()V

    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LockPatternView;->getPaddingTop()I

    move-result v18

    .local v18, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/LockPatternView;->getPaddingLeft()I

    move-result v17

    .local v17, "paddingLeft":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v6, v1, :cond_1

    move/from16 v0, v18

    int-to-float v1, v0

    int-to-float v2, v6

    mul-float v2, v2, v20

    add-float v22, v1, v2

    .local v22, "topY":F
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    const/4 v1, 0x3

    if-ge v7, v1, :cond_0

    move/from16 v0, v17

    int-to-float v1, v0

    int-to-float v2, v7

    mul-float v2, v2, v21

    add-float v16, v1, v2

    .local v16, "leftX":F
    move/from16 v0, v16

    float-to-int v3, v0

    move/from16 v0, v22

    float-to-int v4, v0

    aget-object v1, v14, v6

    aget-boolean v5, v1, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/letv/leui/widget/LockPatternView;->drawCircle(Landroid/graphics/Canvas;IIZII)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .end local v16    # "leftX":F
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .end local v7    # "j":I
    .end local v22    # "topY":F
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/letv/leui/widget/LockPatternView;->mInStealthMode:Z

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LockPatternView;->mPatternDisplayMode:Lcom/letv/leui/widget/LockPatternView$DisplayMode;

    sget-object v2, Lcom/letv/leui/widget/LockPatternView$DisplayMode;->Wrong:Lcom/letv/leui/widget/LockPatternView$DisplayMode;

    if-ne v1, v2, :cond_8

    :cond_2
    const/4 v15, 0x1

    .local v15, "drawPath":Z
    :goto_2
    if-eqz v15, :cond_6

    const/4 v8, 0x0

    .local v8, "anyCircles":Z
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v12, :cond_3

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/LockPatternView$Cell;

    .local v9, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    aget-object v1, v14, v1

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v2

    aget-boolean v1, v1, v2

    if-nez v1, :cond_9

    .end local v9    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/letv/leui/widget/LockPatternView;->mPatternInProgress:Z

    if-nez v1, :cond_4

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LockPatternView;->mPatternDisplayMode:Lcom/letv/leui/widget/LockPatternView$DisplayMode;

    sget-object v2, Lcom/letv/leui/widget/LockPatternView$DisplayMode;->Animate:Lcom/letv/leui/widget/LockPatternView$DisplayMode;

    if-ne v1, v2, :cond_5

    :cond_4
    if-eqz v8, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lcom/letv/leui/widget/LockPatternView;->mInProgressX:F

    move-object/from16 v0, p0

    iget v2, v0, Lcom/letv/leui/widget/LockPatternView;->mInProgressY:F

    invoke-virtual {v13, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/letv/leui/widget/LockPatternView;->mInStealthMode:Z

    if-nez v1, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LockPatternView;->mLockPatternHelper:Lcom/letv/leui/widget/LockPatternHelper;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0, v13}, Lcom/letv/leui/widget/LockPatternHelper;->drawLine(Landroid/graphics/Canvas;Landroid/graphics/Path;)V

    .end local v8    # "anyCircles":Z
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/letv/leui/widget/LockPatternView;->mInStealthMode:Z

    if-nez v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LockPatternView;->mLockPatternHelper:Lcom/letv/leui/widget/LockPatternHelper;

    iget-boolean v1, v1, Lcom/letv/leui/widget/LockPatternHelper;->isLineError:Z

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/letv/leui/widget/LockPatternView;->mLockPatternHelper:Lcom/letv/leui/widget/LockPatternHelper;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LockPatternHelper;->getLockPatternLine()Lcom/letv/leui/widget/LockPatternLine;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Lcom/letv/leui/widget/LockPatternLine;->doLineErrorDraw(Landroid/graphics/Canvas;)V

    :cond_7
    return-void

    .end local v15    # "drawPath":Z
    :cond_8
    const/4 v15, 0x0

    goto :goto_2

    .restart local v8    # "anyCircles":Z
    .restart local v9    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v15    # "drawPath":Z
    :cond_9
    const/4 v8, 0x1

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v10

    .local v10, "centerX":F
    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v11

    .local v11, "centerY":F
    if-nez v6, :cond_a

    invoke-virtual {v13, v10, v11}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_a
    invoke-virtual {v13, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_4
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LockPatternView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .local v1, "action":I
    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LockPatternView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .end local v1    # "action":I
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2

    .restart local v1    # "action":I
    :pswitch_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :pswitch_2
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :pswitch_3
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    invoke-virtual {p0}, Lcom/letv/leui/widget/LockPatternView;->getSuggestedMinimumWidth()I

    move-result v1

    .local v1, "minimumWidth":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/LockPatternView;->getSuggestedMinimumHeight()I

    move-result v0

    .local v0, "minimumHeight":I
    invoke-direct {p0, p1, v1}, Lcom/letv/leui/widget/LockPatternView;->resolveMeasured(II)I

    move-result v3

    .local v3, "viewWidth":I
    invoke-direct {p0, p2, v0}, Lcom/letv/leui/widget/LockPatternView;->resolveMeasured(II)I

    move-result v2

    .local v2, "viewHeight":I
    iget v4, p0, Lcom/letv/leui/widget/LockPatternView;->mAspect:I

    packed-switch v4, :pswitch_data_0

    :goto_0
    invoke-virtual {p0, v3, v2}, Lcom/letv/leui/widget/LockPatternView;->setMeasuredDimension(II)V

    return-void

    :pswitch_0
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    move v3, v2

    goto :goto_0

    :pswitch_1
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_0

    :pswitch_2
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    move-object v0, p1

    check-cast v0, Lcom/letv/leui/widget/LockPatternView$SavedState;

    .local v0, "ss":Lcom/letv/leui/widget/LockPatternView$SavedState;
    invoke-virtual {v0}, Lcom/letv/leui/widget/LockPatternView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    sget-object v1, Lcom/letv/leui/widget/LockPatternView$DisplayMode;->Correct:Lcom/letv/leui/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LockPatternView$SavedState;->getSerializedPattern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/letv/leui/widget/LockPatternView;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/letv/leui/widget/LockPatternView;->setPattern(Lcom/letv/leui/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    invoke-static {}, Lcom/letv/leui/widget/LockPatternView$DisplayMode;->values()[Lcom/letv/leui/widget/LockPatternView$DisplayMode;

    move-result-object v1

    invoke-virtual {v0}, Lcom/letv/leui/widget/LockPatternView$SavedState;->getDisplayMode()I

    move-result v2

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/letv/leui/widget/LockPatternView;->mPatternDisplayMode:Lcom/letv/leui/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LockPatternView$SavedState;->isInputEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/letv/leui/widget/LockPatternView;->mInputEnabled:Z

    invoke-virtual {v0}, Lcom/letv/leui/widget/LockPatternView$SavedState;->isInStealthMode()Z

    move-result v1

    iput-boolean v1, p0, Lcom/letv/leui/widget/LockPatternView;->mInStealthMode:Z

    invoke-virtual {v0}, Lcom/letv/leui/widget/LockPatternView$SavedState;->isTactileFeedbackEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/letv/leui/widget/LockPatternView;->mEnableHapticFeedback:Z

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    .prologue
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Lcom/letv/leui/widget/LockPatternView$SavedState;

    iget-object v2, p0, Lcom/letv/leui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/letv/leui/widget/LockPatternView;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/letv/leui/widget/LockPatternView;->mPatternDisplayMode:Lcom/letv/leui/widget/LockPatternView$DisplayMode;

    invoke-virtual {v3}, Lcom/letv/leui/widget/LockPatternView$DisplayMode;->ordinal()I

    move-result v3

    iget-boolean v4, p0, Lcom/letv/leui/widget/LockPatternView;->mInputEnabled:Z

    iget-boolean v5, p0, Lcom/letv/leui/widget/LockPatternView;->mInStealthMode:Z

    iget-boolean v6, p0, Lcom/letv/leui/widget/LockPatternView;->mEnableHapticFeedback:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/letv/leui/widget/LockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZLcom/letv/leui/widget/LockPatternView$1;)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/high16 v4, 0x40400000    # 3.0f

    invoke-virtual {p0}, Lcom/letv/leui/widget/LockPatternView;->getPaddingLeft()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {p0}, Lcom/letv/leui/widget/LockPatternView;->getPaddingRight()I

    move-result v3

    sub-int v1, v2, v3

    .local v1, "width":I
    int-to-float v2, v1

    div-float/2addr v2, v4

    iput v2, p0, Lcom/letv/leui/widget/LockPatternView;->mSquareWidth:F

    invoke-virtual {p0}, Lcom/letv/leui/widget/LockPatternView;->getPaddingTop()I

    move-result v2

    sub-int v2, p2, v2

    invoke-virtual {p0}, Lcom/letv/leui/widget/LockPatternView;->getPaddingBottom()I

    move-result v3

    sub-int v0, v2, v3

    .local v0, "height":I
    int-to-float v2, v0

    div-float/2addr v2, v4

    iput v2, p0, Lcom/letv/leui/widget/LockPatternView;->mSquareHeight:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-boolean v2, p0, Lcom/letv/leui/widget/LockPatternView;->mInputEnabled:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/LockPatternView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    move v0, v1

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LockPatternView;->handleActionDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LockPatternView;->handleActionUp(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LockPatternView;->handleActionMove2(Landroid/view/MotionEvent;)V

    goto :goto_0

    :pswitch_3
    iget-boolean v2, p0, Lcom/letv/leui/widget/LockPatternView;->mPatternInProgress:Z

    if-eqz v2, :cond_1

    iput-boolean v1, p0, Lcom/letv/leui/widget/LockPatternView;->mPatternInProgress:Z

    invoke-direct {p0}, Lcom/letv/leui/widget/LockPatternView;->resetPattern()V

    invoke-direct {p0}, Lcom/letv/leui/widget/LockPatternView;->notifyPatternCleared()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setDisplayMode(Lcom/letv/leui/widget/LockPatternView$DisplayMode;)V
    .locals 4
    .param p1, "displayMode"    # Lcom/letv/leui/widget/LockPatternView$DisplayMode;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LockPatternView;->mPatternDisplayMode:Lcom/letv/leui/widget/LockPatternView$DisplayMode;

    sget-object v1, Lcom/letv/leui/widget/LockPatternView$DisplayMode;->Animate:Lcom/letv/leui/widget/LockPatternView$DisplayMode;

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/letv/leui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "you must have a pattern to animate if you want to set the display mode to animate"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/letv/leui/widget/LockPatternView;->mAnimatingPeriodStart:J

    iget-object v1, p0, Lcom/letv/leui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .local v0, "first":Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LockPatternView;->mInProgressX:F

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/letv/leui/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v1

    iput v1, p0, Lcom/letv/leui/widget/LockPatternView;->mInProgressY:F

    invoke-direct {p0}, Lcom/letv/leui/widget/LockPatternView;->clearPatternDrawLookup()V

    .end local v0    # "first":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/LockPatternView;->invalidate()V

    return-void

    :cond_2
    sget-object v1, Lcom/letv/leui/widget/LockPatternView$DisplayMode;->Wrong:Lcom/letv/leui/widget/LockPatternView$DisplayMode;

    if-ne p1, v1, :cond_1

    iget-boolean v1, p0, Lcom/letv/leui/widget/LockPatternView;->mInStealthMode:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/letv/leui/widget/LockPatternView;->mLockPatternHelper:Lcom/letv/leui/widget/LockPatternHelper;

    iget-object v2, p0, Lcom/letv/leui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/letv/leui/widget/LockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {v1, v2, v3}, Lcom/letv/leui/widget/LockPatternHelper;->doError(Ljava/util/ArrayList;[[Z)V

    :cond_3
    iget-object v1, p0, Lcom/letv/leui/widget/LockPatternView;->mLockPatternHelper:Lcom/letv/leui/widget/LockPatternHelper;

    invoke-virtual {v1}, Lcom/letv/leui/widget/LockPatternHelper;->patternErrorDetected()V

    goto :goto_0
.end method

.method public setInStealthMode(Z)V
    .locals 0
    .param p1, "inStealthMode"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/LockPatternView;->mInStealthMode:Z

    return-void
.end method

.method public setOnPatternListener(Lcom/letv/leui/widget/LockPatternView$OnPatternListener;)V
    .locals 0
    .param p1, "onPatternListener"    # Lcom/letv/leui/widget/LockPatternView$OnPatternListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LockPatternView;->mOnPatternListener:Lcom/letv/leui/widget/LockPatternView$OnPatternListener;

    return-void
.end method

.method public setPattern(Lcom/letv/leui/widget/LockPatternView$DisplayMode;Ljava/util/List;)V
    .locals 5
    .param p1, "displayMode"    # Lcom/letv/leui/widget/LockPatternView$DisplayMode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/letv/leui/widget/LockPatternView$DisplayMode;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iget-object v2, p0, Lcom/letv/leui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/letv/leui/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/letv/leui/widget/LockPatternView;->clearPatternDrawLookup()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .local v0, "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    iget-object v2, p0, Lcom/letv/leui/widget/LockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v3

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    goto :goto_0

    .end local v0    # "cell":Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/letv/leui/widget/LockPatternView;->setDisplayMode(Lcom/letv/leui/widget/LockPatternView$DisplayMode;)V

    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .locals 0
    .param p1, "tactileFeedbackEnabled"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/LockPatternView;->mEnableHapticFeedback:Z

    return-void
.end method
