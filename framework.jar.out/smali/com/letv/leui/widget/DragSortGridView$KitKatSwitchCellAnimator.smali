.class Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator;
.super Ljava/lang/Object;
.source "DragSortGridView.java"

# interfaces
.implements Lcom/letv/leui/widget/DragSortGridView$SwitchCellAnimator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/DragSortGridView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KitKatSwitchCellAnimator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mDeltaX:I

.field private mDeltaY:I

.field final synthetic this$0:Lcom/letv/leui/widget/DragSortGridView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 774
    const-class v0, Lcom/letv/leui/widget/DragSortGridView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/letv/leui/widget/DragSortGridView;II)V
    .locals 0
    .param p2, "deltaX"    # I
    .param p3, "deltaY"    # I

    .prologue
    .line 779
    iput-object p1, p0, Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 780
    iput p2, p0, Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator;->mDeltaX:I

    .line 781
    iput p3, p0, Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator;->mDeltaY:I

    .line 782
    return-void
.end method

.method static synthetic access$800(Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator;

    .prologue
    .line 774
    iget v0, p0, Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator;->mDeltaY:I

    return v0
.end method

.method static synthetic access$900(Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator;

    .prologue
    .line 774
    iget v0, p0, Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator;->mDeltaX:I

    return v0
.end method


# virtual methods
.method public animateSwitchCell(II)V
    .locals 4
    .param p1, "originalPosition"    # I
    .param p2, "targetPosition"    # I

    .prologue
    .line 786
    sget-boolean v0, Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    # getter for: Lcom/letv/leui/widget/DragSortGridView;->mMobileView:Landroid/view/View;
    invoke-static {v0}, Lcom/letv/leui/widget/DragSortGridView;->access$600(Lcom/letv/leui/widget/DragSortGridView;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/DragSortGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;

    iget-object v2, p0, Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    # getter for: Lcom/letv/leui/widget/DragSortGridView;->mMobileView:Landroid/view/View;
    invoke-static {v2}, Lcom/letv/leui/widget/DragSortGridView;->access$600(Lcom/letv/leui/widget/DragSortGridView;)Landroid/view/View;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1, p2}, Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;-><init>(Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator;Landroid/view/View;II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 788
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    iget-object v1, p0, Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    iget-object v2, p0, Lcom/letv/leui/widget/DragSortGridView$KitKatSwitchCellAnimator;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    # getter for: Lcom/letv/leui/widget/DragSortGridView;->mMobileItemId:J
    invoke-static {v2}, Lcom/letv/leui/widget/DragSortGridView;->access$700(Lcom/letv/leui/widget/DragSortGridView;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/letv/leui/widget/DragSortGridView;->getViewForId(J)Landroid/view/View;

    move-result-object v1

    # setter for: Lcom/letv/leui/widget/DragSortGridView;->mMobileView:Landroid/view/View;
    invoke-static {v0, v1}, Lcom/letv/leui/widget/DragSortGridView;->access$602(Lcom/letv/leui/widget/DragSortGridView;Landroid/view/View;)Landroid/view/View;

    .line 789
    return-void
.end method
