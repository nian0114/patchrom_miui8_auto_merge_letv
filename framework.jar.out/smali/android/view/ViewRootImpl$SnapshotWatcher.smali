.class Landroid/view/ViewRootImpl$SnapshotWatcher;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SnapshotWatcher"
.end annotation


# instance fields
.field deathRecipient:Landroid/os/IBinder$DeathRecipient;

.field final synthetic this$0:Landroid/view/ViewRootImpl;

.field watcher:Lcom/letv/eui/appsnapshot/IAppSnapshotWatcher;


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;Lcom/letv/eui/appsnapshot/IAppSnapshotWatcher;Landroid/os/IBinder$DeathRecipient;)V
    .locals 0
    .param p2, "w"    # Lcom/letv/eui/appsnapshot/IAppSnapshotWatcher;
    .param p3, "d"    # Landroid/os/IBinder$DeathRecipient;

    .prologue
    iput-object p1, p0, Landroid/view/ViewRootImpl$SnapshotWatcher;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/view/ViewRootImpl$SnapshotWatcher;->watcher:Lcom/letv/eui/appsnapshot/IAppSnapshotWatcher;

    iput-object p3, p0, Landroid/view/ViewRootImpl$SnapshotWatcher;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method
