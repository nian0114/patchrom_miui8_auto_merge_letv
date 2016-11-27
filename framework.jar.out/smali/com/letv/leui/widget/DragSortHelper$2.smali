.class Lcom/letv/leui/widget/DragSortHelper$2;
.super Landroid/database/DataSetObserver;
.source "DragSortHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/DragSortHelper;->setAdapter(Landroid/widget/ListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/DragSortHelper;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/DragSortHelper;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/DragSortHelper$2;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method private cancel()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper$2;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    # getter for: Lcom/letv/leui/widget/DragSortHelper;->mDragState:I
    invoke-static {v0}, Lcom/letv/leui/widget/DragSortHelper;->access$400(Lcom/letv/leui/widget/DragSortHelper;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/DragSortHelper$2;->this$0:Lcom/letv/leui/widget/DragSortHelper;

    invoke-virtual {v0}, Lcom/letv/leui/widget/DragSortHelper;->cancelDrag()V

    :cond_0
    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortHelper$2;->cancel()V

    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/letv/leui/widget/DragSortHelper$2;->cancel()V

    return-void
.end method
