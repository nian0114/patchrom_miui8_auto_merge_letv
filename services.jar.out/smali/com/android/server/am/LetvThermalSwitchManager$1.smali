.class Lcom/android/server/am/LetvThermalSwitchManager$1;
.super Landroid/content/BroadcastReceiver;
.source "LetvThermalSwitchManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/LetvThermalSwitchManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/LetvThermalSwitchManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/LetvThermalSwitchManager;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/am/LetvThermalSwitchManager$1;->this$0:Lcom/android/server/am/LetvThermalSwitchManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, "action":Ljava/lang/String;
    const-string v4, "ThermalSwitchManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "received intent "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const v1, 0x7fffffff

    .local v1, "appTimeout":I
    sget-object v4, Lcom/android/server/am/LetvThermalSwitchConfig;->appConfig:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .local v3, "o":Ljava/lang/Object;
    sget-object v4, Lcom/android/server/am/LetvThermalSwitchConfig;->appConfig:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v4, v1, :cond_0

    sget-object v4, Lcom/android/server/am/LetvThermalSwitchConfig;->appConfig:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .end local v3    # "o":Ljava/lang/Object;
    :cond_1
    const-string v4, "ThermalSwitchManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "smallest app timeout: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " seconds"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/am/LetvThermalSwitchManager$1;->this$0:Lcom/android/server/am/LetvThermalSwitchManager;

    # invokes: Lcom/android/server/am/LetvThermalSwitchManager;->changeToDynamicThermalManagement()V
    invoke-static {v4}, Lcom/android/server/am/LetvThermalSwitchManager;->access$700(Lcom/android/server/am/LetvThermalSwitchManager;)V

    iget-object v4, p0, Lcom/android/server/am/LetvThermalSwitchManager$1;->this$0:Lcom/android/server/am/LetvThermalSwitchManager;

    sget-object v5, Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;->Enabled:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    # setter for: Lcom/android/server/am/LetvThermalSwitchManager;->mState:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;
    invoke-static {v4, v5}, Lcom/android/server/am/LetvThermalSwitchManager;->access$202(Lcom/android/server/am/LetvThermalSwitchManager;Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;)Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    const-string v4, "ThermalSwitchManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "init thermal status: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/LetvThermalSwitchManager$1;->this$0:Lcom/android/server/am/LetvThermalSwitchManager;

    # getter for: Lcom/android/server/am/LetvThermalSwitchManager;->mState:Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;
    invoke-static {v6}, Lcom/android/server/am/LetvThermalSwitchManager;->access$200(Lcom/android/server/am/LetvThermalSwitchManager;)Lcom/android/server/am/LetvThermalSwitchManager$ThermalSwitchState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1    # "appTimeout":I
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_2
    return-void
.end method
