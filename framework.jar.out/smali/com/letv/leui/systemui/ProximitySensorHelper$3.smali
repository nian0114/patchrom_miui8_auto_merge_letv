.class Lcom/letv/leui/systemui/ProximitySensorHelper$3;
.super Ljava/lang/Object;
.source "ProximitySensorHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/systemui/ProximitySensorHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/systemui/ProximitySensorHelper;


# direct methods
.method constructor <init>(Lcom/letv/leui/systemui/ProximitySensorHelper;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/systemui/ProximitySensorHelper$3;->this$0:Lcom/letv/leui/systemui/ProximitySensorHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    # getter for: Lcom/letv/leui/systemui/ProximitySensorHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/letv/leui/systemui/ProximitySensorHelper;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "taskFinishedRunnable.run(),mState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/systemui/ProximitySensorHelper$3;->this$0:Lcom/letv/leui/systemui/ProximitySensorHelper;

    # getter for: Lcom/letv/leui/systemui/ProximitySensorHelper;->mState:Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;
    invoke-static {v2}, Lcom/letv/leui/systemui/ProximitySensorHelper;->access$300(Lcom/letv/leui/systemui/ProximitySensorHelper;)Lcom/letv/leui/systemui/ProximitySensorHelper$STATE;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/letv/leui/systemui/ProximitySensorHelper$3;->this$0:Lcom/letv/leui/systemui/ProximitySensorHelper;

    invoke-virtual {v0}, Lcom/letv/leui/systemui/ProximitySensorHelper;->stop()V

    return-void
.end method
