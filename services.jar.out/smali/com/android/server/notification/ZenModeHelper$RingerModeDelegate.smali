.class final Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;
.super Ljava/lang/Object;
.source "ZenModeHelper.java"

# interfaces
.implements Landroid/media/AudioManagerInternal$RingerModeDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ZenModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "RingerModeDelegate"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0

    .prologue
    .line 591
    iput-object p1, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ZenModeHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/notification/ZenModeHelper;
    .param p2, "x1"    # Lcom/android/server/notification/ZenModeHelper$1;

    .prologue
    .line 591
    invoke-direct {p0, p1}, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;-><init>(Lcom/android/server/notification/ZenModeHelper;)V

    return-void
.end method


# virtual methods
.method public canVolumeDownEnterSilent()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 681
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->isZemModeAndRingerModeSupport:Z
    invoke-static {v1}, Lcom/android/server/notification/ZenModeHelper;->access$900(Lcom/android/server/notification/ZenModeHelper;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 684
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mZenMode:I
    invoke-static {v1}, Lcom/android/server/notification/ZenModeHelper;->access$1000(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRingerModeAffectedStreams(I)I
    .locals 3
    .param p1, "streams"    # I

    .prologue
    .line 689
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->isZemModeAndRingerModeSupport:Z
    invoke-static {v1}, Lcom/android/server/notification/ZenModeHelper;->access$900(Lcom/android/server/notification/ZenModeHelper;)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, p1

    .line 705
    .end local p1    # "streams":I
    .local v0, "streams":I
    :goto_0
    return v0

    .line 693
    .end local v0    # "streams":I
    .restart local p1    # "streams":I
    :cond_0
    or-int/lit8 p1, p1, 0x26

    .line 698
    iget-object v1, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mZenMode:I
    invoke-static {v1}, Lcom/android/server/notification/ZenModeHelper;->access$1000(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 699
    or-int/lit8 p1, p1, 0x18

    :goto_1
    move v0, p1

    .line 705
    .end local p1    # "streams":I
    .restart local v0    # "streams":I
    goto :goto_0

    .line 702
    .end local v0    # "streams":I
    .restart local p1    # "streams":I
    :cond_1
    and-int/lit8 p1, p1, -0x19

    goto :goto_1
.end method

.method public onSetRingerModeExternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .locals 8
    .param p1, "ringerModeOld"    # I
    .param p2, "ringerModeNew"    # I
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "ringerModeInternal"    # I
    .param p5, "policy"    # Landroid/media/VolumePolicy;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 643
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->isZemModeAndRingerModeSupport:Z
    invoke-static {v6}, Lcom/android/server/notification/ZenModeHelper;->access$900(Lcom/android/server/notification/ZenModeHelper;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 676
    .end local p2    # "ringerModeNew":I
    :goto_0
    return p2

    .line 646
    .restart local p2    # "ringerModeNew":I
    :cond_0
    move v3, p2

    .line 647
    .local v3, "ringerModeInternalOut":I
    if-eq p1, p2, :cond_3

    move v0, v4

    .line 648
    .local v0, "isChange":Z
    :goto_1
    if-ne p4, v4, :cond_4

    move v1, v4

    .line 650
    .local v1, "isVibrate":Z
    :goto_2
    const/4 v2, -0x1

    .line 651
    .local v2, "newZen":I
    packed-switch p2, :pswitch_data_0

    .line 670
    :cond_1
    :goto_3
    const/4 v4, -0x1

    if-eq v2, v4, :cond_2

    .line 671
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    const/4 v6, 0x0

    const-string v7, "ringerModeExternal"

    # invokes: Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Z)V
    invoke-static {v4, v2, v6, v7, v5}, Lcom/android/server/notification/ZenModeHelper;->access$1200(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Z)V

    .line 674
    :cond_2
    invoke-static {p1, p2, p3, p4, v3}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeExternal(IILjava/lang/String;II)V

    move p2, v3

    .line 676
    goto :goto_0

    .end local v0    # "isChange":Z
    .end local v1    # "isVibrate":Z
    .end local v2    # "newZen":I
    :cond_3
    move v0, v5

    .line 647
    goto :goto_1

    .restart local v0    # "isChange":Z
    :cond_4
    move v1, v5

    .line 648
    goto :goto_2

    .line 653
    .restart local v1    # "isVibrate":Z
    .restart local v2    # "newZen":I
    :pswitch_0
    if-eqz v0, :cond_7

    .line 654
    iget-object v6, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mZenMode:I
    invoke-static {v6}, Lcom/android/server/notification/ZenModeHelper;->access$1000(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v6

    if-nez v6, :cond_5

    .line 655
    const/4 v2, 0x3

    .line 657
    :cond_5
    if-eqz v1, :cond_6

    move v3, v4

    :goto_4
    goto :goto_3

    :cond_6
    move v3, v5

    goto :goto_4

    .line 660
    :cond_7
    move v3, p4

    .line 662
    goto :goto_3

    .line 665
    :pswitch_1
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mZenMode:I
    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->access$1000(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 666
    const/4 v2, 0x0

    goto :goto_3

    .line 651
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onSetRingerModeInternal(IILjava/lang/String;ILandroid/media/VolumePolicy;)I
    .locals 8
    .param p1, "ringerModeOld"    # I
    .param p2, "ringerModeNew"    # I
    .param p3, "caller"    # Ljava/lang/String;
    .param p4, "ringerModeExternal"    # I
    .param p5, "policy"    # Landroid/media/VolumePolicy;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v3, 0x0

    const/4 v7, -0x1

    .line 600
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->isZemModeAndRingerModeSupport:Z
    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->access$900(Lcom/android/server/notification/ZenModeHelper;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 637
    .end local p2    # "ringerModeNew":I
    :goto_0
    return p2

    .line 603
    .restart local p2    # "ringerModeNew":I
    :cond_0
    if-eq p1, p2, :cond_5

    const/4 v0, 0x1

    .line 605
    .local v0, "isChange":Z
    :goto_1
    move v2, p2

    .line 607
    .local v2, "ringerModeExternalOut":I
    const/4 v1, -0x1

    .line 608
    .local v1, "newZen":I
    packed-switch p2, :pswitch_data_0

    .line 629
    :cond_1
    :goto_2
    if-eq v1, v7, :cond_2

    .line 630
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    const/4 v5, 0x0

    const-string v6, "ringerModeInternal"

    # invokes: Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(ILandroid/net/Uri;Ljava/lang/String;Z)V
    invoke-static {v4, v1, v5, v6, v3}, Lcom/android/server/notification/ZenModeHelper;->access$1200(Lcom/android/server/notification/ZenModeHelper;ILandroid/net/Uri;Ljava/lang/String;Z)V

    .line 633
    :cond_2
    if-nez v0, :cond_3

    if-ne v1, v7, :cond_3

    if-eq p4, v2, :cond_4

    .line 634
    :cond_3
    invoke-static {p1, p2, p3, p4, v2}, Lcom/android/server/notification/ZenLog;->traceSetRingerModeInternal(IILjava/lang/String;II)V

    :cond_4
    move p2, v2

    .line 637
    goto :goto_0

    .end local v0    # "isChange":Z
    .end local v1    # "newZen":I
    .end local v2    # "ringerModeExternalOut":I
    :cond_5
    move v0, v3

    .line 603
    goto :goto_1

    .line 610
    .restart local v0    # "isChange":Z
    .restart local v1    # "newZen":I
    .restart local v2    # "ringerModeExternalOut":I
    :pswitch_0
    if-eqz v0, :cond_1

    iget-boolean v4, p5, Landroid/media/VolumePolicy;->doNotDisturbWhenSilent:Z

    if-eqz v4, :cond_1

    .line 611
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mZenMode:I
    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->access$1000(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v4

    if-eq v4, v5, :cond_6

    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mZenMode:I
    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->access$1000(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v4

    if-eq v4, v6, :cond_6

    .line 613
    const/4 v1, 0x3

    .line 615
    :cond_6
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    # invokes: Lcom/android/server/notification/ZenModeHelper;->setPreviousRingerModeSetting(Ljava/lang/Integer;)V
    invoke-static {v4, v5}, Lcom/android/server/notification/ZenModeHelper;->access$1100(Lcom/android/server/notification/ZenModeHelper;Ljava/lang/Integer;)V

    goto :goto_2

    .line 620
    :pswitch_1
    if-eqz v0, :cond_8

    if-nez p1, :cond_8

    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mZenMode:I
    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->access$1000(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v4

    if-eq v4, v5, :cond_7

    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mZenMode:I
    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->access$1000(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v4

    if-ne v4, v6, :cond_8

    .line 623
    :cond_7
    const/4 v1, 0x0

    goto :goto_2

    .line 624
    :cond_8
    iget-object v4, p0, Lcom/android/server/notification/ZenModeHelper$RingerModeDelegate;->this$0:Lcom/android/server/notification/ZenModeHelper;

    # getter for: Lcom/android/server/notification/ZenModeHelper;->mZenMode:I
    invoke-static {v4}, Lcom/android/server/notification/ZenModeHelper;->access$1000(Lcom/android/server/notification/ZenModeHelper;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 625
    const/4 v2, 0x0

    goto :goto_2

    .line 608
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 594
    const-string v0, "ZenModeHelper"

    return-object v0
.end method
