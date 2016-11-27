.class Lcom/android/server/pm/theme/ThemeControl$ThemeHandler;
.super Landroid/os/Handler;
.source "ThemeControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/theme/ThemeControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThemeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/theme/ThemeControl;


# direct methods
.method constructor <init>(Lcom/android/server/pm/theme/ThemeControl;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    iput-object p1, p0, Lcom/android/server/pm/theme/ThemeControl$ThemeHandler;->this$0:Lcom/android/server/pm/theme/ThemeControl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    const-string v1, "ThemeControl"

    const-string v2, "ControlTheme handler finished : quitSafely"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    const-string v1, "ThemeControl"

    const-string v2, "ControlTheme start handleZipFile"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .local v0, "themeName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/pm/theme/ThemeControl$ThemeHandler;->this$0:Lcom/android/server/pm/theme/ThemeControl;

    # getter for: Lcom/android/server/pm/theme/ThemeControl;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/pm/theme/ThemeControl;->access$000(Lcom/android/server/pm/theme/ThemeControl;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/pm/theme/ThemeControl$ThemeHandler;->this$0:Lcom/android/server/pm/theme/ThemeControl;

    iget-object v2, p0, Lcom/android/server/pm/theme/ThemeControl$ThemeHandler;->this$0:Lcom/android/server/pm/theme/ThemeControl;

    # getter for: Lcom/android/server/pm/theme/ThemeControl;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/pm/theme/ThemeControl;->access$000(Lcom/android/server/pm/theme/ThemeControl;)Landroid/content/Context;

    move-result-object v2

    # invokes: Lcom/android/server/pm/theme/ThemeControl;->handleZipFile(Landroid/content/Context;Ljava/lang/String;)V
    invoke-static {v1, v2, v0}, Lcom/android/server/pm/theme/ThemeControl;->access$100(Lcom/android/server/pm/theme/ThemeControl;Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    const-string v1, "ThemeControl"

    const-string v2, "ControlTheme Complete"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/pm/theme/ThemeControl$ThemeHandler;->this$0:Lcom/android/server/pm/theme/ThemeControl;

    # getter for: Lcom/android/server/pm/theme/ThemeControl;->upzip:Lcom/android/server/pm/theme/ThemeControl$Upzip;
    invoke-static {v1}, Lcom/android/server/pm/theme/ThemeControl;->access$200(Lcom/android/server/pm/theme/ThemeControl;)Lcom/android/server/pm/theme/ThemeControl$Upzip;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/pm/theme/ThemeControl$ThemeHandler;->this$0:Lcom/android/server/pm/theme/ThemeControl;

    # getter for: Lcom/android/server/pm/theme/ThemeControl;->upzip:Lcom/android/server/pm/theme/ThemeControl$Upzip;
    invoke-static {v1}, Lcom/android/server/pm/theme/ThemeControl;->access$200(Lcom/android/server/pm/theme/ThemeControl;)Lcom/android/server/pm/theme/ThemeControl$Upzip;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/theme/ThemeControl$Upzip;->upzipComplete()V

    goto :goto_0

    :cond_0
    const-string v1, "ThemeControl"

    const-string v2, "ControlTheme mContext is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v1, "ThemeControl"

    const-string v2, "ControlTheme upzip is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
