.class Lcom/android/server/encryption/AccessControlManagerService$2;
.super Ljava/lang/Object;
.source "AccessControlManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/encryption/AccessControlManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/encryption/AccessControlManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/encryption/AccessControlManagerService;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/encryption/AccessControlManagerService$2;->this$0:Lcom/android/server/encryption/AccessControlManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/server/encryption/AccessControlManagerService$2;->this$0:Lcom/android/server/encryption/AccessControlManagerService;

    iget-object v0, v0, Lcom/android/server/encryption/AccessControlManagerService;->intent:Landroid/content/Intent;

    const-string v1, "mAccessControlInfo"

    iget-object v2, p0, Lcom/android/server/encryption/AccessControlManagerService$2;->this$0:Lcom/android/server/encryption/AccessControlManagerService;

    # getter for: Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlInfoBackup:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/android/server/encryption/AccessControlManagerService;->access$000(Lcom/android/server/encryption/AccessControlManagerService;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/encryption/AccessControlManagerService$2;->this$0:Lcom/android/server/encryption/AccessControlManagerService;

    iget-object v0, v0, Lcom/android/server/encryption/AccessControlManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/encryption/AccessControlManagerService$2;->this$0:Lcom/android/server/encryption/AccessControlManagerService;

    iget-object v1, v1, Lcom/android/server/encryption/AccessControlManagerService;->intent:Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v0, p0, Lcom/android/server/encryption/AccessControlManagerService$2;->this$0:Lcom/android/server/encryption/AccessControlManagerService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    # setter for: Lcom/android/server/encryption/AccessControlManagerService;->sendTime:J
    invoke-static {v0, v2, v3}, Lcom/android/server/encryption/AccessControlManagerService;->access$102(Lcom/android/server/encryption/AccessControlManagerService;J)J

    iget-object v0, p0, Lcom/android/server/encryption/AccessControlManagerService$2;->this$0:Lcom/android/server/encryption/AccessControlManagerService;

    # getter for: Lcom/android/server/encryption/AccessControlManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/encryption/AccessControlManagerService;->access$200(Lcom/android/server/encryption/AccessControlManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/encryption/AccessControlManagerService$2;->this$0:Lcom/android/server/encryption/AccessControlManagerService;

    # getter for: Lcom/android/server/encryption/AccessControlManagerService;->mAccessControlInfo:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/server/encryption/AccessControlManagerService;->access$300(Lcom/android/server/encryption/AccessControlManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
