.class Lcom/letv/leui/systemui/AntiInadvertentlyHelper$5;
.super Landroid/content/BroadcastReceiver;
.source "AntiInadvertentlyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/systemui/AntiInadvertentlyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;


# direct methods
.method constructor <init>(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$5;->this$0:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 268
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 269
    .local v0, "action":Ljava/lang/String;
    # getter for: Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->access$400()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive,action:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 271
    iget-object v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$5;->this$0:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    # getter for: Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->access$1000(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$5;->this$0:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    # getter for: Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mLocateChangeRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->access$900(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    const-string v3, "android.intent.action.lvr_hmd_in"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 274
    iget-object v3, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$5;->this$0:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    # setter for: Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->isVrDeviceIn:Z
    invoke-static {v3, v1}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->access$202(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;Z)Z

    .line 275
    iget-object v3, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$5;->this$0:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    # getter for: Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->isSettingEnable:Z
    invoke-static {v3}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->access$000(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$5;->this$0:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    # getter for: Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->isVrDeviceIn:Z
    invoke-static {v3}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->access$200(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # setter for: Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->ENABLE_ANTI_INADVERTENTLY:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->access$102(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 276
    iget-object v1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$5;->this$0:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    # invokes: Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->forceRelease()V
    invoke-static {v1}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->access$1100(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 275
    goto :goto_1

    .line 277
    :cond_3
    const-string v3, "android.intent.action.lvr_hmd_out"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 279
    iget-object v3, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$5;->this$0:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    # setter for: Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->isVrDeviceIn:Z
    invoke-static {v3, v2}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->access$202(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;Z)Z

    .line 280
    iget-object v3, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$5;->this$0:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    # getter for: Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->isSettingEnable:Z
    invoke-static {v3}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->access$000(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$5;->this$0:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    # getter for: Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->isVrDeviceIn:Z
    invoke-static {v3}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->access$200(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # setter for: Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->ENABLE_ANTI_INADVERTENTLY:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->access$102(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_2
.end method
