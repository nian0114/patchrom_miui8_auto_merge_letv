.class Lcom/letv/leui/widget/AlphabetWavesView$GestureHandler;
.super Landroid/os/Handler;
.source "AlphabetWavesView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/AlphabetWavesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/AlphabetWavesView;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/AlphabetWavesView;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/letv/leui/widget/AlphabetWavesView$GestureHandler;->this$0:Lcom/letv/leui/widget/AlphabetWavesView;

    .line 260
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 261
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 265
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 271
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 267
    :pswitch_0
    iget-object v0, p0, Lcom/letv/leui/widget/AlphabetWavesView$GestureHandler;->this$0:Lcom/letv/leui/widget/AlphabetWavesView;

    const/4 v1, 0x1

    # setter for: Lcom/letv/leui/widget/AlphabetWavesView;->mInSelect:Z
    invoke-static {v0, v1}, Lcom/letv/leui/widget/AlphabetWavesView;->access$002(Lcom/letv/leui/widget/AlphabetWavesView;Z)Z

    .line 268
    iget-object v0, p0, Lcom/letv/leui/widget/AlphabetWavesView$GestureHandler;->this$0:Lcom/letv/leui/widget/AlphabetWavesView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/AlphabetWavesView;->popAlphabet()V

    .line 273
    return-void

    .line 265
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
