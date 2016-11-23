.class Lcom/android/server/policy/PhoneWindowManager$9;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 1531
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1534
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    # getter for: Lcom/android/server/policy/PhoneWindowManager;->isScreenshotChord:Z
    invoke-static {v1}, Lcom/android/server/policy/PhoneWindowManager;->access$1700(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1535
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->getTelecommService()Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 1536
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->endCall()Z

    .line 1538
    .end local v0    # "telecomManager":Landroid/telecom/TelecomManager;
    :cond_0
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$9;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/policy/PhoneWindowManager;->isScreenshotChord:Z
    invoke-static {v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->access$1702(Lcom/android/server/policy/PhoneWindowManager;Z)Z

    .line 1539
    return-void
.end method
