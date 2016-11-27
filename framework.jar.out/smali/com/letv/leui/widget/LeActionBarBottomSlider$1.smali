.class Lcom/letv/leui/widget/LeActionBarBottomSlider$1;
.super Ljava/lang/Object;
.source "LeActionBarBottomSlider.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeActionBarBottomSlider;-><init>(Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeActionBarBottomSlider;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeActionBarBottomSlider;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$1;->this$0:Lcom/letv/leui/widget/LeActionBarBottomSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    iget-object v3, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$1;->this$0:Lcom/letv/leui/widget/LeActionBarBottomSlider;

    # getter for: Lcom/letv/leui/widget/LeActionBarBottomSlider;->mMenuView:Lcom/letv/leui/widget/LeTransLinearLayout;
    invoke-static {v3}, Lcom/letv/leui/widget/LeActionBarBottomSlider;->access$000(Lcom/letv/leui/widget/LeActionBarBottomSlider;)Lcom/letv/leui/widget/LeTransLinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/letv/leui/widget/LeTransLinearLayout;->getY()F

    move-result v3

    float-to-int v1, v3

    .local v1, "top":I
    iget-object v3, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$1;->this$0:Lcom/letv/leui/widget/LeActionBarBottomSlider;

    # getter for: Lcom/letv/leui/widget/LeActionBarBottomSlider;->mMenuView:Lcom/letv/leui/widget/LeTransLinearLayout;
    invoke-static {v3}, Lcom/letv/leui/widget/LeActionBarBottomSlider;->access$000(Lcom/letv/leui/widget/LeActionBarBottomSlider;)Lcom/letv/leui/widget/LeTransLinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/letv/leui/widget/LeTransLinearLayout;->getBottom()I

    move-result v0

    .local v0, "bottom":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .local v2, "y":I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-ne v3, v4, :cond_1

    if-lt v2, v1, :cond_0

    if-le v2, v0, :cond_1

    :cond_0
    iget-object v3, p0, Lcom/letv/leui/widget/LeActionBarBottomSlider$1;->this$0:Lcom/letv/leui/widget/LeActionBarBottomSlider;

    invoke-virtual {v3}, Lcom/letv/leui/widget/LeActionBarBottomSlider;->disappear()V

    :cond_1
    return v4
.end method
