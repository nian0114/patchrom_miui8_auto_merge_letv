.class Lcom/letv/leui/text/LeFloatingToolbar$2;
.super Ljava/lang/Object;
.source "LeFloatingToolbar.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/text/LeFloatingToolbar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/text/LeFloatingToolbar;


# direct methods
.method constructor <init>(Lcom/letv/leui/text/LeFloatingToolbar;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/text/LeFloatingToolbar$2;->this$0:Lcom/letv/leui/text/LeFloatingToolbar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$2;->this$0:Lcom/letv/leui/text/LeFloatingToolbar;

    # getter for: Lcom/letv/leui/text/LeFloatingToolbar;->mPopup:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;
    invoke-static {v0}, Lcom/letv/leui/text/LeFloatingToolbar;->access$000(Lcom/letv/leui/text/LeFloatingToolbar;)Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$2;->this$0:Lcom/letv/leui/text/LeFloatingToolbar;

    # getter for: Lcom/letv/leui/text/LeFloatingToolbar;->mPopup:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;
    invoke-static {v0}, Lcom/letv/leui/text/LeFloatingToolbar;->access$000(Lcom/letv/leui/text/LeFloatingToolbar;)Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    move-result-object v0

    # invokes: Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->viewPortHasChanged()Z
    invoke-static {v0}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->access$100(Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$2;->this$0:Lcom/letv/leui/text/LeFloatingToolbar;

    const/4 v1, 0x1

    # setter for: Lcom/letv/leui/text/LeFloatingToolbar;->mWidthChanged:Z
    invoke-static {v0, v1}, Lcom/letv/leui/text/LeFloatingToolbar;->access$202(Lcom/letv/leui/text/LeFloatingToolbar;Z)Z

    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$2;->this$0:Lcom/letv/leui/text/LeFloatingToolbar;

    invoke-virtual {v0}, Lcom/letv/leui/text/LeFloatingToolbar;->updateLayout()Lcom/letv/leui/text/LeFloatingToolbar;

    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    return-void
.end method
