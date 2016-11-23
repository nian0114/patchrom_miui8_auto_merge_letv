.class Lcom/android/server/fingerprint/FingerprintService$LivingDetectionObserver;
.super Landroid/database/ContentObserver;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LivingDetectionObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method public constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1410
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$LivingDetectionObserver;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    .line 1411
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1412
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v0, 0x1

    .line 1416
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$LivingDetectionObserver;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$900(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "leui_finger_print_living_detection_enable"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 1420
    .local v0, "enable":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$LivingDetectionObserver;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mLivingDetectionEnable:Z
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$2000(Lcom/android/server/fingerprint/FingerprintService;)Z

    move-result v2

    if-eq v0, v2, :cond_0

    .line 1421
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "living detection status change form :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService$LivingDetectionObserver;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mLivingDetectionEnable:Z
    invoke-static {v4}, Lcom/android/server/fingerprint/FingerprintService;->access$2000(Lcom/android/server/fingerprint/FingerprintService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$LivingDetectionObserver;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # setter for: Lcom/android/server/fingerprint/FingerprintService;->mLivingDetectionEnable:Z
    invoke-static {v2, v0}, Lcom/android/server/fingerprint/FingerprintService;->access$2002(Lcom/android/server/fingerprint/FingerprintService;Z)Z

    .line 1424
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$LivingDetectionObserver;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mFingerprintExtend:Lcom/android/server/fingerprint/FingerprintExtend;
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$1900(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintExtend;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1425
    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$LivingDetectionObserver;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mFingerprintExtend:Lcom/android/server/fingerprint/FingerprintExtend;
    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$1900(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintExtend;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$LivingDetectionObserver;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v3}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService$LivingDetectionObserver;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mLivingDetectionEnable:Z
    invoke-static {v4}, Lcom/android/server/fingerprint/FingerprintService;->access$2000(Lcom/android/server/fingerprint/FingerprintService;)Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/server/fingerprint/FingerprintExtend;->setLivingDetection(Landroid/hardware/fingerprint/IFingerprintDaemon;Z)I

    move-result v1

    .line 1427
    .local v1, "result":I
    const-string v2, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "change living detection enable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " enable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    .end local v1    # "result":I
    :cond_0
    return-void

    .line 1416
    .end local v0    # "enable":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
