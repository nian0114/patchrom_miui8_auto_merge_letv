.class Lcom/android/server/MountService$MountServiceHandler;
.super Landroid/os/Handler;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MountServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method public constructor <init>(Lcom/android/server/MountService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 597
    iput-object p1, p0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    .line 598
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 599
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 26
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 603
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_0

    .line 723
    :cond_0
    :goto_0
    return-void

    .line 605
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    # invokes: Lcom/android/server/MountService;->handleSystemReady()V
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$500(Lcom/android/server/MountService;)V

    goto :goto_0

    .line 609
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    # invokes: Lcom/android/server/MountService;->handleDaemonConnected()V
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$600(Lcom/android/server/MountService;)V

    goto :goto_0

    .line 613
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    # invokes: Lcom/android/server/MountService;->isReady()Z
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$700(Lcom/android/server/MountService;)Z

    move-result v21

    if-nez v21, :cond_1

    .line 614
    const-string v21, "MountService"

    const-string v22, "fstrim requested, but no daemon connection yet; trying again"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const/16 v21, 0x4

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lcom/android/server/MountService$MountServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    const-wide/16 v22, 0x3e8

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/MountService$MountServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 620
    :cond_1
    const-string v21, "MountService"

    const-string v22, "Running fstrim idle maintenance"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    # setter for: Lcom/android/server/MountService;->mLastMaintenance:J
    invoke-static/range {v21 .. v23}, Lcom/android/server/MountService;->access$802(Lcom/android/server/MountService;J)J

    .line 625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/MountService;->mLastMaintenanceFile:Ljava/io/File;
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$900(Lcom/android/server/MountService;)Ljava/io/File;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v22, v0

    # getter for: Lcom/android/server/MountService;->mLastMaintenance:J
    invoke-static/range {v22 .. v22}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;)J

    move-result-wide v22

    invoke-virtual/range {v21 .. v23}, Ljava/io/File;->setLastModified(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    # invokes: Lcom/android/server/MountService;->shouldBenchmark()Z
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$1000(Lcom/android/server/MountService;)Z

    move-result v16

    .line 634
    .local v16, "shouldBenchmark":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v22

    const-string v23, "fstrim"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    if-eqz v16, :cond_2

    const-string v21, "dotrimbench"

    :goto_2
    aput-object v21, v24, v25

    invoke-virtual/range {v22 .. v24}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_1

    .line 641
    :goto_3
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Runnable;

    .line 642
    .local v7, "callback":Ljava/lang/Runnable;
    if-eqz v7, :cond_0

    .line 643
    invoke-interface {v7}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    .line 626
    .end local v7    # "callback":Ljava/lang/Runnable;
    .end local v16    # "shouldBenchmark":Z
    :catch_0
    move-exception v8

    .line 627
    .local v8, "e":Ljava/lang/Exception;
    const-string v21, "MountService"

    const-string v22, "Unable to record last fstrim!"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 634
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v16    # "shouldBenchmark":Z
    :cond_2
    :try_start_2
    const-string v21, "dotrim"
    :try_end_2
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 635
    :catch_1
    move-exception v13

    .line 636
    .local v13, "ndce":Lcom/android/server/NativeDaemonConnectorException;
    const-string v21, "MountService"

    const-string v22, "Failed to run fstrim!"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 648
    .end local v13    # "ndce":Lcom/android/server/NativeDaemonConnectorException;
    .end local v16    # "shouldBenchmark":Z
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v14, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v14, Landroid/os/storage/IMountShutdownObserver;

    .line 649
    .local v14, "obs":Landroid/os/storage/IMountShutdownObserver;
    const/16 v17, 0x0

    .line 651
    .local v17, "success":Z
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v21

    const-string v22, "volume"

    const/16 v23, 0x1

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "shutdown"

    aput-object v25, v23, v24

    invoke-virtual/range {v21 .. v23}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/NativeDaemonEvent;->isClassOk()Z
    :try_end_3
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_3 .. :try_end_3} :catch_4

    move-result v17

    .line 654
    :goto_4
    if-eqz v14, :cond_0

    .line 656
    if-eqz v17, :cond_3

    const/16 v21, 0x0

    :goto_5
    :try_start_4
    move/from16 v0, v21

    invoke-interface {v14, v0}, Landroid/os/storage/IMountShutdownObserver;->onShutDownComplete(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 657
    :catch_2
    move-exception v21

    goto/16 :goto_0

    .line 656
    :cond_3
    const/16 v21, -0x1

    goto :goto_5

    .line 663
    .end local v14    # "obs":Landroid/os/storage/IMountShutdownObserver;
    .end local v17    # "success":Z
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/os/storage/VolumeInfo;

    .line 664
    .local v20, "vol":Landroid/os/storage/VolumeInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    # invokes: Lcom/android/server/MountService;->isMountDisallowed(Landroid/os/storage/VolumeInfo;)Z
    invoke-static {v0, v1}, Lcom/android/server/MountService;->access$1200(Lcom/android/server/MountService;Landroid/os/storage/VolumeInfo;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 665
    const-string v21, "MountService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Ignoring mount "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v20 .. v20}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " due to policy"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 669
    :cond_4
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/MountService;->mConnector:Lcom/android/server/NativeDaemonConnector;
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$1100(Lcom/android/server/MountService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v21

    const-string v22, "volume"

    const/16 v23, 0x4

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "mount"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->id:Ljava/lang/String;

    move-object/from16 v25, v0

    aput-object v25, v23, v24

    const/16 v24, 0x2

    move-object/from16 v0, v20

    iget v0, v0, Landroid/os/storage/VolumeInfo;->mountFlags:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x3

    move-object/from16 v0, v20

    iget v0, v0, Landroid/os/storage/VolumeInfo;->mountUserId:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-virtual/range {v21 .. v23}, Lcom/android/server/NativeDaemonConnector;->execute(Ljava/lang/String;[Ljava/lang/Object;)Lcom/android/server/NativeDaemonEvent;
    :try_end_5
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_5 .. :try_end_5} :catch_3

    goto/16 :goto_0

    .line 671
    :catch_3
    move-exception v21

    goto/16 :goto_0

    .line 676
    .end local v20    # "vol":Landroid/os/storage/VolumeInfo;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/os/storage/StorageVolume;

    .line 677
    .local v19, "userVol":Landroid/os/storage/StorageVolume;
    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/StorageVolume;->getState()Ljava/lang/String;

    move-result-object v9

    .line 678
    .local v9, "envState":Ljava/lang/String;
    const-string v21, "MountService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Volume "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/StorageVolume;->getId()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " broadcasting "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " to "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    invoke-static {v9}, Landroid/os/storage/VolumeInfo;->getBroadcastForEnvironment(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 682
    .local v4, "action":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 683
    new-instance v11, Landroid/content/Intent;

    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/StorageVolume;->getPathFile()Ljava/io/File;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-direct {v11, v4, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 685
    .local v11, "intent":Landroid/content/Intent;
    const-string v21, "storage_volume"

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v11, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 686
    const/high16 v21, 0x4000000

    move/from16 v0, v21

    invoke-virtual {v11, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v19 .. v19}, Landroid/os/storage/StorageVolume;->getOwner()Landroid/os/UserHandle;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v11, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 694
    .end local v4    # "action":Ljava/lang/String;
    .end local v9    # "envState":Ljava/lang/String;
    .end local v11    # "intent":Landroid/content/Intent;
    .end local v19    # "userVol":Landroid/os/storage/StorageVolume;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/content/Intent;

    .line 695
    .restart local v11    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v21

    sget-object v22, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v23, "android.permission.WRITE_MEDIA_STORAGE"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v11, v1, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 702
    .end local v11    # "intent":Landroid/content/Intent;
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    .line 703
    .local v5, "b":Landroid/os/Bundle;
    const-string v21, "rawstring"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 704
    .local v15, "rawstring":Ljava/lang/String;
    const-string v21, "flag"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 705
    .local v10, "flag":I
    const-string v21, "MountService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "MountServiceHandler.handleMessage  H_SDCARD_REQUEST rawstring= "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "; flag="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "; state="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/MountService;->mSdcardConnectorState:Lcom/android/server/MountService$SdcardConnectorState;
    invoke-static/range {v23 .. v23}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;)Lcom/android/server/MountService$SdcardConnectorState;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/MountService$SdcardConnectorState;->getState()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/MountService;->mSdcardConnectorState:Lcom/android/server/MountService$SdcardConnectorState;
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;)Lcom/android/server/MountService$SdcardConnectorState;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/MountService$SdcardConnectorState;->getState()I

    move-result v21

    if-nez v21, :cond_5

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    new-instance v22, Lcom/android/server/SdcardDaemonConnector;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v23, v0

    # getter for: Lcom/android/server/MountService;->mSdcardConnectorState:Lcom/android/server/MountService$SdcardConnectorState;
    invoke-static/range {v23 .. v23}, Lcom/android/server/MountService;->access$1400(Lcom/android/server/MountService;)Lcom/android/server/MountService$SdcardConnectorState;

    move-result-object v23

    const-string v24, "sdcard"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2, v15, v10}, Lcom/android/server/SdcardDaemonConnector;-><init>(Lcom/android/server/MountService$SdcardConnectorState;Ljava/lang/String;Ljava/lang/String;I)V

    # setter for: Lcom/android/server/MountService;->mSdcardConnector:Lcom/android/server/SdcardDaemonConnector;
    invoke-static/range {v21 .. v22}, Lcom/android/server/MountService;->access$1502(Lcom/android/server/MountService;Lcom/android/server/SdcardDaemonConnector;)Lcom/android/server/SdcardDaemonConnector;

    .line 708
    new-instance v18, Ljava/lang/Thread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/MountService;->mSdcardConnector:Lcom/android/server/SdcardDaemonConnector;
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$1500(Lcom/android/server/MountService;)Lcom/android/server/SdcardDaemonConnector;

    move-result-object v21

    const-string v22, "SdcardDaemonConnector"

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 709
    .local v18, "thread":Ljava/lang/Thread;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 711
    .end local v18    # "thread":Ljava/lang/Thread;
    :cond_5
    const-string v21, "MountService"

    const-string v22, "MountServiceHandler.handleMessage  delay resend sdcard message "

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v21

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v12

    .line 713
    .local v12, "message":Landroid/os/Message;
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 714
    .local v6, "bundle":Landroid/os/Bundle;
    const-string v21, "rawstring"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    const-string v21, "flag"

    move-object/from16 v0, v21

    invoke-virtual {v6, v0, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 716
    invoke-virtual {v12, v5}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/MountService$MountServiceHandler;->this$0:Lcom/android/server/MountService;

    move-object/from16 v21, v0

    # getter for: Lcom/android/server/MountService;->mHandler:Landroid/os/Handler;
    invoke-static/range {v21 .. v21}, Lcom/android/server/MountService;->access$1600(Lcom/android/server/MountService;)Landroid/os/Handler;

    move-result-object v21

    const-wide/16 v22, 0x7d0

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    invoke-virtual {v0, v12, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 652
    .end local v5    # "b":Landroid/os/Bundle;
    .end local v6    # "bundle":Landroid/os/Bundle;
    .end local v10    # "flag":I
    .end local v12    # "message":Landroid/os/Message;
    .end local v15    # "rawstring":Ljava/lang/String;
    .restart local v14    # "obs":Landroid/os/storage/IMountShutdownObserver;
    .restart local v17    # "success":Z
    :catch_4
    move-exception v21

    goto/16 :goto_4

    .line 603
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
