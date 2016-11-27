.class Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;
.super Ljava/lang/Object;
.source "AppSnapshotImpl.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;


# direct methods
.method constructor <init>(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 74
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 177
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 76
    :pswitch_0
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->isEnd:Z
    invoke-static {v0}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$000(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->pointViewInfoList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$100(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 86
    iget-object v1, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->pointViewInfoList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$100(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->rootView:Landroid/view/View;
    invoke-static {v0}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$200(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)Landroid/view/View;

    move-result-object v3

    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->touchX:F
    invoke-static {v0}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$300(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)F

    move-result v4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    # invokes: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->findPointViews(Ljava/util/ArrayList;Landroid/view/View;FF)V
    invoke-static {v1, v2, v3, v4, v0}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$400(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;Ljava/util/ArrayList;Landroid/view/View;FF)V

    .line 87
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    iget-object v1, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->pointViewInfoList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$100(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)Ljava/util/ArrayList;

    move-result-object v1

    # invokes: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->getPointViewsStartY(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$500(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;Ljava/util/ArrayList;)V

    .line 90
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->rootView:Landroid/view/View;
    invoke-static {v0}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$200(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)Landroid/view/View;

    move-result-object v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->touchX:F
    invoke-static {v5}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$300(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)F

    move-result v5

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Float;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 92
    iget-object v1, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    # setter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->currentFingerY:F
    invoke-static {v1, v0}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$602(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;F)F

    goto :goto_0

    .line 96
    :pswitch_1
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->isEnd:Z
    invoke-static {v0}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$000(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->rootView:Landroid/view/View;
    invoke-static {v0}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$200(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)Landroid/view/View;

    move-result-object v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->touchX:F
    invoke-static {v5}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$300(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)F

    move-result v5

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Float;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 102
    iget-object v1, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    # setter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->currentFingerY:F
    invoke-static {v1, v0}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$602(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;F)F

    goto/16 :goto_0

    .line 106
    :pswitch_2
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->rootView:Landroid/view/View;
    invoke-static {v0}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$200(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)Landroid/view/View;

    move-result-object v10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->touchX:F
    invoke-static {v5}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$300(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)F

    move-result v5

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Float;

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 108
    iget-object v1, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    # setter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->currentFingerY:F
    invoke-static {v1, v0}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$602(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;F)F

    .line 110
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$700(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 111
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$700(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 112
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$700(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 118
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$700(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 126
    :pswitch_3
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    iget-object v1, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->pointViewInfoList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$100(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)Ljava/util/ArrayList;

    move-result-object v1

    # invokes: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->getPointViewsEndY(Ljava/util/ArrayList;)V
    invoke-static {v0, v1}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$800(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;Ljava/util/ArrayList;)V

    .line 127
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    iget-object v1, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->pointViewInfoList:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$100(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)Ljava/util/ArrayList;

    move-result-object v1

    # invokes: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->findMaxDistance(Ljava/util/ArrayList;)I
    invoke-static {v0, v1}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$900(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;Ljava/util/ArrayList;)I

    move-result v9

    .line 128
    .local v9, "moveDistance":I
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->pointViewInfoList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$100(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 131
    const-string v0, "AppSnapshotImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " handler  moveDistance : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  startY - endY : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->startY:F
    invoke-static {v2}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$1000(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)F

    move-result v2

    iget-object v3, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->endY:F
    invoke-static {v3}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$1100(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/letv/leui/util/appsnapshot/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    if-gtz v9, :cond_1

    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->moveTimesCount:I
    invoke-static {v0}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$1200(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 133
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    const/4 v1, 0x1

    # setter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->isEnd:Z
    invoke-static {v0, v1}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$002(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;Z)Z

    .line 134
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->picComposeHandler:Lcom/letv/leui/util/appsnapshot/PicComposeHandler;
    invoke-static {v0}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$1300(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)Lcom/letv/leui/util/appsnapshot/PicComposeHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->forceStop()V

    .line 135
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    const/4 v1, 0x0

    # setter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->screenShooting:Z
    invoke-static {v0, v1}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$1402(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;Z)Z

    goto/16 :goto_0

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->forceStop:Z
    invoke-static {v0}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$1500(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    const/4 v1, 0x1

    # setter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->isEnd:Z
    invoke-static {v0, v1}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$002(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;Z)Z

    .line 142
    const-string v0, "AppSnapshotImpl"

    const-string v1, "force stop handler end ... "

    invoke-static {v0, v1}, Lcom/letv/leui/util/appsnapshot/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    add-int/lit8 v0, v9, -0x32

    int-to-float v0, v0

    iget-object v1, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->startY:F
    invoke-static {v1}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$1000(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)F

    move-result v1

    iget-object v2, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->endY:F
    invoke-static {v2}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$1100(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)F

    move-result v2

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->picComposeHandler:Lcom/letv/leui/util/appsnapshot/PicComposeHandler;
    invoke-static {v0}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$1300(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)Lcom/letv/leui/util/appsnapshot/PicComposeHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->forceStop()V

    .line 174
    :goto_1
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    const/4 v1, 0x0

    # setter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->screenShooting:Z
    invoke-static {v0, v1}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$1402(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;Z)Z

    goto/16 :goto_0

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    iget-object v1, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->startY:F
    invoke-static {v1}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$1000(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v1, v9

    iget-object v2, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->screenHeight:I
    invoke-static {v2}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$1600(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)I

    move-result v2

    # invokes: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->screenShot(II)Landroid/graphics/Bitmap;
    invoke-static {v0, v1, v2}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$1700(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;II)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 150
    .local v8, "b1":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->picComposeHandler:Lcom/letv/leui/util/appsnapshot/PicComposeHandler;
    invoke-static {v0}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$1300(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)Lcom/letv/leui/util/appsnapshot/PicComposeHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->moveTimesCount:I
    invoke-static {v1}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$1200(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v8, v1, v2, v3}, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->addPic2ComposeList(Landroid/graphics/Bitmap;IZZ)V

    goto :goto_1

    .line 156
    .end local v8    # "b1":Landroid/graphics/Bitmap;
    :cond_3
    add-int/lit8 v0, v9, -0x32

    int-to-float v0, v0

    iget-object v1, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->startY:F
    invoke-static {v1}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$1000(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)F

    move-result v1

    iget-object v2, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->endY:F
    invoke-static {v2}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$1100(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)F

    move-result v2

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_4

    int-to-float v0, v9

    iget-object v1, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->startY:F
    invoke-static {v1}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$1000(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)F

    move-result v1

    iget-object v2, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->endY:F
    invoke-static {v2}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$1100(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)F

    move-result v2

    sub-float/2addr v1, v2

    const/high16 v2, 0x42480000    # 50.0f

    sub-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->moveTimesCount:I
    invoke-static {v0}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$1200(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)I

    move-result v0

    const/16 v1, 0x8

    if-lt v0, v1, :cond_6

    .line 157
    :cond_4
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    const/4 v1, 0x1

    # setter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->isEnd:Z
    invoke-static {v0, v1}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$002(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;Z)Z

    .line 158
    const-string v0, "AppSnapshotImpl"

    const-string v1, " handler  end ... "

    invoke-static {v0, v1}, Lcom/letv/leui/util/appsnapshot/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    add-int/lit8 v0, v9, -0x32

    int-to-float v0, v0

    iget-object v1, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->startY:F
    invoke-static {v1}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$1000(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)F

    move-result v1

    iget-object v2, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->endY:F
    invoke-static {v2}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$1100(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)F

    move-result v2

    sub-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    .line 162
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->picComposeHandler:Lcom/letv/leui/util/appsnapshot/PicComposeHandler;
    invoke-static {v0}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$1300(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)Lcom/letv/leui/util/appsnapshot/PicComposeHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->forceStop()V

    goto/16 :goto_1

    .line 165
    :cond_5
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    iget-object v1, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->startY:F
    invoke-static {v1}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$1000(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v1, v9

    iget-object v2, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->screenHeight:I
    invoke-static {v2}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$1600(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)I

    move-result v2

    # invokes: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->screenShot(II)Landroid/graphics/Bitmap;
    invoke-static {v0, v1, v2}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$1700(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;II)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 166
    .restart local v8    # "b1":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->picComposeHandler:Lcom/letv/leui/util/appsnapshot/PicComposeHandler;
    invoke-static {v0}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$1300(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)Lcom/letv/leui/util/appsnapshot/PicComposeHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->moveTimesCount:I
    invoke-static {v1}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$1200(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v8, v1, v2, v3}, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->addPic2ComposeList(Landroid/graphics/Bitmap;IZZ)V

    goto/16 :goto_1

    .line 169
    .end local v8    # "b1":Landroid/graphics/Bitmap;
    :cond_6
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    iget-object v1, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->startY:F
    invoke-static {v1}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$1000(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v1, v9

    iget-object v2, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->startY:F
    invoke-static {v2}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$1000(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)F

    move-result v2

    float-to-int v2, v2

    # invokes: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->screenShot(II)Landroid/graphics/Bitmap;
    invoke-static {v0, v1, v2}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$1700(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;II)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 170
    .restart local v8    # "b1":Landroid/graphics/Bitmap;
    iget-object v0, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->picComposeHandler:Lcom/letv/leui/util/appsnapshot/PicComposeHandler;
    invoke-static {v0}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$1300(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)Lcom/letv/leui/util/appsnapshot/PicComposeHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl$1;->this$0:Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;

    # getter for: Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->moveTimesCount:I
    invoke-static {v1}, Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;->access$1200(Lcom/letv/leui/util/appsnapshot/AppSnapshotImpl;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v8, v1, v2, v3}, Lcom/letv/leui/util/appsnapshot/PicComposeHandler;->addPic2ComposeList(Landroid/graphics/Bitmap;IZZ)V

    goto/16 :goto_1

    .line 74
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
