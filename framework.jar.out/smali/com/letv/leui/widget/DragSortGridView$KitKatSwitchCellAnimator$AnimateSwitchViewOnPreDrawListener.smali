.class Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;
.super Ljava/lang/Object;
.source "DragSortGridView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimateSwitchViewOnPreDrawListener"
.end annotation


# instance fields
.field private final mOriginalPosition:I

.field private final mPreviousMobileView:Landroid/view/View;

.field private final mTargetPosition:I

.field final synthetic this$1:Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator;Landroid/view/View;II)V
    .locals 0
    .param p2, "previousMobileView"    # Landroid/view/View;
    .param p3, "originalPosition"    # I
    .param p4, "targetPosition"    # I

    .prologue
    .line 797
    iput-object p1, p0, Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 798
    iput-object p2, p0, Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->mPreviousMobileView:Landroid/view/View;

    .line 799
    iput p3, p0, Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->mOriginalPosition:I

    .line 800
    iput p4, p0, Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->mTargetPosition:I

    .line 801
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .prologue
    .line 805
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator;

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/DragSortGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 807
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator;

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    iget-object v1, p0, Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator;

    # getter for: Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator;->mDeltaY:I
    invoke-static {v1}, Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator;->access$800(Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator;)I

    move-result v1

    # += operator for: Lcom/letv/leui/widget/DragSortGridView;->mTotalOffsetY:I
    invoke-static {v0, v1}, Lcom/letv/leui/widget/DragSortGridView;->access$412(Lcom/letv/leui/widget/DragSortGridView;I)I

    .line 808
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator;

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    iget-object v1, p0, Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator;

    # getter for: Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator;->mDeltaX:I
    invoke-static {v1}, Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator;->access$900(Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator;)I

    move-result v1

    # += operator for: Lcom/letv/leui/widget/DragSortGridView;->mTotalOffsetX:I
    invoke-static {v0, v1}, Lcom/letv/leui/widget/DragSortGridView;->access$512(Lcom/letv/leui/widget/DragSortGridView;I)I

    .line 810
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator;

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    iget v1, p0, Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->mOriginalPosition:I

    iget v2, p0, Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->mTargetPosition:I

    # invokes: Lcom/letv/leui/widget/DragSortGridView;->animateReorder(II)V
    invoke-static {v0, v1, v2}, Lcom/letv/leui/widget/DragSortGridView;->access$1000(Lcom/letv/leui/widget/DragSortGridView;II)V

    .line 812
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->mPreviousMobileView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 814
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator;

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    # getter for: Lcom/letv/leui/widget/DragSortGridView;->mMobileView:Landroid/view/View;
    invoke-static {v0}, Lcom/letv/leui/widget/DragSortGridView;->access$600(Lcom/letv/leui/widget/DragSortGridView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 815
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator;

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    # getter for: Lcom/letv/leui/widget/DragSortGridView;->mMobileView:Landroid/view/View;
    invoke-static {v0}, Lcom/letv/leui/widget/DragSortGridView;->access$600(Lcom/letv/leui/widget/DragSortGridView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 817
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
