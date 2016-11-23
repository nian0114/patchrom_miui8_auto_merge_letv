.class Lcom/letv/leui/text/LeTextOpt$LeMarquee$2;
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
    .line 789
    iput-object p1, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee$2;->this$0:Lcom/letv/leui/text/LeTextOpt$LeMarquee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 4
    .param p1, "frameTimeNanos"    # J

    .prologue
    .line 792
    iget-object v0, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee$2;->this$0:Lcom/letv/leui/text/LeTextOpt$LeMarquee;

    const/4 v1, 0x2

    # setter for: Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mStatus:B
    invoke-static {v0, v1}, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->access$202(Lcom/letv/leui/text/LeTextOpt$LeMarquee;B)B

    .line 793
    iget-object v0, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee$2;->this$0:Lcom/letv/leui/text/LeTextOpt$LeMarquee;

    iget-object v1, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee$2;->this$0:Lcom/letv/leui/text/LeTextOpt$LeMarquee;

    # getter for: Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mChoreographer:Landroid/view/Choreographer;
    invoke-static {v1}, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->access$400(Lcom/letv/leui/text/LeTextOpt$LeMarquee;)Landroid/view/Choreographer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Choreographer;->getFrameTime()J

    move-result-wide v2

    # setter for: Lcom/letv/leui/text/LeTextOpt$LeMarquee;->mLastAnimationMs:J
    invoke-static {v0, v2, v3}, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->access$302(Lcom/letv/leui/text/LeTextOpt$LeMarquee;J)J

    .line 794
    iget-object v0, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee$2;->this$0:Lcom/letv/leui/text/LeTextOpt$LeMarquee;

    invoke-virtual {v0}, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->tick()V

    .line 795
    return-void
.end method
