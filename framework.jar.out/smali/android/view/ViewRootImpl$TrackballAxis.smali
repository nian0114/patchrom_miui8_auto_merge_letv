.class final Landroid/view/ViewRootImpl$TrackballAxis;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TrackballAxis"
.end annotation


# static fields
.field static final ACCEL_MOVE_SCALING_FACTOR:F = 0.025f

.field static final FAST_MOVE_TIME:J = 0x96L

.field static final FIRST_MOVEMENT_THRESHOLD:F = 0.5f

.field static final MAX_ACCELERATION:F = 20.0f

.field static final SECOND_CUMULATIVE_MOVEMENT_THRESHOLD:F = 2.0f

.field static final SUBSEQUENT_INCREMENTAL_MOVEMENT_THRESHOLD:F = 1.0f


# instance fields
.field acceleration:F

.field dir:I

.field lastMoveTime:J

.field private final mViewAncestor:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/ViewRootImpl;",
            ">;"
        }
    .end annotation
.end field

.field nonAccelMovement:I

.field position:F

.field step:I


# direct methods
.method constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 2
    .param p1, "viewAncestor"    # Landroid/view/ViewRootImpl;

    .prologue
    .line 4880
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4908
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 4909
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 4881
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->mViewAncestor:Ljava/lang/ref/WeakReference;

    .line 4882
    return-void
.end method


