.class Lcom/letv/leui/systemui/AntiInadvertentlyHelper$3;
.super Landroid/os/Handler;
.source "AntiInadvertentlyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/systemui/AntiInadvertentlyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;


# direct methods
.method constructor <init>(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$3;->this$0:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 131
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 146
    :goto_0
    return-void

    .line 133
    :pswitch_0
    # getter for: Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MSG_SCREEN_TURN_ON"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$3;->this$0:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    # getter for: Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mProximitySensorHelper:Lcom/letv/leui/systemui/ProximitySensorHelper;
    invoke-static {v0}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->access$600(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)Lcom/letv/leui/systemui/ProximitySensorHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/systemui/ProximitySensorHelper;->start()V

    .line 136
    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$3;->this$0:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    # invokes: Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->updateWindowFocus(Z)V
    invoke-static {v0, v2}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->access$700(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;Z)V

    goto :goto_0

    .line 139
    :pswitch_1
    # getter for: Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MSG_SCREEN_TURN_OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$3;->this$0:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    # invokes: Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->updateWindowVisiblity(Z)V
    invoke-static {v0, v2}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->access$800(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;Z)V

    .line 143
    iget-object v0, p0, Lcom/letv/leui/systemui/AntiInadvertentlyHelper$3;->this$0:Lcom/letv/leui/systemui/AntiInadvertentlyHelper;

    # getter for: Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->mProximitySensorHelper:Lcom/letv/leui/systemui/ProximitySensorHelper;
    invoke-static {v0}, Lcom/letv/leui/systemui/AntiInadvertentlyHelper;->access$600(Lcom/letv/leui/systemui/AntiInadvertentlyHelper;)Lcom/letv/leui/systemui/ProximitySensorHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/systemui/ProximitySensorHelper;->stop()V

    goto :goto_0

    .line 131
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
