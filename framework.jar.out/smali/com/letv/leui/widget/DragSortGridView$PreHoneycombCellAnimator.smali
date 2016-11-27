.class Lcom/letv/leui/widget/DragSortGridView$PreHoneycombCellAnimator;
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
    name = "PreHoneycombCellAnimator"
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
    iput-object p1, p0, Lcom/letv/leui/widget/DragSortGridView$PreHoneycombCellAnimator;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/letv/leui/widget/DragSortGridView$PreHoneycombCellAnimator;->mDeltaX:I

    iput p3, p0, Lcom/letv/leui/widget/DragSortGridView$PreHoneycombCellAnimator;->mDeltaY:I

    return-void
.end method


# virtual methods
.method public animateSwitchCell(II)V
    .locals 2
    .param p1, "originalPosition"    # I
    .param p2, "targetPosition"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$PreHoneycombCellAnimator;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    iget v1, p0, Lcom/letv/leui/widget/DragSortGridView$PreHoneycombCellAnimator;->mDeltaY:I

    # += operator for: Lcom/letv/leui/widget/DragSortGridView;->mTotalOffsetY:I
    invoke-static {v0, v1}, Lcom/letv/leui/widget/DragSortGridView;->access$412(Lcom/letv/leui/widget/DragSortGridView;I)I

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortGridView$PreHoneycombCellAnimator;->this$0:Lcom/letv/leui/widget/DragSortGridView;

    iget v1, p0, Lcom/letv/leui/widget/DragSortGridView$PreHoneycombCellAnimator;->mDeltaX:I

    # += operator for: Lcom/letv/leui/widget/DragSortGridView;->mTotalOffsetX:I
    invoke-static {v0, v1}, Lcom/letv/leui/widget/DragSortGridView;->access$512(Lcom/letv/leui/widget/DragSortGridView;I)I

    return-void
.end method
