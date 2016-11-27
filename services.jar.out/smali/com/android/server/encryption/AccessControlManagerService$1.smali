.class Lcom/android/server/encryption/AccessControlManagerService$1;
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
    iput-object p1, p0, Lcom/android/server/encryption/AccessControlManagerService$1;->this$0:Lcom/android/server/encryption/AccessControlManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/android/server/encryption/AccessControlManagerService$1;->this$0:Lcom/android/server/encryption/AccessControlManagerService;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/encryption/AccessControlManagerService;->mWriteScheduled:Z

    new-instance v0, Lcom/android/server/encryption/AccessControlManagerService$1$1;

    invoke-direct {v0, p0}, Lcom/android/server/encryption/AccessControlManagerService$1$1;-><init>(Lcom/android/server/encryption/AccessControlManagerService$1;)V

    .local v0, "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .end local v0    # "task":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/Void;Ljava/lang/Void;Ljava/lang/Void;>;"
    :catchall_0
    move-exception v1

    throw v1
.end method