# virtual methods
.method collect(FJLjava/lang/String;)F
    .locals 10
    .param p1, "off"    # F
    .param p2, "time"    # J
    .param p4, "axis"    # Ljava/lang/String;

    .prologue
    .line 4934
    const/4 v7, 0x0

    cmpl-float v7, p1, v7

    if-lez v7, :cond_5

    .line 4935
    const/high16 v7, 0x43160000    # 150.0f

    mul-float/2addr v7, p1

    float-to-long v4, v7

    .line 4936
    .local v4, "normTime":J
    iget v7, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    if-gez v7, :cond_1

    .line 4937
    iget-object v7, p0, Landroid/view/ViewRootImpl$TrackballAxis;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewRootImpl;

    .line 4938
    .local v6, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v6, :cond_0

    # getter for: Landroid/view/ViewRootImpl;->DEBUG_TRACKBALL:Z
    invoke-static {v6}, Landroid/view/ViewRootImpl;->access$1700(Landroid/view/ViewRootImpl;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4939
    const-string v7, "ViewRootImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " reversed to positive!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4940
    :cond_0
    const/4 v7, 0x0

    iput v7, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 4941
    const/4 v7, 0x0

    iput v7, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 4942
    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 4943
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 4945
    .end local v6    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_1
    const/4 v7, 0x1

    iput v7, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    .line 4965
    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-lez v7, :cond_4

    .line 4966
    iget-wide v8, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    sub-long v2, p2, v8

    .line 4967
    .local v2, "delta":J
    iput-wide p2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 4968
    iget v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 4969
    .local v0, "acc":F
    cmp-long v7, v2, v4

    if-gez v7, :cond_a

    .line 4971
    sub-long v8, v4, v2

    long-to-float v7, v8

    const v8, 0x3ccccccd    # 0.025f

    mul-float v1, v7, v8

    .line 4972
    .local v1, "scale":F
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v1, v7

    if-lez v7, :cond_2

    mul-float/2addr v0, v1

    .line 4973
    :cond_2
    iget-object v7, p0, Landroid/view/ViewRootImpl$TrackballAxis;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewRootImpl;

    .line 4974
    .restart local v6    # "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v6, :cond_3

    # getter for: Landroid/view/ViewRootImpl;->DEBUG_TRACKBALL:Z
    invoke-static {v6}, Landroid/view/ViewRootImpl;->access$1700(Landroid/view/ViewRootImpl;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 4975
    const-string v7, "ViewRootImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " accelerate: off="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " normTime="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " delta="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " scale="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " acc="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4978
    :cond_3
    const/high16 v7, 0x41a00000    # 20.0f

    cmpg-float v7, v0, v7

    if-gez v7, :cond_9

    .end local v0    # "acc":F
    :goto_1
    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 4991
    .end local v1    # "scale":F
    .end local v2    # "delta":J
    .end local v6    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_4
    :goto_2
    iget v7, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    add-float/2addr v7, p1

    iput v7, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 4992
    iget v7, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    return v7

    .line 4946
    .end local v4    # "normTime":J
    :cond_5
    const/4 v7, 0x0

    cmpg-float v7, p1, v7

    if-gez v7, :cond_8

    .line 4947
    neg-float v7, p1

    const/high16 v8, 0x43160000    # 150.0f

    mul-float/2addr v7, v8

    float-to-long v4, v7

    .line 4948
    .restart local v4    # "normTime":J
    iget v7, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    if-lez v7, :cond_7

    .line 4949
    iget-object v7, p0, Landroid/view/ViewRootImpl$TrackballAxis;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewRootImpl;

    .line 4950
    .restart local v6    # "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v6, :cond_6

    # getter for: Landroid/view/ViewRootImpl;->DEBUG_TRACKBALL:Z
    invoke-static {v6}, Landroid/view/ViewRootImpl;->access$1700(Landroid/view/ViewRootImpl;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 4951
    const-string v7, "ViewRootImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " reversed to negative!"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4952
    :cond_6
    const/4 v7, 0x0

    iput v7, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 4953
    const/4 v7, 0x0

    iput v7, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 4954
    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 4955
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 4957
    .end local v6    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_7
    const/4 v7, -0x1

    iput v7, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    goto/16 :goto_0

    .line 4959
    .end local v4    # "normTime":J
    :cond_8
    const-wide/16 v4, 0x0

    .restart local v4    # "normTime":J
    goto/16 :goto_0

    .line 4978
    .restart local v0    # "acc":F
    .restart local v1    # "scale":F
    .restart local v2    # "delta":J
    .restart local v6    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_9
    const/high16 v0, 0x41a00000    # 20.0f

    goto :goto_1

    .line 4981
    .end local v1    # "scale":F
    .end local v6    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_a
    sub-long v8, v2, v4

    long-to-float v7, v8

    const v8, 0x3ccccccd    # 0.025f

    mul-float v1, v7, v8

    .line 4982
    .restart local v1    # "scale":F
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v1, v7

    if-lez v7, :cond_b

    div-float/2addr v0, v1

    .line 4983
    :cond_b
    iget-object v7, p0, Landroid/view/ViewRootImpl$TrackballAxis;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewRootImpl;

    .line 4984
    .restart local v6    # "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v6, :cond_c

    # getter for: Landroid/view/ViewRootImpl;->DEBUG_TRACKBALL:Z
    invoke-static {v6}, Landroid/view/ViewRootImpl;->access$1700(Landroid/view/ViewRootImpl;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 4985
    const-string v7, "ViewRootImpl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " deccelerate: off="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " normTime="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " delta="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " scale="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " acc="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4988
    :cond_c
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v0, v7

    if-lez v7, :cond_d

    .end local v0    # "acc":F
    :goto_3
    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    goto/16 :goto_2

    .restart local v0    # "acc":F
    :cond_d
    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_3
.end method

.method generate()I
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 5004
    const/4 v2, 0x0

    .line 5005
    .local v2, "movement":I
    const/4 v4, 0x0

    iput v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    .line 5007
    :goto_0
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    move v1, v3

    .line 5008
    .local v1, "dir":I
    :goto_1
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    packed-switch v4, :pswitch_data_0

    .line 5040
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v6

    if-gez v4, :cond_2

    .line 5041
    :cond_0
    return v2

    .line 5007
    .end local v1    # "dir":I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1

    .line 5013
    .restart local v1    # "dir":I
    :pswitch_0
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_0

    .line 5016
    add-int/2addr v2, v1

    .line 5017
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    add-int/2addr v4, v1

    iput v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    .line 5018
    iput v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    goto :goto_0

    .line 5024
    :pswitch_1
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v7

    if-ltz v4, :cond_0

    .line 5027
    add-int/2addr v2, v1

    .line 5028
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    add-int/2addr v4, v1

    iput v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    .line 5029
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    int-to-float v5, v1

    mul-float/2addr v5, v7

    sub-float/2addr v4, v5

    iput v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 5030
    const/4 v4, 0x2

    iput v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    goto :goto_0

    .line 5043
    :cond_2
    add-int/2addr v2, v1

    .line 5044
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    int-to-float v5, v1

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iput v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 5045
    iget v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 5046
    .local v0, "acc":F
    const v4, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v4

    .line 5047
    const/high16 v4, 0x41a00000    # 20.0f

    cmpg-float v4, v0, v4

    if-gez v4, :cond_3

    .end local v0    # "acc":F
    :goto_2
    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    goto :goto_0

    .restart local v0    # "acc":F
    :cond_3
    iget v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    goto :goto_2

    .line 5008
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method reset(I)V
    .locals 2
    .param p1, "_step"    # I

    .prologue
    .line 4915
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    .line 4916
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .line 4917
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .line 4918
    iput p1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    .line 4919
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    .line 4920
    return-void
.end method
