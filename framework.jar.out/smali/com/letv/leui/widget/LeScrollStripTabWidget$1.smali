.class Lcom/letv/leui/widget/LeScrollStripTabWidget$1;
.super Ljava/lang/Object;
.source "LeScrollStripTabWidget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/LeScrollStripTabWidget;->setCurrentTabButNotInvalidateScrollStrip(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeScrollStripTabWidget;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/LeScrollStripTabWidget;I)V
    .locals 0

    .prologue
    .line 704
    iput-object p1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget$1;->this$0:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    iput p2, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget$1;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 707
    iget-object v0, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget$1;->this$0:Lcom/letv/leui/widget/LeScrollStripTabWidget;

    iget v1, p0, Lcom/letv/leui/widget/LeScrollStripTabWidget$1;->val$index:I

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/LeScrollStripTabWidget;->setCurrentTabButNotInvalidateScrollStrip(I)V

    .line 708
    return-void
.end method
