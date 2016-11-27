.class Lcom/android/server/net/NetworkPolicyManagerService$20;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    .prologue
    .line 2899
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 23
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2902
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 3003
    :goto_0
    :pswitch_0
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 2904
    :pswitch_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v21, v0

    .line 2905
    .local v21, "uid":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v22, v0

    .line 2906
    .local v22, "uidRules":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v12

    .line 2907
    .local v12, "length":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_2
    if-ge v10, v12, :cond_1

    .line 2908
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v13

    check-cast v13, Landroid/net/INetworkPolicyListener;

    .line 2909
    .local v13, "listener":Landroid/net/INetworkPolicyListener;
    if-eqz v13, :cond_0

    .line 2911
    :try_start_0
    move/from16 v0, v21

    move/from16 v1, v22

    invoke-interface {v13, v0, v1}, Landroid/net/INetworkPolicyListener;->onUidRulesChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2907
    :cond_0
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 2916
    .end local v13    # "listener":Landroid/net/INetworkPolicyListener;
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2917
    const/4 v2, 0x1

    goto :goto_1

    .line 2920
    .end local v10    # "i":I
    .end local v12    # "length":I
    .end local v21    # "uid":I
    .end local v22    # "uidRules":I
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    move-object/from16 v16, v2

    check-cast v16, [Ljava/lang/String;

    .line 2921
    .local v16, "meteredIfaces":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v12

    .line 2922
    .restart local v12    # "length":I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_4
    if-ge v10, v12, :cond_3

    .line 2923
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v13

    check-cast v13, Landroid/net/INetworkPolicyListener;

    .line 2924
    .restart local v13    # "listener":Landroid/net/INetworkPolicyListener;
    if-eqz v13, :cond_2

    .line 2926
    :try_start_1
    move-object/from16 v0, v16

    invoke-interface {v13, v0}, Landroid/net/INetworkPolicyListener;->onMeteredIfacesChanged([Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 2922
    :cond_2
    :goto_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 2931
    .end local v13    # "listener":Landroid/net/INetworkPolicyListener;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2932
    const/4 v2, 0x1

    goto :goto_1

    .line 2935
    .end local v10    # "i":I
    .end local v12    # "length":I
    .end local v16    # "meteredIfaces":[Ljava/lang/String;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    .line 2937
    .local v11, "iface":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->maybeRefreshTrustedTime()V

    .line 2938
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v3, v2, Lcom/android/server/net/NetworkPolicyManagerService;->mRulesLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2939
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mMeteredIfaces:Landroid/util/ArraySet;
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    if-eqz v2, :cond_4

    .line 2943
    :try_start_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v2

    invoke-interface {v2}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2948
    :goto_6
    :try_start_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNetworkEnabledLocked()V

    .line 2949
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->updateNotificationsLocked()V

    .line 2951
    :cond_4
    monitor-exit v3

    .line 2952
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 2951
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2

    .line 2955
    .end local v11    # "iface":Ljava/lang/String;
    :pswitch_4
    move-object/from16 v0, p1

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eqz v2, :cond_6

    const/16 v20, 0x1

    .line 2956
    .local v20, "restrictBackground":Z
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v12

    .line 2957
    .restart local v12    # "length":I
    const/4 v10, 0x0

    .restart local v10    # "i":I
    :goto_8
    if-ge v10, v12, :cond_7

    .line 2958
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v10}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v13

    check-cast v13, Landroid/net/INetworkPolicyListener;

    .line 2959
    .restart local v13    # "listener":Landroid/net/INetworkPolicyListener;
    if-eqz v13, :cond_5

    .line 2961
    :try_start_5
    move/from16 v0, v20

    invoke-interface {v13, v0}, Landroid/net/INetworkPolicyListener;->onRestrictBackgroundChanged(Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 2957
    :cond_5
    :goto_9
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    .line 2955
    .end local v10    # "i":I
    .end local v12    # "length":I
    .end local v13    # "listener":Landroid/net/INetworkPolicyListener;
    .end local v20    # "restrictBackground":Z
    :cond_6
    const/16 v20, 0x0

    goto :goto_7

    .line 2966
    .restart local v10    # "i":I
    .restart local v12    # "length":I
    .restart local v20    # "restrictBackground":Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mListeners:Landroid/os/RemoteCallbackList;
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1300(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 2967
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 2970
    .end local v10    # "i":I
    .end local v12    # "length":I
    .end local v20    # "restrictBackground":Z
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 2974
    .local v14, "lowestRule":J
    const-wide/16 v2, 0x3e8

    :try_start_6
    div-long v18, v14, v2

    .line 2975
    .local v18, "persistThreshold":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mNetworkStats:Landroid/net/INetworkStatsService;
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1500(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsService;

    move-result-object v2

    move-wide/from16 v0, v18

    invoke-interface {v2, v0, v1}, Landroid/net/INetworkStatsService;->advisePersistThreshold(J)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_3

    .line 2979
    .end local v18    # "persistThreshold":J
    :goto_a
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 2982
    .end local v14    # "lowestRule":J
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # invokes: Lcom/android/server/net/NetworkPolicyManagerService;->updateScreenOn()V
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1600(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 2983
    const/4 v2, 0x1

    goto/16 :goto_1

    .line 2986
    :pswitch_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0xdac

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->title:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1700(Lcom/android/server/net/NetworkPolicyManagerService;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/net/NetworkPolicyManagerService$20;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->icon:Landroid/graphics/drawable/Drawable;
    invoke-static {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->access$1800(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/letv/leui/widget/LeTopSlideToastHelper;->getToastHelper(Landroid/content/Context;ILjava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/view/View$OnClickListener;Lcom/letv/leui/widget/LeTopSlideToastCallback;)Lcom/letv/leui/widget/LeTopSlideToastHelper;

    move-result-object v9

    .line 2987
    .local v9, "helper":Lcom/letv/leui/widget/LeTopSlideToastHelper;
    invoke-virtual {v9}, Lcom/letv/leui/widget/LeTopSlideToastHelper;->getmWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v17

    .line 2988
    .local v17, "params":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v9}, Lcom/letv/leui/widget/LeTopSlideToastHelper;->getToastView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/server/net/NetworkPolicyManagerService$20$1;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/net/NetworkPolicyManagerService$20$1;-><init>(Lcom/android/server/net/NetworkPolicyManagerService$20;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3000
    invoke-virtual {v9}, Lcom/letv/leui/widget/LeTopSlideToastHelper;->show()V

    goto/16 :goto_0

    .line 2912
    .end local v9    # "helper":Lcom/letv/leui/widget/LeTopSlideToastHelper;
    .end local v17    # "params":Landroid/view/WindowManager$LayoutParams;
    .restart local v10    # "i":I
    .restart local v12    # "length":I
    .restart local v13    # "listener":Landroid/net/INetworkPolicyListener;
    .restart local v21    # "uid":I
    .restart local v22    # "uidRules":I
    :catch_0
    move-exception v2

    goto/16 :goto_3

    .line 2927
    .end local v21    # "uid":I
    .end local v22    # "uidRules":I
    .restart local v16    # "meteredIfaces":[Ljava/lang/String;
    :catch_1
    move-exception v2

    goto/16 :goto_5

    .line 2962
    .end local v16    # "meteredIfaces":[Ljava/lang/String;
    .restart local v20    # "restrictBackground":Z
    :catch_2
    move-exception v2

    goto :goto_9

    .line 2976
    .end local v10    # "i":I
    .end local v12    # "length":I
    .end local v13    # "listener":Landroid/net/INetworkPolicyListener;
    .end local v20    # "restrictBackground":Z
    .restart local v14    # "lowestRule":J
    :catch_3
    move-exception v2

    goto :goto_a

    .line 2944
    .end local v14    # "lowestRule":J
    .restart local v11    # "iface":Ljava/lang/String;
    :catch_4
    move-exception v2

    goto/16 :goto_6

    .line 2902
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
