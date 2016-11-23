.class Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;
.super Landroid/database/ContentObserver;
.source "ServiceWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ServiceWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetWorkProviderSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ServiceWatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/ServiceWatcher;Landroid/os/Handler;)V
    .locals 0
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;->this$0:Lcom/android/server/ServiceWatcher;

    .line 118
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 120
    return-void
.end method


# virtual methods
.method public observer()V
    .locals 4

    .prologue
    .line 122
    iget-object v1, p0, Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;->this$0:Lcom/android/server/ServiceWatcher;

    # getter for: Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/ServiceWatcher;->access$000(Lcom/android/server/ServiceWatcher;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 123
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v1, "network_provider_package"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 126
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 130
    const-string v1, "network"

    iget-object v2, p0, Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;->this$0:Lcom/android/server/ServiceWatcher;

    # getter for: Lcom/android/server/ServiceWatcher;->mName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/ServiceWatcher;->access$100(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "geocoder"

    iget-object v2, p0, Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;->this$0:Lcom/android/server/ServiceWatcher;

    # getter for: Lcom/android/server/ServiceWatcher;->mName:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/ServiceWatcher;->access$100(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;->this$0:Lcom/android/server/ServiceWatcher;

    # getter for: Lcom/android/server/ServiceWatcher;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/ServiceWatcher;->access$000(Lcom/android/server/ServiceWatcher;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "network_provider_package"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    .local v0, "packageName":Ljava/lang/String;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;->this$0:Lcom/android/server/ServiceWatcher;

    # getter for: Lcom/android/server/ServiceWatcher;->mPackageName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/ServiceWatcher;->access$200(Lcom/android/server/ServiceWatcher;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;->this$0:Lcom/android/server/ServiceWatcher;

    # getter for: Lcom/android/server/ServiceWatcher;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/ServiceWatcher;->access$300(Lcom/android/server/ServiceWatcher;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;->this$0:Lcom/android/server/ServiceWatcher;

    # invokes: Lcom/android/server/ServiceWatcher;->unbindLocked()V
    invoke-static {v1}, Lcom/android/server/ServiceWatcher;->access$400(Lcom/android/server/ServiceWatcher;)V

    .line 136
    iget-object v1, p0, Lcom/android/server/ServiceWatcher$NetWorkProviderSettingsObserver;->this$0:Lcom/android/server/ServiceWatcher;

    const/4 v3, 0x0

    # invokes: Lcom/android/server/ServiceWatcher;->bindBestPackageLocked(Ljava/lang/String;)Z
    invoke-static {v1, v3}, Lcom/android/server/ServiceWatcher;->access$500(Lcom/android/server/ServiceWatcher;Ljava/lang/String;)Z

    .line 137
    monitor-exit v2

    .line 140
    .end local v0    # "packageName":Ljava/lang/String;
    :cond_1
    return-void

    .line 137
    .restart local v0    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
