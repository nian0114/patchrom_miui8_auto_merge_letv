.class public Lcom/letv/leui/widget/slide/LeSlideLayout;
.super Landroid/widget/FrameLayout;
.source "LeSlideLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/slide/LeSlideLayout$OnPanelSlideListener;
    }
.end annotation


# static fields
.field private static final MIN_FLING_VELOCITY:I = 0x190


# instance fields
.field private TAG:Ljava/lang/String;

.field private mBgActivityRootView:Landroid/view/View;

.field private mConfig:Lcom/letv/leui/widget/slide/LeSlideConfig;

.field private mDecorView:Landroid/view/View;

.field private mDimView:Landroid/view/View;

.field private mDragHelper:Lcom/letv/leui/widget/slide/LeViewDragHelper;

.field private mEdgePosition:I

.field private mEnableSlideToOpen:Z

.field private mGlobalField:Ljava/lang/reflect/Field;

.field private mIdentField:Ljava/lang/reflect/Field;

.field private mIsEdgeTouched:Z

.field private mIsInitialize:Z

.field private mIsLocked:Z

.field private mLeftCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

.field private mListener:Lcom/letv/leui/widget/slide/LeSlideLayout$OnPanelSlideListener;

.field private mParallaxOffset:F

.field private mRootField:Ljava/lang/reflect/Field;

.field private mScreenWidth:I

.field private mShadowsHeight:F

