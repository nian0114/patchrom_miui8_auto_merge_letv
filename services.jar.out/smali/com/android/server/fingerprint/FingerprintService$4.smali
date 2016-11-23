.class Lcom/android/server/fingerprint/FingerprintService$4;
.super Landroid/os/Handler;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0

    .prologue
    .line 1348
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$4;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1350
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 1375
    :cond_0
    :goto_0
    return-void

    .line 1353
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$4;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mFingerprintExtend:Lcom/android/server/fingerprint/FingerprintExtend;
    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->access$1900(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintExtend;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1354
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$4;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService$4;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/fingerprint/FingerprintService;->access$900(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "leui_finger_print_living_detection_enable"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_1

    :goto_1
    # setter for: Lcom/android/server/fingerprint/FingerprintService;->mLivingDetectionEnable:Z
    invoke-static {v3, v1}, Lcom/android/server/fingerprint/FingerprintService;->access$2002(Lcom/android/server/fingerprint/FingerprintService;Z)Z

    .line 1358
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$4;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mFingerprintExtend:Lcom/android/server/fingerprint/FingerprintExtend;
    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$1900(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/FingerprintExtend;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$4;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v2}, Lcom/android/server/fingerprint/FingerprintService;->getFingerprintDaemon()Landroid/hardware/fingerprint/IFingerprintDaemon;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$4;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mLivingDetectionEnable:Z
    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->access$2000(Lcom/android/server/fingerprint/FingerprintService;)Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/server/fingerprint/FingerprintExtend;->setLivingDetection(Landroid/hardware/fingerprint/IFingerprintDaemon;Z)I

    move-result v0

    .line 1360
    .local v0, "result":I
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "change living detection result : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enable : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$4;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mLivingDetectionEnable:Z
    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->access$2000(Lcom/android/server/fingerprint/FingerprintService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0    # "result":I
    :cond_1
    move v1, v2

    .line 1354
    goto :goto_1

    .line 1365
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService$4;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$4;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->access$900(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "leui_finger_print_navigation_enable"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_2

    move v3, v1

    :goto_2
    # setter for: Lcom/android/server/fingerprint/FingerprintService;->mNavigationEnable:Z
    invoke-static {v4, v3}, Lcom/android/server/fingerprint/FingerprintService;->access$2102(Lcom/android/server/fingerprint/FingerprintService;Z)Z

    .line 1368
    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$4;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService$4;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mNavigationEnable:Z
    invoke-static {v4}, Lcom/android/server/fingerprint/FingerprintService;->access$2100(Lcom/android/server/fingerprint/FingerprintService;)Z

    move-result v4

    if-eqz v4, :cond_3

    :goto_3
    invoke-virtual {v3, v1}, Lcom/android/server/fingerprint/FingerprintService;->setDefaultMode(I)V

    .line 1369
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init default mode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/fingerprint/FingerprintService$4;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    # getter for: Lcom/android/server/fingerprint/FingerprintService;->mNavigationEnable:Z
    invoke-static {v3}, Lcom/android/server/fingerprint/FingerprintService;->access$2100(Lcom/android/server/fingerprint/FingerprintService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2
    move v3, v2

    .line 1365
    goto :goto_2

    :cond_3
    move v1, v2

    .line 1368
    goto :goto_3

    .line 1350
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
