.class Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;
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
    name = "LSwitchCellAnimator"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;
    }
.end annotation


# instance fields
.field private mDeltaX:I

.field private mDeltaY:I

.field final synthetic this$0:Lcom/letv/leui/widget/DragSortGridView;


# direct methods
.method public constructor <init>(Lcom/letv/leui/widget/DragSortGridView;II)V
    .locals 0
    .param p2, "deltaX"    # I
    .param p3, "deltaY"    # I

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;->mDeltaX:I

    iput p3, p0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;->mDeltaY:I

    return-void
.end method

.method static synthetic access$1100(Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;->mDeltaY:I

    return v0
.end method

.method static synthetic access$1200(Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;)I
    .locals 1
    .param p0, "x0"    # Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;

    .prologue
    iget v0, p0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;->mDeltaX:I

    return v0
.end method


# virtual methods
.method public animateSwitchCell(II)V
    .locals 2
    .param p1, "originalPosition"    # I
    .param p2, "targetPosition"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    invoke-virtual {v0}, Lcom/letv/leui/widget/DragSortGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;

    invoke-direct {v1, p0, p1, p2}, Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator$AnimateSwitchViewOnPreDrawListener;-><init>(Lcom/letv/leui/widget/DragSortGridView$LSwitchCellAnimator;II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method
