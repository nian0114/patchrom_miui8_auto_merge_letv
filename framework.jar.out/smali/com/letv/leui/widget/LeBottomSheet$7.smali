.class Lcom/letv/leui/widget/LeBottomSheet$7;
.super Ljava/lang/Object;
.source "LeBottomSheet.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeBottomSheet;->setStyle(Landroid/content/Context;Ljava/util/List;[Ljava/lang/String;Landroid/widget/AdapterView$OnItemClickListener;ZIZZLandroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeBottomSheet;

.field final synthetic val$listener:Landroid/widget/AdapterView$OnItemClickListener;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeBottomSheet;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeBottomSheet$7;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    iput-object p2, p0, Lcom/letv/leui/widget/LeBottomSheet$7;->val$listener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet$7;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # setter for: Lcom/letv/leui/widget/LeBottomSheet;->checkPos:I
    invoke-static {v0, p3}, Lcom/letv/leui/widget/LeBottomSheet;->access$102(Lcom/letv/leui/widget/LeBottomSheet;I)I

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet$7;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->adapter:Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;
    invoke-static {v0}, Lcom/letv/leui/widget/LeBottomSheet;->access$200(Lcom/letv/leui/widget/LeBottomSheet;)Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeBottomSheet$ListViewAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/letv/leui/widget/LeBottomSheet$7;->val$listener:Landroid/widget/AdapterView$OnItemClickListener;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method
