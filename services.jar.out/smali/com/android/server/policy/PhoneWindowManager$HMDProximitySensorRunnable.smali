.class Lcom/android/server/policy/PhoneWindowManager$HMDProximitySensorRunnable;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HMDProximitySensorRunnable"
.end annotation


# instance fields
.field mState:I

.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;I)V
    .locals 1
    .param p2, "state"    # I

    .prologue
    .line 8434
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$HMDProximitySensorRunnable;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8432
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/policy/PhoneWindowManager$HMDProximitySensorRunnable;->mState:I

    .line 8435
    iput p2, p0, Lcom/android/server/policy/PhoneWindowManager$HMDProximitySensorRunnable;->mState:I

    .line 8436
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 8439
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager$HMDProximitySensorRunnable;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 8440
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHMDProximitySensorState state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager$HMDProximitySensorRunnable;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8441
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.proximity_sensor2"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8442
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "psensor/1"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 8443
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$HMDProximitySensorRunnable;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 8450
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 8444
    :cond_1
    iget v1, p0, Lcom/android/server/policy/PhoneWindowManager$HMDProximitySensorRunnable;->mState:I

    if-nez v1, :cond_0

    .line 8445
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setHMDProximitySensorState state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/policy/PhoneWindowManager$HMDProximitySensorRunnable;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8446
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.proximity_sensor2"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8447
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v1, "psensor/0"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 8448
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$HMDProximitySensorRunnable;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method
