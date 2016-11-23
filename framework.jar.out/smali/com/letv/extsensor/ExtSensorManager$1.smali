.class Lcom/letv/extsensor/ExtSensorManager$1;
.super Landroid/os/Handler;
.source "ExtSensorManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/extsensor/ExtSensorManager;->initExtSensorThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/extsensor/ExtSensorManager;


# direct methods
.method constructor <init>(Lcom/letv/extsensor/ExtSensorManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 188
    iput-object p1, p0, Lcom/letv/extsensor/ExtSensorManager$1;->this$0:Lcom/letv/extsensor/ExtSensorManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 192
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 200
    :goto_0
    return-void

    .line 194
    :pswitch_0
    iget-object v0, p0, Lcom/letv/extsensor/ExtSensorManager$1;->this$0:Lcom/letv/extsensor/ExtSensorManager;

    # invokes: Lcom/letv/extsensor/ExtSensorManager;->handleBoardTemperatureSensor()Z
    invoke-static {v0}, Lcom/letv/extsensor/ExtSensorManager;->access$000(Lcom/letv/extsensor/ExtSensorManager;)Z

    goto :goto_0

    .line 192
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
