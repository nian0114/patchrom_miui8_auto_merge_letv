.class final Lcom/android/server/am/BgGPSResourcePolicy$BgGPSSettingsObserver;
.super Landroid/database/ContentObserver;
.source "BackAppResourcePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BgGPSResourcePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BgGPSSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BgGPSResourcePolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BgGPSResourcePolicy;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 1025
    iput-object p1, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSSettingsObserver;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    .line 1026
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1027
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1031
    iget-object v1, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSSettingsObserver;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # invokes: Lcom/android/server/am/BgGPSResourcePolicy;->getCurrentGpsState()I
    invoke-static {v1}, Lcom/android/server/am/BgGPSResourcePolicy;->access$000(Lcom/android/server/am/BgGPSResourcePolicy;)I

    move-result v0

    .line 1032
    .local v0, "gpsState":I
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v1, :cond_0

    const-string v1, "BgGPSResourcePolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LIMIT_APP: onChange gpsState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mRestoreGpsState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSSettingsObserver;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # getter for: Lcom/android/server/am/BgGPSResourcePolicy;->mRestoreGpsState:I
    invoke-static {v3}, Lcom/android/server/am/BgGPSResourcePolicy;->access$100(Lcom/android/server/am/BgGPSResourcePolicy;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    :cond_0
    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSSettingsObserver;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # getter for: Lcom/android/server/am/BgGPSResourcePolicy;->mRestoreGpsState:I
    invoke-static {v1}, Lcom/android/server/am/BgGPSResourcePolicy;->access$100(Lcom/android/server/am/BgGPSResourcePolicy;)I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSSettingsObserver;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # getter for: Lcom/android/server/am/BgGPSResourcePolicy;->mRestoreGpsState:I
    invoke-static {v1}, Lcom/android/server/am/BgGPSResourcePolicy;->access$100(Lcom/android/server/am/BgGPSResourcePolicy;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    .line 1037
    const-string v1, "BgGPSResourcePolicy"

    const-string v2, "LIMIT_APP: gps set by others, we do nothing, and stop"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    iget-object v1, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSSettingsObserver;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # invokes: Lcom/android/server/am/BgGPSResourcePolicy;->resetSample()V
    invoke-static {v1}, Lcom/android/server/am/BgGPSResourcePolicy;->access$200(Lcom/android/server/am/BgGPSResourcePolicy;)V

    .line 1039
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v1, :cond_2

    const-string v1, "BgGPSResourcePolicy"

    const-string v2, "LIMIT_APP: stop watching gps uri,reason 3"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSSettingsObserver;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # getter for: Lcom/android/server/am/BgGPSResourcePolicy;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/am/BgGPSResourcePolicy;->access$400(Lcom/android/server/am/BgGPSResourcePolicy;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSSettingsObserver;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # getter for: Lcom/android/server/am/BgGPSResourcePolicy;->mBgGPSSettingsObserver:Lcom/android/server/am/BgGPSResourcePolicy$BgGPSSettingsObserver;
    invoke-static {v2}, Lcom/android/server/am/BgGPSResourcePolicy;->access$300(Lcom/android/server/am/BgGPSResourcePolicy;)Lcom/android/server/am/BgGPSResourcePolicy$BgGPSSettingsObserver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1042
    :cond_3
    return-void
.end method
