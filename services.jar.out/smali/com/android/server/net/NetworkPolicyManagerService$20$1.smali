.class Lcom/android/server/net/NetworkPolicyManagerService$20$1;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/NetworkPolicyManagerService$20;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/net/NetworkPolicyManagerService$20;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService$20;)V
    .locals 0

    .prologue
    .line 2997
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$20$1;->this$1:Lcom/android/server/net/NetworkPolicyManagerService$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 3000
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3001
    .local v0, "intent":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3002
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$20$1;->this$1:Lcom/android/server/net/NetworkPolicyManagerService$20;

    iget-object v1, v1, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->hasSupermanager:Z
    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1900(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3003
    const-string v1, "com.letv.android.supermanager"

    const-string v2, "com.letv.android.supermanager.activity.FlowNetworkControlActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3006
    :goto_0
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$20$1;->this$1:Lcom/android/server/net/NetworkPolicyManagerService$20;

    iget-object v1, v1, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->access$000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3007
    return-void

    .line 3005
    :cond_0
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$DataUsageSummaryActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
