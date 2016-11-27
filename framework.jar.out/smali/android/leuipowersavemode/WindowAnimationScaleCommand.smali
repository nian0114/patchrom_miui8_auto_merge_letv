.class public Landroid/leuipowersavemode/WindowAnimationScaleCommand;
.super Landroid/leuipowersavemode/command/ALetvDeepPowerSaveCommand;
.source "WindowAnimationScaleCommand.java"


# instance fields
.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/leuipowersavemode/command/ALetvDeepPowerSaveCommand;-><init>()V

    return-void
.end method

.method private getWindowManager()Landroid/view/IWindowManager;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/leuipowersavemode/WindowAnimationScaleCommand;->mWindowManager:Landroid/view/IWindowManager;

    if-nez v0, :cond_0

    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Landroid/leuipowersavemode/WindowAnimationScaleCommand;->mWindowManager:Landroid/view/IWindowManager;

    :cond_0
    iget-object v0, p0, Landroid/leuipowersavemode/WindowAnimationScaleCommand;->mWindowManager:Landroid/view/IWindowManager;

    return-object v0
.end method

.method private writeAnimationScaleOption(IF)V
    .locals 2
    .param p1, "which"    # I
    .param p2, "newValue"    # F

    .prologue
    move v0, p2

    .local v0, "scale":F
    :try_start_0
    iget-object v1, p0, Landroid/leuipowersavemode/WindowAnimationScaleCommand;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v1, p1, v0}, Landroid/view/IWindowManager;->setAnimationScale(IF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public disabled(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-super {p0, p1}, Landroid/leuipowersavemode/command/ALetvDeepPowerSaveCommand;->disabled(Landroid/content/Context;)V

    invoke-direct {p0}, Landroid/leuipowersavemode/WindowAnimationScaleCommand;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Landroid/leuipowersavemode/WindowAnimationScaleCommand;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v0, p0, Landroid/leuipowersavemode/WindowAnimationScaleCommand;->mWindowManager:Landroid/view/IWindowManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid/leuipowersavemode/WindowAnimationScaleCommand;->writeAnimationScaleOption(IF)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Landroid/leuipowersavemode/WindowAnimationScaleCommand;->writeAnimationScaleOption(IF)V

    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Landroid/leuipowersavemode/WindowAnimationScaleCommand;->writeAnimationScaleOption(IF)V

    const-string v0, "WindowManager mWindowAnimationScale set 1,mTransitionAnimationScale set 1,mAnimatorDurationScale set 1"

    iput-object v0, p0, Landroid/leuipowersavemode/WindowAnimationScaleCommand;->mCommandString:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public enabled(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/leuipowersavemode/command/ALetvDeepPowerSaveCommand;->enabled(Landroid/content/Context;)V

    invoke-direct {p0}, Landroid/leuipowersavemode/WindowAnimationScaleCommand;->getWindowManager()Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Landroid/leuipowersavemode/WindowAnimationScaleCommand;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v0, p0, Landroid/leuipowersavemode/WindowAnimationScaleCommand;->mWindowManager:Landroid/view/IWindowManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Landroid/leuipowersavemode/WindowAnimationScaleCommand;->writeAnimationScaleOption(IF)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, v1}, Landroid/leuipowersavemode/WindowAnimationScaleCommand;->writeAnimationScaleOption(IF)V

    const/4 v0, 0x2

    invoke-direct {p0, v0, v1}, Landroid/leuipowersavemode/WindowAnimationScaleCommand;->writeAnimationScaleOption(IF)V

    const-string v0, "WindowManager mWindowAnimationScale set 0,mTransitionAnimationScale set 0,mAnimatorDurationScale set 0"

    iput-object v0, p0, Landroid/leuipowersavemode/WindowAnimationScaleCommand;->mCommandString:Ljava/lang/String;

    :cond_0
    return-void
.end method
