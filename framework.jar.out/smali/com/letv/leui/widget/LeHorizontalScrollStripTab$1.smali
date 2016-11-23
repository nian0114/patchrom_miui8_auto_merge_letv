.class Lcom/letv/leui/widget/LeHorizontalScrollStripTab$1;
.super Ljava/lang/Object;
.source "LeHorizontalScrollStripTab.java"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->initShadow(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeHorizontalScrollStripTab;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeHorizontalScrollStripTab;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab$1;->this$0:Lcom/letv/leui/widget/LeHorizontalScrollStripTab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "scrollX"    # I
    .param p3, "scrollY"    # I
    .param p4, "oldScrollX"    # I
    .param p5, "oldScrollY"    # I

    .prologue
    .line 153
    iget-object v0, p0, Lcom/letv/leui/widget/LeHorizontalScrollStripTab$1;->this$0:Lcom/letv/leui/widget/LeHorizontalScrollStripTab;

    # invokes: Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->controlShadowVisiable(I)V
    invoke-static {v0, p2}, Lcom/letv/leui/widget/LeHorizontalScrollStripTab;->access$000(Lcom/letv/leui/widget/LeHorizontalScrollStripTab;I)V

    .line 154
    return-void
.end method
