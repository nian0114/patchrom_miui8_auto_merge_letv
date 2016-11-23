.class final Lcom/android/server/display/DisplayManagerService$LocalService;
.super Landroid/hardware/display/DisplayManagerInternal;
.source "DisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .locals 0

    .prologue
    .line 1638
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Landroid/hardware/display/DisplayManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayManagerService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/display/DisplayManagerService;
    .param p2, "x1"    # Lcom/android/server/display/DisplayManagerService$1;

    .prologue
    .line 1638
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayManagerService$LocalService;-><init>(Lcom/android/server/display/DisplayManagerService;)V

    return-void
.end method


# virtual methods
.method public getCurrentScreenBrightness()I
    .locals 1

    .prologue
    .line 1749
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$4000(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->getCurrentScreenBrightness()I

    move-result v0

    return v0
.end method

.method public getDisplayInfo(I)Landroid/view/DisplayInfo;
    .locals 2
    .param p1, "displayId"    # I

    .prologue
    .line 1698
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    # invokes: Lcom/android/server/display/DisplayManagerService;->getDisplayInfoInternal(II)Landroid/view/DisplayInfo;
    invoke-static {v0, p1, v1}, Lcom/android/server/display/DisplayManagerService;->access$2100(Lcom/android/server/display/DisplayManagerService;II)Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method public getScreenAutoBrightness()I
    .locals 1

    .prologue
    .line 1692
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$4000(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->getScreenAutoBrightness()I

    move-result v0

    return v0
.end method

.method public initPowerManagement(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;)V
    .locals 8
    .param p1, "callbacks"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "sensorManager"    # Landroid/hardware/SensorManager;

    .prologue
    .line 1642
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$700(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v6

    monitor-enter v6

    .line 1643
    :try_start_0
    new-instance v5, Lcom/android/server/display/DisplayManagerService$LocalService$1;

    invoke-direct {v5, p0, p1}, Lcom/android/server/display/DisplayManagerService$LocalService$1;-><init>(Lcom/android/server/display/DisplayManagerService$LocalService;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;)V

    .line 1658
    .local v5, "blanker":Lcom/android/server/display/DisplayBlanker;
    iget-object v7, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    new-instance v0, Lcom/android/server/display/DisplayPowerController;

    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/display/DisplayManagerService;->access$1500(Lcom/android/server/display/DisplayManagerService;)Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayPowerController;-><init>(Landroid/content/Context;Landroid/hardware/display/DisplayManagerInternal$DisplayPowerCallbacks;Landroid/os/Handler;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayBlanker;)V

    # setter for: Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;
    invoke-static {v7, v0}, Lcom/android/server/display/DisplayManagerService;->access$4002(Lcom/android/server/display/DisplayManagerService;Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController;

    .line 1660
    monitor-exit v6

    .line 1661
    return-void

    .line 1660
    .end local v5    # "blanker":Lcom/android/server/display/DisplayBlanker;
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isProximitySensorAvailable()Z
    .locals 1

    .prologue
    .line 1672
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$4000(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->isProximitySensorAvailable()Z

    move-result v0

    return v0
.end method

.method public isProximitySensorPositive()Z
    .locals 1

    .prologue
    .line 1682
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$4000(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayPowerController;->isProximitySensorPositive()Z

    move-result v0

    return v0
.end method

.method public performTraversalInTransactionFromWindowManager()V
    .locals 1

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->performTraversalInTransactionFromWindowManagerInternal()V
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$4600(Lcom/android/server/display/DisplayManagerService;)V

    .line 1727
    return-void
.end method

.method public registerDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;

    .prologue
    .line 1703
    if-nez p1, :cond_0

    .line 1704
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1707
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->registerDisplayTransactionListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->access$4300(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    .line 1708
    return-void
.end method

.method public requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z
    .locals 1
    .param p1, "request"    # Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;
    .param p2, "waitForNegativeProximity"    # Z

    .prologue
    .line 1666
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$4000(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/DisplayPowerController;->requestPowerState(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Z)Z

    move-result v0

    return v0
.end method

.method public setButtonLight(Z)V
    .locals 4
    .param p1, "isAllow"    # Z

    .prologue
    .line 1760
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService;->access$4900(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1761
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1762
    iget-object v3, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mDisplayDevices:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/android/server/display/DisplayManagerService;->access$4900(Lcom/android/server/display/DisplayManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayDevice;

    .line 1763
    .local v1, "device":Lcom/android/server/display/DisplayDevice;
    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayDevice;->setButtonLight(Z)V

    .line 1761
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1765
    .end local v1    # "device":Lcom/android/server/display/DisplayDevice;
    :cond_0
    return-void
.end method

.method public setDisplayInfoOverrideFromWindowManager(ILandroid/view/DisplayInfo;)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "info"    # Landroid/view/DisplayInfo;

    .prologue
    .line 1721
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->setDisplayInfoOverrideFromWindowManagerInternal(ILandroid/view/DisplayInfo;)V
    invoke-static {v0, p1, p2}, Lcom/android/server/display/DisplayManagerService;->access$4500(Lcom/android/server/display/DisplayManagerService;ILandroid/view/DisplayInfo;)V

    .line 1722
    return-void
.end method

.method public setDisplayOffsets(III)V
    .locals 1
    .param p1, "displayId"    # I
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 1738
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->setDisplayOffsetsInternal(III)V
    invoke-static {v0, p1, p2, p3}, Lcom/android/server/display/DisplayManagerService;->access$4800(Lcom/android/server/display/DisplayManagerService;III)V

    .line 1739
    return-void
.end method

.method public setDisplayProperties(IZFIZ)V
    .locals 6
    .param p1, "displayId"    # I
    .param p2, "hasContent"    # Z
    .param p3, "requestedRefreshRate"    # F
    .param p4, "requestedMode"    # I
    .param p5, "inTraversal"    # Z

    .prologue
    .line 1732
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    # invokes: Lcom/android/server/display/DisplayManagerService;->setDisplayPropertiesInternal(IZFIZ)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/display/DisplayManagerService;->access$4700(Lcom/android/server/display/DisplayManagerService;IZFIZ)V

    .line 1734
    return-void
.end method

.method public setNotifier(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 1744
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "notifier":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$4000(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v0

    check-cast p2, Lcom/android/server/power/Notifier;

    .end local p2    # "notifier":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0, p2}, Lcom/android/server/display/DisplayPowerController;->setNotifier(Lcom/android/server/power/Notifier;)V

    .line 1745
    return-void
.end method

.method public setScreenAutoBrightness(I)Z
    .locals 1
    .param p1, "brightness"    # I

    .prologue
    .line 1754
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # getter for: Lcom/android/server/display/DisplayManagerService;->mDisplayPowerController:Lcom/android/server/display/DisplayPowerController;
    invoke-static {v0}, Lcom/android/server/display/DisplayManagerService;->access$4000(Lcom/android/server/display/DisplayManagerService;)Lcom/android/server/display/DisplayPowerController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayPowerController;->setScreenAutoBrightness(I)Z

    move-result v0

    return v0
.end method

.method public unregisterDisplayTransactionListener(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;

    .prologue
    .line 1712
    if-nez p1, :cond_0

    .line 1713
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1716
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$LocalService;->this$0:Lcom/android/server/display/DisplayManagerService;

    # invokes: Lcom/android/server/display/DisplayManagerService;->unregisterDisplayTransactionListenerInternal(Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V
    invoke-static {v0, p1}, Lcom/android/server/display/DisplayManagerService;->access$4400(Lcom/android/server/display/DisplayManagerService;Landroid/hardware/display/DisplayManagerInternal$DisplayTransactionListener;)V

    .line 1717
    return-void
.end method
