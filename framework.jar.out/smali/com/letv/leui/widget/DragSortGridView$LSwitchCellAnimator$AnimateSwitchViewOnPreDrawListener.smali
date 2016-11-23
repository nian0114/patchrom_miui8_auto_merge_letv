.class Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;
.super Ljava/lang/Object;
.source "DragSortGridView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimateSwitchViewOnPreDrawListener"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mOriginalPosition:I

.field private final mTargetPosition:I

.field final synthetic this$1:Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 840
    const-class v0, Lcom/letv/leui/widget/DragSortGridView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;II)V
    .locals 0
    .param p2, "originalPosition"    # I
    .param p3, "targetPosition"    # I

    .prologue
    .line 844
    iput-object p1, p0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 845
    iput p2, p0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->mOriginalPosition:I

    .line 846
    iput p3, p0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->mTargetPosition:I

    .line 847
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 4

    .prologue
    .line 851
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/DragSortGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 853
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    iget-object v1, p0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;

    # getter for: Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;->mDeltaY:I
    invoke-static {v1}, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;->access$1100(Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;)I

    move-result v1

    # += operator for: Lcom/letv/leui/widget/DragSortGridView;->mTotalOffsetY:I
    invoke-static {v0, v1}, Lcom/letv/leui/widget/DragSortGridView;->access$412(Lcom/letv/leui/widget/DragSortGridView;I)I

    .line 854
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    iget-object v1, p0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;

    # getter for: Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;->mDeltaX:I
    invoke-static {v1}, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;->access$1200(Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;)I

    move-result v1

    # += operator for: Lcom/letv/leui/widget/DragSortGridView;->mTotalOffsetX:I
    invoke-static {v0, v1}, Lcom/letv/leui/widget/DragSortGridView;->access$512(Lcom/letv/leui/widget/DragSortGridView;I)I

    .line 856
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    iget v1, p0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->mOriginalPosition:I

    iget v2, p0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->mTargetPosition:I

    # invokes: Lcom/letv/leui/widget/DragSortGridView;->animateReorder(II)V
    invoke-static {v0, v1, v2}, Lcom/letv/leui/widget/DragSortGridView;->access$1000(Lcom/letv/leui/widget/DragSortGridView;II)V

    .line 858
    sget-boolean v0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    # getter for: Lcom/letv/leui/widget/DragSortGridView;->mMobileView:Landroid/view/View;
    invoke-static {v0}, Lcom/letv/leui/widget/DragSortGridView;->access$600(Lcom/letv/leui/widget/DragSortGridView;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    # getter for: Lcom/letv/leui/widget/DragSortGridView;->mMobileView:Landroid/view/View;
    invoke-static {v0}, Lcom/letv/leui/widget/DragSortGridView;->access$600(Lcom/letv/leui/widget/DragSortGridView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 860
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    iget-object v1, p0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;

    iget-object v1, v1, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    iget-object v2, p0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;

    iget-object v2, v2, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    # getter for: Lcom/letv/leui/widget/DragSortGridView;->mMobileItemId:J
    invoke-static {v2}, Lcom/letv/leui/widget/DragSortGridView;->access$700(Lcom/letv/leui/widget/DragSortGridView;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/letv/leui/widget/DragSortGridView;->getViewForId(J)Landroid/view/View;

    move-result-object v1

    # setter for: Lcom/letv/leui/widget/DragSortGridView;->mMobileView:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/letv/leui/widget/DragSortGridView;->access$602(Lcom/letv/leui/widget/DragSortGridView;Landroid/view/View;)Landroid/view/View;

    .line 861
    sget-boolean v0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    # getter for: Lcom/letv/leui/widget/DragSortGridView;->mMobileView:Landroid/view/View;
    invoke-static {v0}, Lcom/letv/leui/widget/DragSortGridView;->access$600(Lcom/letv/leui/widget/DragSortGridView;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 862
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;->this$1:Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;

    iget-object v0, v0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    # getter for: Lcom/letv/leui/widget/DragSortGridView;->mMobileView:Landroid/view/View;
    invoke-static {v0}, Lcom/letv/leui/widget/DragSortGridView;->access$600(Lcom/letv/leui/widget/DragSortGridView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 863
    const/4 v0, 0x1

    return v0
.end method
