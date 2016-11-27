.class Lcom/letv/leui/util/appsnapshot/PicComposeHandler$1;
.super Ljava/lang/Object;
.source "PicComposeHandler.java"

# interfaces
.implements Lcom/letv/leui/util/appsnapshot/PicComposeTask$TaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->executeTask(Lcom/letv/leui/util/appsnapshot/PicComposeTask;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/util/appsnapshot/PicComposeHandler;


# direct methods
.method constructor <init>(Lcom/letv/leui/util/appsnapshot/PicComposeHandler;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler$1;->this$0:Lcom/letv/leui/util/appsnapshot/PicComposeHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled()V
    .locals 0

    .prologue
    return-void
.end method

.method public onFinished(Lcom/letv/leui/util/appsnapshot/CropPicInfo;)V
    .locals 1
    .param p1, "picInfo"    # Lcom/letv/leui/util/appsnapshot/CropPicInfo;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/PicComposeHandler$1;->this$0:Lcom/letv/leui/util/appsnapshot/PicComposeHandler;

    # invokes: Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->composeFinish(Lcom/letv/leui/util/appsnapshot/CropPicInfo;)V
    invoke-static {v0, p1}, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->access$000(Lcom/letv/leui/util/appsnapshot/PicComposeHandler;Lcom/letv/leui/util/appsnapshot/CropPicInfo;)V

    return-void
.end method
