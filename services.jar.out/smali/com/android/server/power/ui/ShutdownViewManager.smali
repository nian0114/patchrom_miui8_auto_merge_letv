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
    .line 27
    const-string v0, "ShutdownThread"

    sput-object v0, Lcom/android/server/power/ui/ShutdownViewManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mIsShow:Z

    .line 37
    iput-object p1, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mContext:Landroid/content/Context;

    .line 38
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mViewManager:Landroid/view/ViewManager;

    .line 39
    return-void
.end method

.method private addProgressBar()V
    .locals 8

    .prologue
    .line 171
    iget-object v1, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x10900f5

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 172
    .local v6, "progressbarLayout":Landroid/widget/LinearLayout;
    const/16 v7, 0x7da

    .line 173
    .local v7, "type":I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/16 v3, 0x7da

    const/4 v4, 0x0

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 174
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x51

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 175
    iget-object v1, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mViewManager:Landroid/view/ViewManager;

    invoke-interface {v1, v6, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    iget-object v1, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mViewManager:Landroid/view/ViewManager;

    invoke-interface {v1, v6, v0}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    const v1, 0x10204c2

    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/ui/ShutdownProgressBar;

    iput-object v1, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mShutdownProgressBar:Lcom/android/server/power/ui/ShutdownProgressBar;

    .line 178
    return-void
.end method

.method private fetchShutdownTipResId([I)I
    .locals 7
    .param p1, "text"    # [I

    .prologue
    .line 132
    const-string v0, "persist.sys.shutdown.s_index"

    .line 133
    .local v0, "STORE_KEY":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .line 134
    .local v3, "power":Landroid/os/PowerManager;
    const/4 v2, 0x0

    .line 135
    .local v2, "index":I
    if-nez v3, :cond_0

    .line 136
    aget v4, p1, v2

    .line 148
    :goto_0
    return v4

    .line 139
    :cond_0
    :try_start_0
    const-string v4, "persist.sys.shutdown.s_index"

    invoke-virtual {v3, v4}, Landroid/os/PowerManager;->getSystemProperties(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 144
    :goto_1
    const-string v4, "persist.sys.shutdown.s_index"

    add-int/lit8 v5, v2, 0x1

    array-length v6, p1

    rem-int/2addr v5, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/PowerManager;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)Z

    .line 146
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

    .line 148
    array-length v4, p1

    rem-int v4, v2, v4

    aget v4, p1, v4

    goto :goto_0

    .line 140
    :catch_0
    move-exception v1

    .line 141
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method public hide()V
    .locals 2

    .prologue
    .line 103
    sget-object v0, Lcom/android/server/power/ui/ShutdownViewManager;->TAG:Ljava/lang/String;

    const-string v1, "hide()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

    invoke-virtual {v0}, Lcom/android/server/power/ui/ShutdownWelcomeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v1, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 107
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mIsShow:Z

    .line 108
    return-void
.end method

.method public isShow()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mIsShow:Z

    return v0
.end method

.method public onReboot()V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

    if-nez v0, :cond_0

    .line 116
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

    const v1, 0x1040632

    invoke-virtual {v0, v1}, Lcom/android/server/power/ui/ShutdownWelcomeView;->setWords(I)V

    .line 114
    iget-object v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

    invoke-virtual {v0}, Lcom/android/server/power/ui/ShutdownWelcomeView;->show()V

    .line 115
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mIsShow:Z

    goto :goto_0
.end method

.method public onShutDown()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

    if-nez v0, :cond_0

    .line 124
    :goto_0
    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

    const v1, 0x104062f

    invoke-virtual {v0, v1}, Lcom/android/server/power/ui/ShutdownWelcomeView;->setWords(I)V

    .line 122
    iget-object v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

    invoke-virtual {v0}, Lcom/android/server/power/ui/ShutdownWelcomeView;->show()V

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mIsShow:Z

    goto :goto_0
.end method

.method public setUpdateProgress(I)V
    .locals 1
    .param p1, "progress"    # I

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mShutdownProgressBar:Lcom/android/server/power/ui/ShutdownProgressBar;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mShutdownProgressBar:Lcom/android/server/power/ui/ShutdownProgressBar;

    invoke-virtual {v0, p1}, Lcom/android/server/power/ui/ShutdownProgressBar;->setProgress(I)V

    .line 184
    :cond_0
    return-void
.end method

.method public show(Z)V
    .locals 8
    .param p1, "reboot"    # Z

    .prologue
    const/4 v1, -0x1

    .line 45
    iget-object v2, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

    if-nez v2, :cond_0

    .line 46
    new-instance v2, Lcom/android/server/power/ui/ShutdownWelcomeView;

    iget-object v3, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/server/power/ui/ShutdownWelcomeView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

    .line 49
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v2, :cond_2

    .line 51
    const v4, 0xc00008a

    .line 57
    .local v4, "flags":I
    const/4 v6, -0x1

    .line 59
    .local v6, "stretch":I
    const/16 v7, 0x7da

    .line 61
    .local v7, "type":I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7da

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 63
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const-string v1, "Byebye"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 64
    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 66
    const/4 v1, 0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 68
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 70
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 76
    :cond_1
    iput-object v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 79
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "flags":I
    .end local v6    # "stretch":I
    .end local v7    # "type":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

    iget-object v3, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    iget-object v1, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

    const v2, 0x3600002

    invoke-virtual {v1, v2}, Lcom/android/server/power/ui/ShutdownWelcomeView;->setSystemUiVisibility(I)V

    .line 88
    iget-object v1, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

    iget-object v3, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    if-eqz p1, :cond_3

    .line 91
    invoke-virtual {p0}, Lcom/android/server/power/ui/ShutdownViewManager;->onReboot()V

    .line 95
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

    invoke-virtual {v1}, Lcom/android/server/power/ui/ShutdownWelcomeView;->requestFocus()Z

    .line 96
    return-void

    .line 93
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/power/ui/ShutdownViewManager;->onShutDown()V

    goto :goto_0
.end method

.method public show(ZZ)V
    .locals 2
    .param p1, "reboot"    # Z
    .param p2, "update"    # Z

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lcom/android/server/power/ui/ShutdownWelcomeView;

    iget-object v1, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/power/ui/ShutdownWelcomeView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/power/ui/ShutdownViewManager;->mWelcomeView:Lcom/android/server/power/ui/ShutdownWelcomeView;

    .line 160
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/power/ui/ShutdownViewManager;->show(Z)V

    .line 162
    if-eqz p2, :cond_1

    .line 163
    invoke-direct {p0}, Lcom/android/server/power/ui/ShutdownViewManager;->addProgressBar()V

    .line 165
    :cond_1
    return-void
.end method
