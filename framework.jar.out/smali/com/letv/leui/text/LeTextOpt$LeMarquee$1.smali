.class Lcom/letv/leui/text/LeTextOpt$LeMarquee$1;
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
    .line 782
    iput-object p1, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee$1;->this$0:Lcom/letv/leui/text/LeTextOpt$LeMarquee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 1
    .param p1, "frameTimeNanos"    # J

    .prologue
    .line 785
    iget-object v0, p0, Lcom/letv/leui/text/LeTextOpt$LeMarquee$1;->this$0:Lcom/letv/leui/text/LeTextOpt$LeMarquee;

    invoke-virtual {v0}, Lcom/letv/leui/text/LeTextOpt$LeMarquee;->tick()V

    .line 786
    return-void
.end method
