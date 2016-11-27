.class final Lcom/android/server/activation/ActivePlugInImpl$SimStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ActivePlugInImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/activation/ActivePlugInImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SimStatusReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/activation/ActivePlugInImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/activation/ActivePlugInImpl;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/android/server/activation/ActivePlugInImpl$SimStatusReceiver;->this$0:Lcom/android/server/activation/ActivePlugInImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/activation/ActivePlugInImpl;Lcom/android/server/activation/ActivePlugInImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/activation/ActivePlugInImpl;
    .param p2, "x1"    # Lcom/android/server/activation/ActivePlugInImpl$1;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/activation/ActivePlugInImpl$SimStatusReceiver;-><init>(Lcom/android/server/activation/ActivePlugInImpl;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const-string v0, "ss"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl$SimStatusReceiver;->this$0:Lcom/android/server/activation/ActivePlugInImpl;

    iget-object v1, p0, Lcom/android/server/activation/ActivePlugInImpl$SimStatusReceiver;->this$0:Lcom/android/server/activation/ActivePlugInImpl;

    # invokes: Lcom/android/server/activation/ActivePlugInImpl;->letvGetImei()Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/activation/ActivePlugInImpl;->access$1300(Lcom/android/server/activation/ActivePlugInImpl;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/android/server/activation/ActivePlugInImpl;->letvImei:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/activation/ActivePlugInImpl;->access$1202(Lcom/android/server/activation/ActivePlugInImpl;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl$SimStatusReceiver;->this$0:Lcom/android/server/activation/ActivePlugInImpl;

    # getter for: Lcom/android/server/activation/ActivePlugInImpl;->letvImei:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/activation/ActivePlugInImpl;->access$1200(Lcom/android/server/activation/ActivePlugInImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Activation] sim status changed, get imei ok, ss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ss"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/server/activation/util/LogHelper;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl$SimStatusReceiver;->this$0:Lcom/android/server/activation/ActivePlugInImpl;

    # invokes: Lcom/android/server/activation/ActivePlugInImpl;->unRegisterSimStatus()V
    invoke-static {v0}, Lcom/android/server/activation/ActivePlugInImpl;->access$1400(Lcom/android/server/activation/ActivePlugInImpl;)V

    iget-object v0, p0, Lcom/android/server/activation/ActivePlugInImpl$SimStatusReceiver;->this$0:Lcom/android/server/activation/ActivePlugInImpl;

    # invokes: Lcom/android/server/activation/ActivePlugInImpl;->startActivePhaseReady()V
    invoke-static {v0}, Lcom/android/server/activation/ActivePlugInImpl;->access$1500(Lcom/android/server/activation/ActivePlugInImpl;)V

    :cond_0
    return-void
.end method
