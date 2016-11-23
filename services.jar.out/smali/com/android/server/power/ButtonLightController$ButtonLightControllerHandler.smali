.class final Lcom/android/server/power/ButtonLightController$ButtonLightControllerHandler;
.super Landroid/os/Handler;
.source "ButtonLightController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ButtonLightController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ButtonLightControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ButtonLightController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ButtonLightController;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/server/power/ButtonLightController$ButtonLightControllerHandler;->this$0:Lcom/android/server/power/ButtonLightController;

    .line 116
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 117
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 121
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 126
    :goto_0
    return-void

    .line 123
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/power/ButtonLightController$ButtonLightControllerHandler;->this$0:Lcom/android/server/power/ButtonLightController;

    # getter for: Lcom/android/server/power/ButtonLightController;->mButtonLight:Lcom/android/server/lights/Light;
    invoke-static {v0}, Lcom/android/server/power/ButtonLightController;->access$100(Lcom/android/server/power/ButtonLightController;)Lcom/android/server/lights/Light;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/lights/Light;->turnOff()V

    goto :goto_0

    .line 121
    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_0
    .end packed-switch
.end method
