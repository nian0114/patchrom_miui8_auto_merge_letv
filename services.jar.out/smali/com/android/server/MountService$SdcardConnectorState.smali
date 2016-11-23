.class public Lcom/android/server/MountService$SdcardConnectorState;
.super Ljava/lang/Object;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SdcardConnectorState"
.end annotation


# static fields
.field public static final CONNECTED:I = 0x2

.field public static final CONNECTING:I = 0x1

.field public static final DISCONNECT:I = 0x0

.field public static final SENDING_DATA:I = 0x3


# instance fields
.field public mConnectorState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3632
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3633
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/MountService$SdcardConnectorState;->mConnectorState:I

    .line 3634
    return-void
.end method

.method private stateToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 3651
    packed-switch p1, :pswitch_data_0

    .line 3665
    const-string v0, "UNKNOW STATE"

    .line 3668
    .local v0, "str":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 3653
    .end local v0    # "str":Ljava/lang/String;
    :pswitch_0
    const-string v0, "DISCONNECT"

    .line 3654
    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_0

    .line 3656
    .end local v0    # "str":Ljava/lang/String;
    :pswitch_1
    const-string v0, "CONNECTING"

    .line 3657
    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_0

    .line 3659
    .end local v0    # "str":Ljava/lang/String;
    :pswitch_2
    const-string v0, "CONNECTED"

    .line 3660
    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_0

    .line 3662
    .end local v0    # "str":Ljava/lang/String;
    :pswitch_3
    const-string v0, "SENDING_DATA"

    .line 3663
    .restart local v0    # "str":Ljava/lang/String;
    goto :goto_0

    .line 3651
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public getState()I
    .locals 1

    .prologue
    .line 3637
    monitor-enter p0

    .line 3638
    :try_start_0
    iget v0, p0, Lcom/android/server/MountService$SdcardConnectorState;->mConnectorState:I

    monitor-exit p0

    return v0

    .line 3639
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 3643
    monitor-enter p0

    .line 3644
    :try_start_0
    const-string v0, "MountService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SdcardConnectorState.setState  state= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/server/MountService$SdcardConnectorState;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3645
    iput p1, p0, Lcom/android/server/MountService$SdcardConnectorState;->mConnectorState:I

    .line 3646
    monitor-exit p0

    .line 3647
    return-void

    .line 3646
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
