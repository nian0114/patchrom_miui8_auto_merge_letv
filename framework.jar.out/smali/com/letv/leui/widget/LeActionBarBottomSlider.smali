.class public Lcom/letv/leui/widget/LeActionBarBottomSlider;
.super Ljava/lang/Object;
.source "LeActionBarBottomSlider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter;
    }
.end annotation


# static fields
.field private static final DURATION_ENTER:I = 0xc8

.field private static final DURATION_EXIT:I = 0xc8

.field private static final LISTVIEW_ITEM_HEIGHT:F = 56.0f

.field private static final LISTVIEW_PADDING:F = 32.0f

.field private static final POSTDELAY_ENTER:I = 0x96

.field private static final POSTDELAY_EXIT:I = 0x14

.field private static density:F

.field private static listitem_height:I


# instance fields
.field private checkPos:I

.field private inflater:Landroid/view/LayoutInflater;

.field private listView:Landroid/widget/ListView;

.field private mContext:Landroid/app/Activity;

.field private mDialog:Landroid/app/Dialog;

.field private mMenuView:Lcom/letv/leui/widget/LeTransLinearLayout;

.field private menuViewHeight:I

.field private out:Landroid/view/View;

.field private responsable:Z

.field private startPos:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;I)V
    .locals 8
    .param p1, "context"    # Landroid/app/Activity;
    .param p2, "startPos"    # I

    .prologue
    const/16 v7, 0x8

    const/4 v5, 0x1

    const/4 v6, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v5, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->responsable:Z

    iput v6, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->checkPos:I

    iput p2, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->startPos:I

    new-instance v2, Landroid/app/Dialog;

    const v3, 0x1030522

    invoke-direct {v2, p1, v3}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->mDialog:Landroid/app/Dialog;

    iget-object v2, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x30

    invoke-virtual {v2, v3}, Landroid/view/Window;->setGravity(I)V

    iput-object p1, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->mContext:Landroid/app/Activity;

    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->inflater:Landroid/view/LayoutInflater;

    iget-object v2, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x1090074

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->out:Landroid/view/View;

    iget-object v2, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->out:Landroid/view/View;

    const v3, 0x10203cb

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/letv/leui/widget/LeTransLinearLayout;

    iput-object v2, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->mMenuView:Lcom/letv/leui/widget/LeTransLinearLayout;

    new-instance v1, Lcom/letv/leui/widget/LeLayoutTransparentHelper;

    invoke-direct {v1}, Lcom/letv/leui/widget/LeLayoutTransparentHelper;-><init>()V

    .local v1, "transparentHelper":Lcom/letv/leui/widget/LeLayoutTransparentHelper;
    invoke-virtual {v1, v5}, Lcom/letv/leui/widget/LeLayoutTransparentHelper;->setTrasparent(Z)V

    iget-object v2, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->mMenuView:Lcom/letv/leui/widget/LeTransLinearLayout;

    invoke-virtual {v2, v1}, Lcom/letv/leui/widget/LeTransLinearLayout;->setTransparentHelper(Lcom/letv/leui/widget/LeLayoutTransparentHelper;)V

    iget-object v2, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x1090098

    iget-object v4, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->mMenuView:Lcom/letv/leui/widget/LeTransLinearLayout;

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .local v0, "listViewLayout":Landroid/view/View;
    const v2, 0x102040b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->listView:Landroid/widget/ListView;

    const v2, 0x102040c

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    const v2, 0x102040d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->listView:Landroid/widget/ListView;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setOverScrollMode(I)V

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/letv/leui/widget/LeActionBarBottomSlider;->density:F

    const/high16 v2, 0x42600000    # 56.0f

    invoke-static {v2}, Lcom/letv/leui/widget/LeActionBarBottomSlider;->dip2px(F)I

    move-result v2

    sput v2, Lcom/letv/leui/widget/LeActionBarBottomSlider;->listitem_height:I

    iget-object v2, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->mDialog:Landroid/app/Dialog;

    iget-object v3, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->out:Landroid/view/View;

    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    iget-object v5, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->mContext:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-direct {v4, v6, v5}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->out:Landroid/view/View;

    new-instance v3, Lcom/letv/leui/widget/LeActionBarBottomSlider$1;

    invoke-direct {v3, p0}, Lcom/letv/leui/widget/LeActionBarBottomSlider$1;-><init>(Lcom/letv/leui/widget/LeActionBarBottomSlider;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->mMenuView:Lcom/letv/leui/widget/LeTransLinearLayout;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/letv/leui/widget/LeTransLinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->mDialog:Landroid/app/Dialog;

    new-instance v3, Lcom/letv/leui/widget/LeActionBarBottomSlider$2;

    invoke-direct {v3, p0}, Lcom/letv/leui/widget/LeActionBarBottomSlider$2;-><init>(Lcom/letv/leui/widget/LeActionBarBottomSlider;)V

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/letv/leui/widget/LeActionBarBottomSlider;)Lcom/letv/leui/widget/LeTransLinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeActionBarBottomSlider;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->mMenuView:Lcom/letv/leui/widget/LeTransLinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/letv/leui/widget/LeActionBarBottomSlider;)V
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/LeActionBarBottomSlider;

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/LeActionBarBottomSlider;->doEnterAnimation()V

    return-void
