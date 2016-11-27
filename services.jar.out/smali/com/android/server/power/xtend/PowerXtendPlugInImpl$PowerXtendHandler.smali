.class final Lcom/android/server/power/xtend/PowerXtendPlugInImpl$PowerXtendHandler;
.super Landroid/os/Handler;
.source "PowerXtendPlugInImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/xtend/PowerXtendPlugInImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PowerXtendHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/xtend/PowerXtendPlugInImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/power/xtend/PowerXtendPlugInImpl;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$PowerXtendHandler;->this$0:Lcom/android/server/power/xtend/PowerXtendPlugInImpl;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget-object v1, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$PowerXtendHandler;->this$0:Lcom/android/server/power/xtend/PowerXtendPlugInImpl;

    # getter for: Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mPowerXtendReady:Z
    invoke-static {v1}, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->access$000(Lcom/android/server/power/xtend/PowerXtendPlugInImpl;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "PowerXtendPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage, mPowerXtendReady is not ready, what: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$PowerXtendHandler;->this$0:Lcom/android/server/power/xtend/PowerXtendPlugInImpl;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mPendingOprator:Z
    invoke-static {v1, v2}, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->access$102(Lcom/android/server/power/xtend/PowerXtendPlugInImpl;Z)Z

    iget-object v1, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$PowerXtendHandler;->this$0:Lcom/android/server/power/xtend/PowerXtendPlugInImpl;

    # invokes: Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->calculateXtendMode()Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;
    invoke-static {v1}, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->access$200(Lcom/android/server/power/xtend/PowerXtendPlugInImpl;)Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

    move-result-object v0

    .local v0, "newXtendMode":Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;
    iget-object v1, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$PowerXtendHandler;->this$0:Lcom/android/server/power/xtend/PowerXtendPlugInImpl;

    # getter for: Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mXtendMode:Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;
    invoke-static {v1}, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->access$300(Lcom/android/server/power/xtend/PowerXtendPlugInImpl;)Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

    move-result-object v1

    if-eq v1, v0, :cond_0

    const-string v1, "PowerXtendPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage, what: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$PowerXtendHandler;->this$0:Lcom/android/server/power/xtend/PowerXtendPlugInImpl;

    # getter for: Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mXtendMode:Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;
    invoke-static {v3}, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->access$300(Lcom/android/server/power/xtend/PowerXtendPlugInImpl;)Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;->value()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;->value()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$PowerXtendHandler;->this$0:Lcom/android/server/power/xtend/PowerXtendPlugInImpl;

    # setter for: Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mXtendMode:Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;
    invoke-static {v1, v0}, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->access$302(Lcom/android/server/power/xtend/PowerXtendPlugInImpl;Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;)Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

    iget-object v1, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$PowerXtendHandler;->this$0:Lcom/android/server/power/xtend/PowerXtendPlugInImpl;

    iget-object v2, p0, Lcom/android/server/power/xtend/PowerXtendPlugInImpl$PowerXtendHandler;->this$0:Lcom/android/server/power/xtend/PowerXtendPlugInImpl;

    # getter for: Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->mXtendMode:Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;
    invoke-static {v2}, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->access$300(Lcom/android/server/power/xtend/PowerXtendPlugInImpl;)Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;

    move-result-object v2

    # invokes: Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->setPowerXtendMode(Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;)V
    invoke-static {v1, v2}, Lcom/android/server/power/xtend/PowerXtendPlugInImpl;->access$400(Lcom/android/server/power/xtend/PowerXtendPlugInImpl;Lcom/android/server/power/xtend/PowerXtendPlugInImpl$XtendMode;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
