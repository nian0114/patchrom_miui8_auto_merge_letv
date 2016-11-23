.class Lcom/letv/leui/widget/LeHorizontalScrollStripTab$2;
.super Ljava/lang/Object;
.source "LeHorizontalScrollStripTab.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->setCurrentTab(I)Lcom/letv/leui/widget/LeHorizontalScrollStripTab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeHorizontalScrollStripTab;

.field final synthetic val$currentTab:I


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeHorizontalScrollStripTab;I)V
    .locals 0

    .prologue
    .line 511
    iput-object p1, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab$2;->this$0:Lcom/letv/leui/widget/LeHorizontalScrollStripTab;

    iput p2, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab$2;->val$currentTab:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 514
    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab$2;->this$0:Lcom/letv/leui/widget/LeHorizontalScrollStripTab;

    iget v1, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab$2;->val$currentTab:I

    const/4 v2, 0x0

    # invokes: Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->scrollToTab(IF)V
    invoke-static {v0, v1, v2}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->access$100(Lcom/letv/leui/widget/LeHorizontalScrollStripTab;IF)V

    .line 515
    return-void
.end method
