.class Lcom/android/server/policy/PhoneWindowManager$22;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .prologue
    .line 6625
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 6628
    const-string v0, "android.intent.action.lvr_hmd_in"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6629
    const-string v0, "WindowManager"

    const-string v1, "vr mode is IN"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6630
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x1

    # setter for: Lcom/android/server/policy/PhoneWindowManager;->isVrDeviceIn:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->access$2402(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    .line 6635
    :cond_0
    :goto_0
    return-void

    .line 6631
    :cond_1
    const-string v0, "android.intent.action.lvr_hmd_out"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6632
    const-string v0, "WindowManager"

    const-string v1, "vr mode is OUT"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6633
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$22;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/policy/PhoneWindowManager;->isVrDeviceIn:Z
    invoke-static {v0, v1}, Lcom/android/server/policy/PhoneWindowManager;->access$2402(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    goto :goto_0
.end method