.end method

.method static synthetic access$200(Lcom/letv/leui/widget/LeActionBarBottomSlider;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeActionBarBottomSlider;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->checkPos:I

    return v0
.end method

.method static synthetic access$202(Lcom/letv/leui/widget/LeActionBarBottomSlider;I)I
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/LeActionBarBottomSlider;
    .param p1, "x1"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->checkPos:I

    return p1
.end method

.method static synthetic access$302(Lcom/letv/leui/widget/LeActionBarBottomSlider;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/letv/leui/widget/LeActionBarBottomSlider;
    .param p1, "x1"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->responsable:Z

    return p1
.end method

.method static synthetic access$400(Lcom/letv/leui/widget/LeActionBarBottomSlider;)Landroid/app/Dialog;
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/LeActionBarBottomSlider;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method private static dip2px(F)I
    .locals 2
    .param p0, "dp"    # F

    .prologue
    sget v0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->density:F

    mul-float/2addr v0, p0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private doEnterAnimation()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    const-string v3, "y"

    new-array v4, v7, [F

    iget-object v5, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->mMenuView:Lcom/letv/leui/widget/LeTransLinearLayout;

    invoke-virtual {v5}, Lcom/letv/leui/widget/LeTransLinearLayout;->getY()F

    move-result v5

    aput v5, v4, v8

    iget-object v5, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->mMenuView:Lcom/letv/leui/widget/LeTransLinearLayout;

    invoke-virtual {v5}, Lcom/letv/leui/widget/LeTransLinearLayout;->getY()F

    move-result v5

    iget v6, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->menuViewHeight:I

    int-to-float v6, v6

    add-float/2addr v5, v6

    aput v5, v4, v9

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .local v2, "yHolder":Landroid/animation/PropertyValuesHolder;
    const-string v3, "hidePercent"

    new-array v4, v7, [F

    fill-array-data v4, :array_0

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .local v1, "hideHolder":Landroid/animation/PropertyValuesHolder;
    iget-object v3, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->mMenuView:Lcom/letv/leui/widget/LeTransLinearLayout;

    new-array v4, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v4, v8

    aput-object v1, v4, v9

    invoke-static {v3, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "animator":Landroid/animation/ObjectAnimator;
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/letv/leui/widget/LeActionBarBottomSlider$4;

    invoke-direct {v3, p0}, Lcom/letv/leui/widget/LeActionBarBottomSlider$4;-><init>(Lcom/letv/leui/widget/LeActionBarBottomSlider;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, Lcom/letv/leui/widget/LeActionBarBottomSlider$5;

    invoke-direct {v3, p0}, Lcom/letv/leui/widget/LeActionBarBottomSlider$5;-><init>(Lcom/letv/leui/widget/LeActionBarBottomSlider;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private doExitAnimation()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    const-string v3, "y"

    new-array v4, v7, [F

    iget-object v5, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->mMenuView:Lcom/letv/leui/widget/LeTransLinearLayout;

    invoke-virtual {v5}, Lcom/letv/leui/widget/LeTransLinearLayout;->getY()F

    move-result v5

    aput v5, v4, v8

    iget-object v5, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->mMenuView:Lcom/letv/leui/widget/LeTransLinearLayout;

    invoke-virtual {v5}, Lcom/letv/leui/widget/LeTransLinearLayout;->getY()F

    move-result v5

    iget v6, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->menuViewHeight:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    aput v5, v4, v9

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    .local v2, "yHolder":Landroid/animation/PropertyValuesHolder;
    const-string v3, "hidePercent"

    new-array v4, v7, [F

    fill-array-data v4, :array_0

    invoke-static {v3, v4}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .local v1, "hideHolder":Landroid/animation/PropertyValuesHolder;
    iget-object v3, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->mMenuView:Lcom/letv/leui/widget/LeTransLinearLayout;

    new-array v4, v7, [Landroid/animation/PropertyValuesHolder;

    aput-object v2, v4, v8

    aput-object v1, v4, v9

    invoke-static {v3, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "animator":Landroid/animation/ObjectAnimator;
    new-instance v3, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/letv/leui/widget/LeActionBarBottomSlider$6;

    invoke-direct {v3, p0}, Lcom/letv/leui/widget/LeActionBarBottomSlider$6;-><init>(Lcom/letv/leui/widget/LeActionBarBottomSlider;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v3, Lcom/letv/leui/widget/LeActionBarBottomSlider$7;

    invoke-direct {v3, p0}, Lcom/letv/leui/widget/LeActionBarBottomSlider$7;-><init>(Lcom/letv/leui/widget/LeActionBarBottomSlider;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public appear()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->mMenuView:Lcom/letv/leui/widget/LeTransLinearLayout;

    iget v1, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->startPos:I

    iget v2, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->menuViewHeight:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeTransLinearLayout;->setY(F)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->responsable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->responsable:Z

    iget-object v0, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->mMenuView:Lcom/letv/leui/widget/LeTransLinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeTransLinearLayout;->setIntercept(Z)V

    iget-object v0, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method public disappear()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->responsable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->responsable:Z

    invoke-direct {p0}, Lcom/letv/leui/widget/LeActionBarBottomSlider;->doExitAnimation()V

    :cond_0
    return-void
.end method

.method public getCheckPos()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->checkPos:I

    return v0
.end method

.method public getmDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public setCheckPos(I)V
    .locals 0
    .param p1, "checkPos"    # I

    .prologue
    iput p1, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->checkPos:I

    return-void
.end method

.method public setStyle(Landroid/widget/BaseAdapter;ILandroid/widget/AdapterView$OnItemClickListener;)V
    .locals 2
    .param p1, "baseAdapter"    # Landroid/widget/BaseAdapter;
    .param p2, "dataSize"    # I
    .param p3, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p3}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->listView:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    sget v0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->listitem_height:I

    mul-int/2addr v0, p2

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v1}, Lcom/letv/leui/widget/LeActionBarBottomSlider;->dip2px(F)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->menuViewHeight:I

    return-void
.end method

.method public setStyle(Ljava/util/List;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;Z)V
    .locals 6
    .param p2, "keyName"    # [Ljava/lang/String;
    .param p3, "listener"    # Landroid/widget/AdapterView$OnItemClickListener;
    .param p4, "hasIcon"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;[",
            "Ljava/lang/String;",
            "Landroid/widget/AdapterView$OnItemClickListener;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v0, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter;

    iget-object v2, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->mContext:Landroid/app/Activity;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter;-><init>(Lcom/letv/leui/widget/LeActionBarBottomSlider;Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Z)V

    .local v0, "adapter":Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter;
    iget-object v1, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->listView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->listView:Landroid/widget/ListView;

    new-instance v2, Lcom/letv/leui/widget/LeActionBarBottomSlider$3;

    invoke-direct {v2, p0, v0, p3}, Lcom/letv/leui/widget/LeActionBarBottomSlider$3;-><init>(Lcom/letv/leui/widget/LeActionBarBottomSlider;Lcom/letv/leui/widget/LeActionBarBottomSlider$ListViewAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_0
    iget-object v1, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->listView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sget v2, Lcom/letv/leui/widget/LeActionBarBottomSlider;->listitem_height:I

    mul-int/2addr v1, v2

    const/high16 v2, 0x42000000    # 32.0f

    invoke-static {v2}, Lcom/letv/leui/widget/LeActionBarBottomSlider;->dip2px(F)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider;->menuViewHeight:I

    return-void
.end method
