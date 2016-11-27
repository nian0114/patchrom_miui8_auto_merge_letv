.class Lcom/android/server/policy/global/GlobalActionViewMediator$3;
.super Ljava/lang/Object;
.source "GlobalActionViewMediator.java"

# interfaces
.implements Lcom/android/server/policy/global/GlobalActionViewMediator$MediatorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/global/GlobalActionViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;


# direct methods
.method constructor <init>(Lcom/android/server/policy/global/GlobalActionViewMediator;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$3;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleBackKey()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$3;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    # invokes: Lcom/android/server/policy/global/GlobalActionViewMediator;->hideLocked()V
    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->access$300(Lcom/android/server/policy/global/GlobalActionViewMediator;)V

    return-void
.end method

.method public hiddenWindow()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$3;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    # getter for: Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionDonePending:Z
    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->access$500(Lcom/android/server/policy/global/GlobalActionViewMediator;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$3;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    # invokes: Lcom/android/server/policy/global/GlobalActionViewMediator;->hideLocked()V
    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->access$300(Lcom/android/server/policy/global/GlobalActionViewMediator;)V

    goto :goto_0
.end method

.method public onActionStart()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$3;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/policy/global/GlobalActionViewMediator;->mIsActionStart:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/global/GlobalActionViewMediator;->access$202(Lcom/android/server/policy/global/GlobalActionViewMediator;Z)Z

    return-void
.end method

.method public reboot()V
    .locals 3

    .prologue
    const-string v0, "GlobalAction"

    const-string v1, "reboot..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$3;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    # getter for: Lcom/android/server/policy/global/GlobalActionViewMediator;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->access$600(Lcom/android/server/policy/global/GlobalActionViewMediator;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v0

    const-string v1, "user_click_reboot"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->leuiReboot(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$3;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    # getter for: Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionViewManager:Lcom/android/server/policy/global/GlobalActionViewManager;
    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->access$700(Lcom/android/server/policy/global/GlobalActionViewMediator;)Lcom/android/server/policy/global/GlobalActionViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/global/GlobalActionViewManager;->onReboot()V

    return-void
.end method

.method public shutdown()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "GlobalAction"

    const-string v3, "shutdown..."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$3;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    # getter for: Lcom/android/server/policy/global/GlobalActionViewMediator;->mGlobalActionViewManager:Lcom/android/server/policy/global/GlobalActionViewManager;
    invoke-static {v2}, Lcom/android/server/policy/global/GlobalActionViewMediator;->access$700(Lcom/android/server/policy/global/GlobalActionViewMediator;)Lcom/android/server/policy/global/GlobalActionViewManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/policy/global/GlobalActionViewManager;->onShutDown()V

    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$3;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    # getter for: Lcom/android/server/policy/global/GlobalActionViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/policy/global/GlobalActionViewMediator;->access$800(Lcom/android/server/policy/global/GlobalActionViewMediator;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enable_quickboot"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .local v0, "quickbootEnabled":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$3;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    # invokes: Lcom/android/server/policy/global/GlobalActionViewMediator;->startQuickBoot()V
    invoke-static {v1}, Lcom/android/server/policy/global/GlobalActionViewMediator;->access$900(Lcom/android/server/policy/global/GlobalActionViewMediator;)V

    :goto_1
    return-void

    .end local v0    # "quickbootEnabled":Z
    :cond_0
    move v0, v1

    goto :goto_0

    .restart local v0    # "quickbootEnabled":Z
    :cond_1
    iget-object v2, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$3;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    # getter for: Lcom/android/server/policy/global/GlobalActionViewMediator;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    invoke-static {v2}, Lcom/android/server/policy/global/GlobalActionViewMediator;->access$600(Lcom/android/server/policy/global/GlobalActionViewMediator;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->shutdown(Z)V

    goto :goto_1
.end method

.method public userActivity()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/global/GlobalActionViewMediator$3;->this$0:Lcom/android/server/policy/global/GlobalActionViewMediator;

    # getter for: Lcom/android/server/policy/global/GlobalActionViewMediator;->mPM:Landroid/os/PowerManager;
    invoke-static {v0}, Lcom/android/server/policy/global/GlobalActionViewMediator;->access$400(Lcom/android/server/policy/global/GlobalActionViewMediator;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    return-void
.end method
