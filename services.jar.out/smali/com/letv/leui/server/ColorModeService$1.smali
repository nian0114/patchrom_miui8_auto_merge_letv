.class Lcom/letv/leui/server/ColorModeService$1;
.super Landroid/content/BroadcastReceiver;
.source "ColorModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/server/ColorModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/server/ColorModeService;


# direct methods
.method constructor <init>(Lcom/letv/leui/server/ColorModeService;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/letv/leui/server/ColorModeService$1;->this$0:Lcom/letv/leui/server/ColorModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/letv/leui/server/ColorModeService$1;->this$0:Lcom/letv/leui/server/ColorModeService;

    # getter for: Lcom/letv/leui/server/ColorModeService;->mColorModeUtil:Landroid/colormode/IColorMode;
    invoke-static {v0}, Lcom/letv/leui/server/ColorModeService;->access$000(Lcom/letv/leui/server/ColorModeService;)Landroid/colormode/IColorMode;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/server/ColorModeService$1;->this$0:Lcom/letv/leui/server/ColorModeService;

    # getter for: Lcom/letv/leui/server/ColorModeService;->mBlueLightEnable:I
    invoke-static {v0}, Lcom/letv/leui/server/ColorModeService;->access$100(Lcom/letv/leui/server/ColorModeService;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/server/ColorModeService$1;->this$0:Lcom/letv/leui/server/ColorModeService;

    # getter for: Lcom/letv/leui/server/ColorModeService;->mSetBlueLight:Z
    invoke-static {v0}, Lcom/letv/leui/server/ColorModeService;->access$200(Lcom/letv/leui/server/ColorModeService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/letv/leui/server/ColorModeService$1;->this$0:Lcom/letv/leui/server/ColorModeService;

    # getter for: Lcom/letv/leui/server/ColorModeService;->mColorModeUtil:Landroid/colormode/IColorMode;
    invoke-static {v0}, Lcom/letv/leui/server/ColorModeService;->access$000(Lcom/letv/leui/server/ColorModeService;)Landroid/colormode/IColorMode;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/server/ColorModeService$1;->this$0:Lcom/letv/leui/server/ColorModeService;

    # getter for: Lcom/letv/leui/server/ColorModeService;->mColorWarm:I
    invoke-static {v1}, Lcom/letv/leui/server/ColorModeService;->access$300(Lcom/letv/leui/server/ColorModeService;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/colormode/IColorMode;->setBlueLightMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 72
    :catch_0
    move-exception v0

    goto :goto_0
.end method
