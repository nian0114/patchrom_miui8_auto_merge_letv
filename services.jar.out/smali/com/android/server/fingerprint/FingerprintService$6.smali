.class Lcom/android/server/fingerprint/FingerprintService$6;
.super Landroid/database/ContentObserver;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/fingerprint/FingerprintService;->registerNavigationObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 1438
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$6;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1441
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$6;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v3}, Lcom/android/server/fingerprint/FingerprintService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "leui_finger_print_navigation_enable"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v0, v1

    .line 1444
    .local v0, "enable":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$6;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mNavigationEnable:Z
    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->access$2100(Lcom/android/server/fingerprint/FingerprintService;)Z

    move-result v3

    if-eq v0, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$6;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mFingerprintExtend:Lcom/android/server/fingerprint/FingerprintExtend;
    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->access$1900(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintExtend;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1445
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$6;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # setter for: Lcom/android/server/fingerprint/FingerprintService;->mNavigationEnable:Z
    invoke-static {v3, v0}, Lcom/android/server/fingerprint/FingerprintService;->access$2102(Lcom/android/server/fingerprint/FingerprintService;Z)Z

    .line 1446
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$6;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService$6;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mNavigationEnable:Z
    invoke-static {v4}, Lcom/android/server/fingerprint/FingerprintService;->access$2100(Lcom/android/server/fingerprint/FingerprintService;)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Lcom/android/server/fingerprint/FingerprintService;->setDefaultMode(I)V

    .line 1447
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "navigation status change to :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$6;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mNavigationEnable:Z
    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->access$2100(Lcom/android/server/fingerprint/FingerprintService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    :cond_0
    return-void

    .end local v0    # "enable":Z
    :cond_1
    move v0, v2

    .line 1441
    goto :goto_0

    .restart local v0    # "enable":Z
    :cond_2
    move v1, v2

    .line 1446
    goto :goto_1
.end method
