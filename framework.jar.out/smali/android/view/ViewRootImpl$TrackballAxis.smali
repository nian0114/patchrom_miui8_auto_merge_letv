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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->mViewAncestor:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method collect(FJLjava/lang/String;)F
    .locals 10
    .param p1, "off"    # F
    .param p2, "time"    # J
    .param p4, "axis"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    cmpl-float v7, p1, v7

    if-lez v7, :cond_5

    const/high16 v7, 0x43160000    # 150.0f

    mul-float/2addr v7, p1

    float-to-long v4, v7

    .local v4, "normTime":J
    iget v7, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    if-gez v7, :cond_1

    iget-object v7, p0, Landroid/view/ViewRootImpl$TrackballAxis;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewRootImpl;

    .local v6, "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v6, :cond_0

    # getter for: Landroid/view/ViewRootImpl;->DEBUG_TRACKBALL:Z
    invoke-static {v6}, Landroid/view/ViewRootImpl;->access$1700(Landroid/view/ViewRootImpl;)Z

    move-result v7

    if-eqz v7, :cond_0

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

    :cond_0
    const/4 v7, 0x0

    iput v7, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    const/4 v7, 0x0

    iput v7, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .end local v6    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_1
    const/4 v7, 0x1

    iput v7, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    :goto_0
    const-wide/16 v8, 0x0

    cmp-long v7, v4, v8

    if-lez v7, :cond_4

    iget-wide v8, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    sub-long v2, p2, v8

    .local v2, "delta":J
    iput-wide p2, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    iget v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .local v0, "acc":F
    cmp-long v7, v2, v4

    if-gez v7, :cond_a

    sub-long v8, v4, v2

    long-to-float v7, v8

    const v8, 0x3ccccccd    # 0.025f

    mul-float v1, v7, v8

    .local v1, "scale":F
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v1, v7

    if-lez v7, :cond_2

    mul-float/2addr v0, v1

    :cond_2
    iget-object v7, p0, Landroid/view/ViewRootImpl$TrackballAxis;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewRootImpl;

    .restart local v6    # "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v6, :cond_3

    # getter for: Landroid/view/ViewRootImpl;->DEBUG_TRACKBALL:Z
    invoke-static {v6}, Landroid/view/ViewRootImpl;->access$1700(Landroid/view/ViewRootImpl;)Z

    move-result v7

    if-eqz v7, :cond_3

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

    :cond_3
    const/high16 v7, 0x41a00000    # 20.0f

    cmpg-float v7, v0, v7

    if-gez v7, :cond_9

    .end local v0    # "acc":F
    :goto_1
    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .end local v1    # "scale":F
    .end local v2    # "delta":J
    .end local v6    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_4
    :goto_2
    iget v7, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    add-float/2addr v7, p1

    iput v7, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    iget v7, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    return v7

    .end local v4    # "normTime":J
    :cond_5
    const/4 v7, 0x0

    cmpg-float v7, p1, v7

    if-gez v7, :cond_8

    neg-float v7, p1

    const/high16 v8, 0x43160000    # 150.0f

    mul-float/2addr v7, v8

    float-to-long v4, v7

    .restart local v4    # "normTime":J
    iget v7, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    if-lez v7, :cond_7

    iget-object v7, p0, Landroid/view/ViewRootImpl$TrackballAxis;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewRootImpl;

    .restart local v6    # "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v6, :cond_6

    # getter for: Landroid/view/ViewRootImpl;->DEBUG_TRACKBALL:Z
    invoke-static {v6}, Landroid/view/ViewRootImpl;->access$1700(Landroid/view/ViewRootImpl;)Z

    move-result v7

    if-eqz v7, :cond_6

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

    :cond_6
    const/4 v7, 0x0

    iput v7, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    const/4 v7, 0x0

    iput v7, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    const/high16 v7, 0x3f800000    # 1.0f

    iput v7, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    .end local v6    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_7
    const/4 v7, -0x1

    iput v7, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    goto/16 :goto_0

    .end local v4    # "normTime":J
    :cond_8
    const-wide/16 v4, 0x0

    .restart local v4    # "normTime":J
    goto/16 :goto_0

    .restart local v0    # "acc":F
    .restart local v1    # "scale":F
    .restart local v2    # "delta":J
    .restart local v6    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_9
    const/high16 v0, 0x41a00000    # 20.0f

    goto :goto_1

    .end local v1    # "scale":F
    .end local v6    # "viewRoot":Landroid/view/ViewRootImpl;
    :cond_a
    sub-long v8, v2, v4

    long-to-float v7, v8

    const v8, 0x3ccccccd    # 0.025f

    mul-float v1, v7, v8

    .restart local v1    # "scale":F
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v1, v7

    if-lez v7, :cond_b

    div-float/2addr v0, v1

    :cond_b
    iget-object v7, p0, Landroid/view/ViewRootImpl$TrackballAxis;->mViewAncestor:Ljava/lang/ref/WeakReference;

    invoke-virtual {v7}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/ViewRootImpl;

    .restart local v6    # "viewRoot":Landroid/view/ViewRootImpl;
    if-eqz v6, :cond_c

    # getter for: Landroid/view/ViewRootImpl;->DEBUG_TRACKBALL:Z
    invoke-static {v6}, Landroid/view/ViewRootImpl;->access$1700(Landroid/view/ViewRootImpl;)Z

    move-result v7

    if-eqz v7, :cond_c

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

    const/4 v2, 0x0

    .local v2, "movement":I
    const/4 v4, 0x0

    iput v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    :goto_0
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_1

    move v1, v3

    .local v1, "dir":I
    :goto_1
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    packed-switch v4, :pswitch_data_0

    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v6

    if-gez v4, :cond_2

    :cond_0
    return v2

    .end local v1    # "dir":I
    :cond_1
    const/4 v1, -0x1

    goto :goto_1

    .restart local v1    # "dir":I
    :pswitch_0
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x3f000000    # 0.5f

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_0

    add-int/2addr v2, v1

    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    add-int/2addr v4, v1

    iput v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    iput v3, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    goto :goto_0

    :pswitch_1
    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v7

    if-ltz v4, :cond_0

    add-int/2addr v2, v1

    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    add-int/2addr v4, v1

    iput v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->nonAccelMovement:I

    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    int-to-float v5, v1

    mul-float/2addr v5, v7

    sub-float/2addr v4, v5

    iput v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    const/4 v4, 0x2

    iput v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    goto :goto_0

    :cond_2
    add-int/2addr v2, v1

    iget v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    int-to-float v5, v1

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    iput v4, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    iget v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    .local v0, "acc":F
    const v4, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v4

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
    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->position:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->acceleration:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->lastMoveTime:J

    iput p1, p0, Landroid/view/ViewRootImpl$TrackballAxis;->step:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/ViewRootImpl$TrackballAxis;->dir:I

    return-void
.end method
