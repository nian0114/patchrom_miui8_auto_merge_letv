.class Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel$1;
.super Ljava/lang/Object;
.source "LeFloatingToolbar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;


# direct methods
.method constructor <init>(Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel$1;->this$0:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel$1;->this$0:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;

    # getter for: Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;
    invoke-static {v0}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;->access$900(Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;)Landroid/view/MenuItem$OnMenuItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel$1;->this$0:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;

    # getter for: Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;->mOnMenuItemClickListener:Landroid/view/MenuItem$OnMenuItemClickListener;
    invoke-static {v0}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;->access$900(Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarMainPanel;)Landroid/view/MenuItem$OnMenuItemClickListener;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    :cond_0
    return-void
.end method
