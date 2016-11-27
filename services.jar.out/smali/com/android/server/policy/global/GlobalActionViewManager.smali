.class public Lcom/android/server/policy/global/GlobalActionViewManager;
.super Ljava/lang/Object;
.source "GlobalActionViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

.field mHiddenListener:Landroid/animation/Animator$AnimatorListener;

.field private mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

.field private mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field private final mMediatorCallback:Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

.field private mPending:Z

.field mShowListener:Landroid/animation/Animator$AnimatorListener;

.field private final mViewManager:Landroid/view/ViewManager;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "GlobalAction"

    sput-object v0, Lcom/android/server/policy/global/GlobalActionViewManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewManager;Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewManager"    # Landroid/view/ViewManager;
    .param p3, "callback"    # Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/policy/global/GlobalActionViewManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/global/GlobalActionViewManager$1;-><init>(Lcom/android/server/policy/global/GlobalActionViewManager;)V

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/android/server/policy/global/GlobalActionViewManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/policy/global/GlobalActionViewManager$2;-><init>(Lcom/android/server/policy/global/GlobalActionViewManager;)V

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHiddenListener:Landroid/animation/Animator$AnimatorListener;

    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mViewManager:Landroid/view/ViewManager;

    iput-object p3, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mMediatorCallback:Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionViewManager;->initLockSettings()Lcom/android/internal/widget/ILockSettings;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/global/GlobalActionViewManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/policy/global/GlobalActionViewManager;

    .prologue
    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionViewManager;->hideLocked()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/global/GlobalActionViewManager;)Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/global/GlobalActionViewManager;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mMediatorCallback:Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/policy/global/GlobalActionViewManager;)Lcom/android/server/policy/global/GlobalActionHostView;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/policy/global/GlobalActionViewManager;

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    return-object v0
.end method

.method private generateContent()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionViewManager;->generateHost()V

    :cond_0
    return-void
.end method

.method private generateDecor()V
    .locals 2

    .prologue
    new-instance v0, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;-><init>(Lcom/android/server/policy/global/GlobalActionViewManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    return-void
.end method

.method private generateHost()V
    .locals 6

    .prologue
    const/4 v3, -0x1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .local v2, "params":Landroid/widget/FrameLayout$LayoutParams;
    new-instance v3, Lcom/android/server/policy/global/GlobalActionHostView;

    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    invoke-direct {v3, v4, v5}, Lcom/android/server/policy/global/GlobalActionHostView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v3, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    const/4 v1, 0x0

    .local v1, "isLocked":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    invoke-interface {v3}, Lcom/android/internal/widget/ILockSettings;->isPhoneControlLocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    invoke-virtual {v3, v1}, Lcom/android/server/policy/global/GlobalActionHostView;->installHost(Z)V

    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    invoke-virtual {v3, v4, v2}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mMediatorCallback:Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;

    invoke-virtual {v3, v4}, Lcom/android/server/policy/global/GlobalActionHostView;->setMediatorCallback(Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;)V

    return-void

    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    sget-object v3, Lcom/android/server/policy/global/GlobalActionViewManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateHost, get phonecontrol lock state failed exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private hideLocked()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mPending:Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionHostView;->cleanUp()V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionHostView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->removeView(Landroid/view/View;)V

    :cond_2
    iput-object v3, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    :cond_3
    iput-object v3, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    iput-boolean v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mPending:Z

    goto :goto_0
.end method

.method private initLockSettings()Lcom/android/internal/widget/ILockSettings;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_0

    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    return-object v0
.end method

.method private installDecor(Z)V
    .locals 8
    .param p1, "force"    # Z

    .prologue
    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionViewManager;->generateDecor()V

    :goto_0
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v2, :cond_1

    const/high16 v4, 0xc020000

    .local v4, "flags":I
    const/4 v6, -0x1

    .local v6, "stretch":I
    const/16 v7, 0x7d9

    .local v7, "type":I
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7d9

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const-string v1, "GlobalAction"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    const/4 v1, 0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_0
    iput-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v4    # "flags":I
    .end local v6    # "stretch":I
    .end local v7    # "type":I
    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    invoke-virtual {v1}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->removeAllViews()V

    invoke-direct {p0}, Lcom/android/server/policy/global/GlobalActionViewManager;->generateContent()V

    :cond_2
    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    invoke-virtual {v2}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->removeAllViews()V

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 4

    .prologue
    sget-object v1, Lcom/android/server/policy/global/GlobalActionViewManager;->TAG:Ljava/lang/String;

    const-string v2, "hide()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    invoke-virtual {v1}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mPending:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mPending:Z

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHiddenListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v2}, Lcom/android/server/policy/global/GlobalActionHostView;->hidden(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    const-string v2, "blurAlpha"

    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "value":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x226

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHiddenListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public declared-synchronized isShowing()Z
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->getVisibility()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onReboot()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/global/GlobalActionHostView;->onRebootOrShutdown(Z)V

    :cond_0
    return-void
.end method

.method public onShutDown()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/policy/global/GlobalActionHostView;->onRebootOrShutdown(Z)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    iget-boolean v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mPending:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v2, Lcom/android/server/policy/global/GlobalActionViewManager;->TAG:Ljava/lang/String;

    const-string v3, "show()..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mPending:Z

    invoke-direct {p0, v5}, Lcom/android/server/policy/global/GlobalActionViewManager;->installDecor(Z)V

    const/high16 v1, 0x200000

    .local v1, "visFlags":I
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    invoke-virtual {v2, v1}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->setSystemUiVisibility(I)V

    sget-object v2, Lcom/android/server/policy/global/GlobalActionViewManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "show:setSystemUiVisibility("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    iget-object v4, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    invoke-virtual {v2, v5}, Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    iget-object v3, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v2, v3}, Lcom/android/server/policy/global/GlobalActionHostView;->show(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mDecorView:Lcom/android/server/policy/global/GlobalActionViewManager$GlobalActionDecorView;

    const-string v3, "blurAlpha"

    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .local v0, "value":Landroid/animation/ObjectAnimator;
    const-wide/16 v2, 0x226

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mHostView:Lcom/android/server/policy/global/GlobalActionHostView;

    invoke-virtual {v2}, Lcom/android/server/policy/global/GlobalActionHostView;->requestFocus()Z

    goto :goto_0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public showLocked()V
    .locals 2

    .prologue
    sget-object v0, Lcom/android/server/policy/global/GlobalActionViewManager;->TAG:Ljava/lang/String;

    const-string v1, "showLocked()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/global/GlobalActionViewManager;->mPending:Z

    return-void
.end method
