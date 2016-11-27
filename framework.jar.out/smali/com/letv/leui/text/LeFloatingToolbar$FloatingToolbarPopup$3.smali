.class Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LeFloatingToolbar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->createPopupWindow(Landroid/view/View;)Landroid/widget/PopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;


# direct methods
.method constructor <init>(Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup$3;->this$1:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    iget-object v0, p0, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup$3;->this$1:Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;

    # getter for: Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->rightArrow:Landroid/view/View;
    invoke-static {v0}, Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;->access$600(Lcom/letv/leui/text/LeFloatingToolbar$FloatingToolbarPopup;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