.field private mViewField:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "decorView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "LeSlideLayout"

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mIsLocked:Z

    iput-boolean v1, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mIsEdgeTouched:Z

    new-instance v0, Lcom/letv/leui/widget/slide/LeSlideLayout$2;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/slide/LeSlideLayout$2;-><init>(Lcom/letv/leui/widget/slide/LeSlideLayout;)V

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mLeftCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    iput-object p2, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDecorView:Landroid/view/View;

    new-instance v0, Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;

    invoke-direct {v0}, Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/letv/leui/widget/slide/LeSlideConfig$Builder;->build()Lcom/letv/leui/widget/slide/LeSlideConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mConfig:Lcom/letv/leui/widget/slide/LeSlideConfig;

    invoke-direct {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/letv/leui/widget/slide/LeSlideConfig;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "decorView"    # Landroid/view/View;
    .param p3, "config"    # Lcom/letv/leui/widget/slide/LeSlideConfig;

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "LeSlideLayout"

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mIsLocked:Z

    iput-boolean v1, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mIsEdgeTouched:Z

    new-instance v0, Lcom/letv/leui/widget/slide/LeSlideLayout$2;

    invoke-direct {v0, p0}, Lcom/letv/leui/widget/slide/LeSlideLayout$2;-><init>(Lcom/letv/leui/widget/slide/LeSlideLayout;)V

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mLeftCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    iput-object p2, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDecorView:Landroid/view/View;

    iput-object p3, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mConfig:Lcom/letv/leui/widget/slide/LeSlideConfig;

    invoke-direct {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/slide/LeSlideLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/slide/LeSlideLayout;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mIsInitialize:Z

    return v0
.end method

.method static synthetic access$002(Lcom/letv/leui/widget/slide/LeSlideLayout;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/slide/LeSlideLayout;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mIsInitialize:Z

    return p1
.end method

.method static synthetic access$100(Lcom/letv/leui/widget/slide/LeSlideLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/slide/LeSlideLayout;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mEnableSlideToOpen:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/letv/leui/widget/slide/LeSlideLayout;)F
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/slide/LeSlideLayout;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mParallaxOffset:F

    return v0
.end method

.method static synthetic access$1100(Lcom/letv/leui/widget/slide/LeSlideLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/slide/LeSlideLayout;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDimView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/letv/leui/widget/slide/LeSlideLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/slide/LeSlideLayout;

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->recyleDimBg()V

    return-void
.end method

.method static synthetic access$1300(Lcom/letv/leui/widget/slide/LeSlideLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/slide/LeSlideLayout;

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->getBelowRootView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/letv/leui/widget/slide/LeSlideLayout;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/slide/LeSlideLayout;

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->setDimBackground()V

    return-void
.end method

.method static synthetic access$1500(Lcom/letv/leui/widget/slide/LeSlideLayout;)F
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/slide/LeSlideLayout;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mShadowsHeight:F

    return v0
.end method

.method static synthetic access$200(Lcom/letv/leui/widget/slide/LeSlideLayout;)Lcom/letv/leui/widget/slide/LeSlideConfig;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/slide/LeSlideLayout;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mConfig:Lcom/letv/leui/widget/slide/LeSlideConfig;

    return-object v0
.end method

.method static synthetic access$300(Lcom/letv/leui/widget/slide/LeSlideLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/slide/LeSlideLayout;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mEdgePosition:I

    return v0
.end method

.method static synthetic access$400(Lcom/letv/leui/widget/slide/LeSlideLayout;)Lcom/letv/leui/widget/slide/LeViewDragHelper;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/slide/LeSlideLayout;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDragHelper:Lcom/letv/leui/widget/slide/LeViewDragHelper;

    return-object v0
.end method

.method static synthetic access$500(Lcom/letv/leui/widget/slide/LeSlideLayout;)Z
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/slide/LeSlideLayout;

    .prologue
    iget-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mIsEdgeTouched:Z

    return v0
.end method

.method static synthetic access$600(Lcom/letv/leui/widget/slide/LeSlideLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/slide/LeSlideLayout;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDecorView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/letv/leui/widget/slide/LeSlideLayout;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/slide/LeSlideLayout;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mScreenWidth:I

    return v0
.end method

.method static synthetic access$800(Lcom/letv/leui/widget/slide/LeSlideLayout;)Lcom/letv/leui/widget/slide/LeSlideLayout$OnPanelSlideListener;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/slide/LeSlideLayout;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mListener:Lcom/letv/leui/widget/slide/LeSlideLayout$OnPanelSlideListener;

    return-object v0
.end method

.method static synthetic access$900(Lcom/letv/leui/widget/slide/LeSlideLayout;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/slide/LeSlideLayout;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mBgActivityRootView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$902(Lcom/letv/leui/widget/slide/LeSlideLayout;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/slide/LeSlideLayout;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mBgActivityRootView:Landroid/view/View;

    return-object p1
.end method

.method private canDragFromEdge(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .local v1, "y":F
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mConfig:Lcom/letv/leui/widget/slide/LeSlideConfig;

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/letv/leui/widget/slide/LeSlideConfig;->getEdgeSize(F)F

    move-result v2

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static clamp(III)I
    .locals 1
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    invoke-static {p2, p0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getBelowRootView()Landroid/view/View;
    .locals 17

    .prologue
    const/16 v16, 0x1

    const/4 v5, 0x0

    .local v5, "decorView":Landroid/view/View;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mGlobalField:Ljava/lang/reflect/Field;

    if-nez v14, :cond_0

    const-string v14, "android.view.WindowManagerImpl"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    const-string v15, "mGlobal"

    invoke-virtual {v14, v15}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mGlobalField:Ljava/lang/reflect/Field;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mGlobalField:Ljava/lang/reflect/Field;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mRootField:Ljava/lang/reflect/Field;

    if-nez v14, :cond_1

    const-string v14, "android.view.WindowManagerGlobal"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    const-string v15, "mRoots"

    invoke-virtual {v14, v15}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mRootField:Ljava/lang/reflect/Field;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mRootField:Ljava/lang/reflect/Field;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "window"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/WindowManager;

    .local v13, "wm":Landroid/view/WindowManager;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mGlobalField:Ljava/lang/reflect/Field;

    invoke-virtual {v14, v13}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .local v7, "global":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mRootField:Ljava/lang/reflect/Field;

    invoke-virtual {v14, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    .local v9, "roots":Ljava/util/ArrayList;
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14

    move/from16 v0, v16

    if-le v14, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mViewField:Ljava/lang/reflect/Field;

    if-nez v14, :cond_2

    const-string v14, "android.view.ViewRootImpl"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    const-string v15, "mView"

    invoke-virtual {v14, v15}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mViewField:Ljava/lang/reflect/Field;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mViewField:Ljava/lang/reflect/Field;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mIdentField:Ljava/lang/reflect/Field;

    if-nez v14, :cond_3

    const-string v14, "android.view.ViewRootImpl"

    invoke-static {v14}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v14

    const-string v15, "mIdent"

    invoke-virtual {v14, v15}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mIdentField:Ljava/lang/reflect/Field;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mIdentField:Ljava/lang/reflect/Field;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    :cond_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x2

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .local v12, "view":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mViewField:Ljava/lang/reflect/Field;

    invoke-virtual {v14, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Landroid/view/View;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mIdentField:Ljava/lang/reflect/Field;

    invoke-virtual {v14, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .local v10, "indent":J
    invoke-virtual/range {p0 .. p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v4

    .local v4, "currentViewRootImpl":Landroid/view/ViewRootImpl;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mIdentField:Ljava/lang/reflect/Field;

    invoke-virtual {v14, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .local v2, "currentIndent":J
    if-eqz v12, :cond_8

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/letv/leui/widget/slide/LeSlideLayout;->isDiscardView(Landroid/view/View;)Z

    move-result v14

    if-nez v14, :cond_4

    cmp-long v14, v2, v10

    if-gtz v14, :cond_8

    :cond_4
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/lit8 v8, v14, -0x1

    .local v8, "i":I
    :goto_0
    if-ltz v8, :cond_6

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/letv/leui/widget/slide/LeSlideLayout;->isDiscardView(Landroid/view/View;)Z

    move-result v14

    if-nez v14, :cond_5

    cmp-long v14, v2, v10

    if-gtz v14, :cond_6

    :cond_5
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mViewField:Ljava/lang/reflect/Field;

    invoke-virtual {v14, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    move-object v0, v14

    check-cast v0, Landroid/view/View;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mIdentField:Ljava/lang/reflect/Field;

    invoke-virtual {v14, v12}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Long;

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/letv/leui/widget/slide/LeSlideLayout;->isDiscardView(Landroid/view/View;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v14

    if-nez v14, :cond_7

    cmp-long v14, v2, v10

    if-gtz v14, :cond_8

    :cond_7
    const/4 v5, 0x0

    .end local v2    # "currentIndent":J
    .end local v4    # "currentViewRootImpl":Landroid/view/ViewRootImpl;
    .end local v7    # "global":Ljava/lang/Object;
    .end local v8    # "i":I
    .end local v9    # "roots":Ljava/util/ArrayList;
    .end local v10    # "indent":J
    .end local v12    # "view":Ljava/lang/Object;
    .end local v13    # "wm":Landroid/view/WindowManager;
    :cond_8
    :goto_1
    return-object v5

    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .local v4, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .local v5, "theme":Landroid/content/res/Resources$Theme;
    const v6, 0x1010031

    invoke-virtual {v5, v6, v4, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    iget v1, v4, Landroid/util/TypedValue;->data:I

    .local v1, "colorBackground":I
    iget-object v6, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDecorView:Landroid/view/View;

    invoke-virtual {v6, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .end local v1    # "colorBackground":I
    :cond_0
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v6, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mScreenWidth:I

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v2, v6, Landroid/util/DisplayMetrics;->density:F

    .local v2, "density":F
    const/high16 v6, 0x43c80000    # 400.0f

    mul-float v3, v6, v2

    .local v3, "minVel":F
    const/high16 v6, 0x41800000    # 16.0f

    mul-float/2addr v6, v2

    iput v6, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mShadowsHeight:F

    iget v6, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mScreenWidth:I

    shr-int/lit8 v6, v6, 0x1

    int-to-float v6, v6

    iput v6, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mParallaxOffset:F

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mLeftCallback:Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;

    .local v0, "callback":Lcom/letv/leui/widget/slide/LeViewDragHelper$Callback;
    iput v7, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mEdgePosition:I

    iget-object v6, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mConfig:Lcom/letv/leui/widget/slide/LeSlideConfig;

    invoke-virtual {v6}, Lcom/letv/leui/widget/slide/LeSlideConfig;->getSensitivity()F

    move-result v6

    invoke-static {p0, v6, v0}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->create(Landroid/view/ViewGroup;FLcom/letv/leui/widget/slide/LeViewDragHelper$Callback;)Lcom/letv/leui/widget/slide/LeViewDragHelper;

    move-result-object v6

    iput-object v6, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDragHelper:Lcom/letv/leui/widget/slide/LeViewDragHelper;

    iget-object v6, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDragHelper:Lcom/letv/leui/widget/slide/LeViewDragHelper;

    invoke-virtual {v6, v3}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->setMinVelocity(F)V

    iget-object v6, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDragHelper:Lcom/letv/leui/widget/slide/LeViewDragHelper;

    iget v7, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mEdgePosition:I

    invoke-virtual {v6, v7}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->setEdgeTrackingEnabled(I)V

    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/slide/LeSlideLayout;->setMotionEventSplittingEnabled(Z)V

    new-instance v6, Landroid/view/View;

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDimView:Landroid/view/View;

    iget-object v6, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDimView:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/slide/LeSlideLayout;->addView(Landroid/view/View;)V

    new-instance v6, Lcom/letv/leui/widget/slide/LeSlideLayout$1;

    invoke-direct {v6, p0}, Lcom/letv/leui/widget/slide/LeSlideLayout$1;-><init>(Lcom/letv/leui/widget/slide/LeSlideLayout;)V

    invoke-virtual {p0, v6}, Lcom/letv/leui/widget/slide/LeSlideLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private isDiscardView(Landroid/view/View;)Z
    .locals 2
    .param p1, "decorView"    # Landroid/view/View;

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recyleDimBg()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDimView:Landroid/view/View;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDimView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .local v0, "d":Landroid/graphics/drawable/Drawable;
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDimView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :try_start_0
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .end local v0    # "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private setDimBackground()V
    .locals 9

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mBgActivityRootView:Landroid/view/View;

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mBgActivityRootView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    if-eq v5, v6, :cond_2

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->getWidth()I

    move-result v4

    .local v4, "width":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->getHeight()I

    move-result v3

    .local v3, "height":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v5, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mScreenWidth:I

    iget v5, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mScreenWidth:I

    shr-int/lit8 v5, v5, 0x1

    int-to-float v5, v5

    iput v5, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mParallaxOffset:F

    iget-object v5, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mBgActivityRootView:Landroid/view/View;

    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-virtual {v5, v6, v7}, Landroid/view/View;->measure(II)V

    iget-object v5, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mBgActivityRootView:Landroid/view/View;

    invoke-virtual {v5, v8, v8, v4, v3}, Landroid/view/View;->layout(IIII)V

    .end local v3    # "height":I
    .end local v4    # "width":I
    :cond_2
    iget-object v5, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mBgActivityRootView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mBgActivityRootView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-lez v5, :cond_0

    iget-object v5, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mBgActivityRootView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    iget-object v6, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mBgActivityRootView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v1, "canvas":Landroid/graphics/Canvas;
    iget-object v5, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mBgActivityRootView:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-direct {v2, v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .local v2, "drawable":Landroid/graphics/drawable/BitmapDrawable;
    iget-object v5, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDimView:Landroid/view/View;

    invoke-virtual {v5, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 2

    .prologue
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeScroll()V

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDragHelper:Lcom/letv/leui/widget/slide/LeViewDragHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->continueSettling(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->postInvalidateOnAnimation()V

    :cond_0
    return-void
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    return-void
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchWindowVisibilityChanged(I)V

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->recyleDimBg()V

    :cond_0
    return-void
.end method

.method public isSliding()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDragHelper:Lcom/letv/leui/widget/slide/LeViewDragHelper;

    invoke-virtual {v0}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->getViewDragState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lock()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mIsLocked:Z

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDragHelper:Lcom/letv/leui/widget/slide/LeViewDragHelper;

    invoke-virtual {v0}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->abort()V

    return-void
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mScreenWidth:I

    .local v0, "settleLeft":I
    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDragHelper:Lcom/letv/leui/widget/slide/LeViewDragHelper;

    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDecorView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mConfig:Lcom/letv/leui/widget/slide/LeSlideConfig;

    invoke-virtual {v4}, Lcom/letv/leui/widget/slide/LeSlideConfig;->getSlideDuration()I

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->settleViewAt(Landroid/view/View;III)Z

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->invalidate()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mIsLocked:Z

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mConfig:Lcom/letv/leui/widget/slide/LeSlideConfig;

    invoke-virtual {v3}, Lcom/letv/leui/widget/slide/LeSlideConfig;->isEdgeOnly()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p1}, Lcom/letv/leui/widget/slide/LeSlideLayout;->canDragFromEdge(Landroid/view/MotionEvent;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mIsEdgeTouched:Z

    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDragHelper:Lcom/letv/leui/widget/slide/LeViewDragHelper;

    invoke-virtual {v3, p1}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .local v1, "interceptForDrag":Z
    :goto_1
    if-eqz v1, :cond_0

    iget-boolean v3, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mIsLocked:Z

    if-nez v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    .end local v1    # "interceptForDrag":Z
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .restart local v1    # "interceptForDrag":Z
    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/4 v1, 0x0

    .local v1, "oldLeft":I
    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->isSliding()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDecorView:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDecorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v1

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-virtual {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->isSliding()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDecorView:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDecorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int v0, v1, v2

    .local v0, "offset":I
    if-lez v0, :cond_1

    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDecorView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .end local v0    # "offset":I
    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mIsLocked:Z

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDragHelper:Lcom/letv/leui/widget/slide/LeViewDragHelper;

    invoke-virtual {v2, p1}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public setEnableSlideToOpen(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mEnableSlideToOpen:Z

    return-void
.end method

.method public setInitializeState()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mIsInitialize:Z

    return-void
.end method

.method public setOnPanelSlideListener(Lcom/letv/leui/widget/slide/LeSlideLayout$OnPanelSlideListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/letv/leui/widget/slide/LeSlideLayout$OnPanelSlideListener;

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mListener:Lcom/letv/leui/widget/slide/LeSlideLayout$OnPanelSlideListener;

    return-void
.end method

.method public slideToOpen()V
    .locals 5

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/slide/LeSlideLayout;->getBelowRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mBgActivityRootView:Landroid/view/View;

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mBgActivityRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDimView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDimView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDecorView:Landroid/view/View;

    iget v1, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mShadowsHeight:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationZ(F)V

    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDragHelper:Lcom/letv/leui/widget/slide/LeViewDragHelper;

    iget-object v1, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDecorView:Landroid/view/View;

    iget v2, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mScreenWidth:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mConfig:Lcom/letv/leui/widget/slide/LeSlideConfig;

    invoke-virtual {v4}, Lcom/letv/leui/widget/slide/LeSlideConfig;->getSlideDuration()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->slideView(Landroid/view/View;III)Z

    return-void
.end method

.method public unlock()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mIsLocked:Z

    iget-object v0, p0, Lcom/letv/leui/widget/slide/LeSlideLayout;->mDragHelper:Lcom/letv/leui/widget/slide/LeViewDragHelper;

    invoke-virtual {v0}, Lcom/letv/leui/widget/slide/LeViewDragHelper;->abort()V

    return-void
.end method
