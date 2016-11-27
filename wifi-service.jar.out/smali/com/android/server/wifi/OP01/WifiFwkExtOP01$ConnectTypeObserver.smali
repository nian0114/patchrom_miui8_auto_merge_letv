.class Lcom/android/server/wifi/OP01/WifiFwkExtOP01$ConnectTypeObserver;
.super Landroid/database/ContentObserver;
.source "WifiFwkExtOP01.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/OP01/WifiFwkExtOP01;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectTypeObserver"
.end annotation


# instance fields
.field private mMyContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/wifi/OP01/WifiFwkExtOP01;


# direct methods
.method public constructor <init>(Lcom/android/server/wifi/OP01/WifiFwkExtOP01;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 3
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    iput-object p1, p0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01$ConnectTypeObserver;->this$0:Lcom/android/server/wifi/OP01/WifiFwkExtOP01;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01$ConnectTypeObserver;->mMyContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01$ConnectTypeObserver;->mMyContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v1, "wifi_connect_type"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    const-wide/16 v4, 0x0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01$ConnectTypeObserver;->this$0:Lcom/android/server/wifi/OP01/WifiFwkExtOP01;

    iget-object v1, p0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01$ConnectTypeObserver;->mMyContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_connect_type"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mCellToWiFiPolicy:I
    invoke-static {v0, v1}, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->access$002(Lcom/android/server/wifi/OP01/WifiFwkExtOP01;I)I

    iget-object v0, p0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01$ConnectTypeObserver;->this$0:Lcom/android/server/wifi/OP01/WifiFwkExtOP01;

    # setter for: Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mSwitchSuspendTime:J
    invoke-static {v0, v4, v5}, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->access$102(Lcom/android/server/wifi/OP01/WifiFwkExtOP01;J)J

    iget-object v0, p0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01$ConnectTypeObserver;->this$0:Lcom/android/server/wifi/OP01/WifiFwkExtOP01;

    # setter for: Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mReselectSuspendTime:J
    invoke-static {v0, v4, v5}, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->access$202(Lcom/android/server/wifi/OP01/WifiFwkExtOP01;J)J

    const-string v0, "@M_WifiFwkExtOP01"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectTypeObserver, mCellToWiFiPolicy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01$ConnectTypeObserver;->this$0:Lcom/android/server/wifi/OP01/WifiFwkExtOP01;

    # getter for: Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->mCellToWiFiPolicy:I
    invoke-static {v2}, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->access$000(Lcom/android/server/wifi/OP01/WifiFwkExtOP01;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wifi/OP01/WifiFwkExtOP01$ConnectTypeObserver;->this$0:Lcom/android/server/wifi/OP01/WifiFwkExtOP01;

    # invokes: Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->sendUpdateSettingsBroadcast()V
    invoke-static {v0}, Lcom/android/server/wifi/OP01/WifiFwkExtOP01;->access$300(Lcom/android/server/wifi/OP01/WifiFwkExtOP01;)V

    return-void
.end method
