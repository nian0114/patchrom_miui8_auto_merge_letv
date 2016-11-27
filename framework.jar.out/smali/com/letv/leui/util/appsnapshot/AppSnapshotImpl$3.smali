.class Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$3;
.super Ljava/lang/Thread;
.source "AppSnapshotImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->scrollShootStart(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;


# direct methods
.method constructor <init>(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$3;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const-string v0, "AppSnapshotImpl"

    const-string v1, " scrollShootStart run() "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$3;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # invokes: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->startScroll()V
    invoke-static {v0}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$2100(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)V

    return-void
.end method
