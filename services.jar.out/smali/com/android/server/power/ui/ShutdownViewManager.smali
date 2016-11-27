.class public Lcom/android/server/power/ui/ShutdownViewManager;
.super Ljava/lang/Object;
.source "ShutdownViewManager.java"


# static fields
.field private static final DEBUG:Z = true

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mIsShow:Z

.field private mShutdownProgressBar:Lcom/android/server/power/ui/ShutdownProgressBar;

.field private final mViewManager:Landroid/view/ViewManager;

.field private mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "ShutdownThread"

    sput-object v0, Lcom/android/server/power/ui/ShutdownViewManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mIsShow:Z

    iput-object p1, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mViewManager:Landroid/view/ViewManager;

    return-void
.end method

.method private addProgressBar()V
    .locals 8

    .prologue
    const/4 v1, -0x2

    iget-object v2, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x10900f2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .local v6, "progressbarLayout":Landroid/widget/LinearLayout;
    const/16 v7, 0x7da

    .local v7, "type":I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7da

    const/4 v4, 0x0

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x51

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mViewManager:Landroid/view/ViewManager;

    invoke-interface {v1, v6, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mViewManager:Landroid/view/ViewManager;

    invoke-interface {v1, v6, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const v1, 0x10204b6

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/ui/ShutdownProgressBar;

    iput-object v1, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mShutdownProgressBar:Lcom/android/server/power/ui/ShutdownProgressBar;

    return-void
.end method

.method private fetchShutdownTipResId([I)I
    .locals 7
    .param p1, "text"    # [I

    .prologue
    const-string v0, "persist.sys.shutdown.s_index"

    .local v0, "STORE_KEY":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .local v3, "power":Landroid/os/PowerManager;
    const/4 v2, 0x0

    .local v2, "index":I
    if-nez v3, :cond_0

    aget v4, p1, v2

    :goto_0
    return v4

    :cond_0
    :try_start_0
    const-string v4, "persist.sys.shutdown.s_index"

    invoke-virtual {v3, v4}, Landroid/os/PowerManager;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_1
    const-string v4, "persist.sys.shutdown.s_index"

    add-int/lit8 v5, v2, 0x1

    array-length v6, p1

    rem-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v4, Lcom/android/server/power/ui/ShutdownViewManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fetchShutdownTipResId(), index = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v4, p1

    rem-int v4, v2, v4

    aget v4, p1, v4

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    sget-object v0, Lcom/android/server/power/ui/ShutdownViewManager;->TAG:Ljava/lang/String;

    const-string v1, "hide()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

    invoke-virtual {v0}, Lcom/android/server/power/ui/ShutdownWelcomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v1, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mIsShow:Z

    return-void
.end method

.method public isShow()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mIsShow:Z

    return v0
.end method

.method public onReboot()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

    const v1, 0x1040630

    invoke-virtual {v0, v1}, Lcom/android/server/power/ui/ShutdownWelcomeView;->setWords(I)V

    iget-object v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

    invoke-virtual {v0}, Lcom/android/server/power/ui/ShutdownWelcomeView;->show()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mIsShow:Z

    goto :goto_0
.end method

.method public onShutDown()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

    const v1, 0x104062d

    invoke-virtual {v0, v1}, Lcom/android/server/power/ui/ShutdownWelcomeView;->setWords(I)V

    iget-object v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

    invoke-virtual {v0}, Lcom/android/server/power/ui/ShutdownWelcomeView;->show()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mIsShow:Z

    goto :goto_0
.end method

.method public setUpdateProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    iget-object v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mShutdownProgressBar:Lcom/android/server/power/ui/ShutdownProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mShutdownProgressBar:Lcom/android/server/power/ui/ShutdownProgressBar;

    invoke-virtual {v0, p1}, Lcom/android/server/power/ui/ShutdownProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public show(Z)V
    .locals 8
    .param p1, "reboot"    # Z

    .prologue
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/server/power/ui/ShutdownWelcomeView;

    iget-object v3, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/power/ui/ShutdownWelcomeView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

    :cond_0
    iget-object v2, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v2, :cond_2

    const v4, 0xc00008a

    .local v4, "flags":I
    const/4 v6, -0x1

    .local v6, "stretch":I
    const/16 v7, 0x7da

    .local v7, "type":I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7da

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const-string v1, "Byebye"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const/4 v1, 0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_1
    iput-object v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "flags":I
    .end local v6    # "stretch":I
    .end local v7    # "type":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

    iget-object v3, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

    const v2, 0x3600002

    invoke-virtual {v1, v2}, Lcom/android/server/power/ui/ShutdownWelcomeView;->setSystemUiVisibility(I)V

    iget-object v1, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

    iget-object v3, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/power/ui/ShutdownViewManager;->onReboot()V

    :goto_0
    iget-object v1, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

    invoke-virtual {v1}, Lcom/android/server/power/ui/ShutdownWelcomeView;->requestFocus()Z

    return-void

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/power/ui/ShutdownViewManager;->onShutDown()V

    goto :goto_0
.end method

.method public show(ZZ)V
    .locals 2
    .param p1, "reboot"    # Z
    .param p2, "update"    # Z

    .prologue
    iget-object v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/power/ui/ShutdownWelcomeView;

    iget-object v1, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/power/ui/ShutdownWelcomeView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/power/ui/ShutdownViewManager;->show(Z)V

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/android/server/power/ui/ShutdownViewManager;->addProgressBar()V

    :cond_1
    return-void
.end method
