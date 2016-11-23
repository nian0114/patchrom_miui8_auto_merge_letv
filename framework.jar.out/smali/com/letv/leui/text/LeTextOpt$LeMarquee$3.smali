.class Lcom/letv/leui/text/LeTextOpt$LeMarquee$3;
.super Ljava/lang/Object;
.source "LeTextOpt.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/text/LeTextOpt$LeMarquee;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/text/LeTextOpt$LeMarquee;


# direct methods
.method constructor <init>(Lcom/letv/leui/text/LeTextOpt$LeMarquee;)V
    .locals 0

    .prologue
    .line 798
    iput-object p1, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee$3;->this$0:Lcom/letv/leui/text/LeTextOpt$LeMarquee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 2
    .param p1, "frameTimeNanos"    # J

    .prologue
    .line 801
    iget-object v0, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee$3;->this$0:Lcom/letv/leui/text/LeTextOpt$LeMarquee;

    # getter for: Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mStatus:B
    invoke-static {v0}, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->access$200(Lcom/letv/leui/text/LeTextOpt$LeMarquee;)B

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 802
    iget-object v0, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee$3;->this$0:Lcom/letv/leui/text/LeTextOpt$LeMarquee;

    # getter for: Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mRepeatLimit:I
    invoke-static {v0}, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->access$500(Lcom/letv/leui/text/LeTextOpt$LeMarquee;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 803
    iget-object v0, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee$3;->this$0:Lcom/letv/leui/text/LeTextOpt$LeMarquee;

    # operator-- for: Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mRepeatLimit:I
    invoke-static {v0}, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->access$510(Lcom/letv/leui/text/LeTextOpt$LeMarquee;)I

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee$3;->this$0:Lcom/letv/leui/text/LeTextOpt$LeMarquee;

    iget-object v1, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee$3;->this$0:Lcom/letv/leui/text/LeTextOpt$LeMarquee;

    # getter for: Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mRepeatLimit:I
    invoke-static {v1}, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->access$500(Lcom/letv/leui/text/LeTextOpt$LeMarquee;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->start(I)V

    .line 807
    :cond_1
    return-void
.end method
