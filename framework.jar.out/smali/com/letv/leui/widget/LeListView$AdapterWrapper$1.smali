.class Lcom/letv/leui/widget/LeListView$AdapterWrapper$1;
.super Landroid/database/DataSetObserver;
.source "LeListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeListView$AdapterWrapper;-><init>(Lcom/letv/leui/widget/LeListView;Landroid/widget/ListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/letv/leui/widget/LeListView$AdapterWrapper;

.field final synthetic val$this$0:Lcom/letv/leui/widget/LeListView;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeListView$AdapterWrapper;Lcom/letv/leui/widget/LeListView;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeListView$AdapterWrapper$1;->this$1:Lcom/letv/leui/widget/LeListView$AdapterWrapper;

    iput-object p2, p0, Lcom/letv/leui/widget/LeListView$AdapterWrapper$1;->val$this$0:Lcom/letv/leui/widget/LeListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView$AdapterWrapper$1;->this$1:Lcom/letv/leui/widget/LeListView$AdapterWrapper;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeListView$AdapterWrapper;->notifyDataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/LeListView$AdapterWrapper$1;->this$1:Lcom/letv/leui/widget/LeListView$AdapterWrapper;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeListView$AdapterWrapper;->notifyDataSetInvalidated()V

    return-void
.end method
