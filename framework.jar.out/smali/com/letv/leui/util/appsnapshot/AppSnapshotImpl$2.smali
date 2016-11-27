.class Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$2;
.super Ljava/lang/Object;
.source "AppSnapshotImpl.java"

# interfaces
.implements Lcom/letv/leui/util/appsnapshot/PicComposeHandler$OnFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->prepare()V
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
    .line 209
    iput-object p1, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$2;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bt"    # Landroid/graphics/Bitmap;

    .prologue
    .line 212
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$2;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->scrollShootListener:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$ScrollShootListener;
    invoke-static {v0}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$1800(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$ScrollShootListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$2;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->scrollShootListener:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$ScrollShootListener;
    invoke-static {v0}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$1800(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$ScrollShootListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$ScrollShootListener;->onFinished(Landroid/graphics/Bitmap;)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$2;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    const/4 v1, 0x1

    # setter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->isFinished:Z
    invoke-static {v0, v1}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$1902(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;Z)Z

    .line 216
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$2;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    const/4 v1, 0x0

    # setter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->prepared:Z
    invoke-static {v0, v1}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$2002(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;Z)Z

    .line 217
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$2;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    invoke-virtual {v0}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->release()V

    .line 218
    return-void
.end method
