.class Lcom/letv/leui/widget/LeBottomSheet$13;
.super Ljava/lang/Object;
.source "LeBottomSheet.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeBottomSheet;->setContentView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeBottomSheet;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeBottomSheet;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/LeBottomSheet$13;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet$13;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->maxHeightInPixel:I
    invoke-static {v2}, Lcom/letv/leui/widget/LeBottomSheet;->access$1000(Lcom/letv/leui/widget/LeBottomSheet;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet$13;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->menuContainer:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/letv/leui/widget/LeBottomSheet;->access$1100(Lcom/letv/leui/widget/LeBottomSheet;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    .local v0, "height":I
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet$13;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->menuContainer:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/letv/leui/widget/LeBottomSheet;->access$1100(Lcom/letv/leui/widget/LeBottomSheet;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet$13;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->maxHeightInPixel:I
    invoke-static {v2}, Lcom/letv/leui/widget/LeBottomSheet;->access$1000(Lcom/letv/leui/widget/LeBottomSheet;)I

    move-result v2

    if-le v0, v2, :cond_0

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet$13;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->maxHeightInPixel:I
    invoke-static {v2}, Lcom/letv/leui/widget/LeBottomSheet;->access$1000(Lcom/letv/leui/widget/LeBottomSheet;)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/letv/leui/widget/LeBottomSheet$13;->this$0:Lcom/letv/leui/widget/LeBottomSheet;

    # getter for: Lcom/letv/leui/widget/LeBottomSheet;->menuContainer:Landroid/view/ViewGroup;
    invoke-static {v2}, Lcom/letv/leui/widget/LeBottomSheet;->access$1100(Lcom/letv/leui/widget/LeBottomSheet;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .end local v0    # "height":I
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    return-void
.end method
