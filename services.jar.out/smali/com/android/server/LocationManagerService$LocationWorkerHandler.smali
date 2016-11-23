.class Lcom/android/server/LocationManagerService$LocationWorkerHandler;
.super Landroid/os/Handler;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationWorkerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/LocationManagerService;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2567
    iput-object p1, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    .line 2568
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2569
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 2573
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    .line 2611
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2575
    :pswitch_1
    iget-object v9, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/location/Location;

    iget v10, p1, Landroid/os/Message;->arg1:I

    if-ne v10, v7, :cond_1

    :goto_1
    # invokes: Lcom/android/server/LocationManagerService;->handleLocationChanged(Landroid/location/Location;Z)V
    invoke-static {v9, v6, v7}, Lcom/android/server/LocationManagerService;->access$2400(Lcom/android/server/LocationManagerService;Landroid/location/Location;Z)V

    goto :goto_0

    :cond_1
    move v7, v8

    goto :goto_1

    .line 2582
    :pswitch_2
    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 2583
    .local v5, "stateUnbinder":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 2585
    .local v2, "mNameUnbinder":Ljava/lang/String;
    const/4 v6, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :cond_2
    move v8, v6

    :goto_2
    packed-switch v8, :pswitch_data_1

    .line 2593
    :goto_3
    const/4 v1, 0x0

    .line 2594
    .local v1, "locationProvider":Lcom/android/server/location/LocationProviderProxy;
    iget-object v6, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mRealProviders:Ljava/util/HashMap;
    invoke-static {v6}, Lcom/android/server/LocationManagerService;->access$2500(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v6

    const-string v7, "network"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/location/LocationProviderInterface;

    .line 2595
    .local v4, "realProvider":Lcom/android/server/location/LocationProviderInterface;
    if-eqz v4, :cond_3

    move-object v1, v4

    .line 2596
    check-cast v1, Lcom/android/server/location/LocationProviderProxy;

    .line 2598
    :cond_3
    iget-object v6, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;
    invoke-static {v6}, Lcom/android/server/LocationManagerService;->access$2600(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/GeocoderProxy;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;
    invoke-static {v6}, Lcom/android/server/LocationManagerService;->access$2600(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/GeocoderProxy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/location/GeocoderProxy;->getConnectedPackageName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;
    invoke-static {v6}, Lcom/android/server/LocationManagerService;->access$2600(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/GeocoderProxy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/location/GeocoderProxy;->getConnectedPackageName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;
    invoke-static {v6}, Lcom/android/server/LocationManagerService;->access$2600(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/GeocoderProxy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/location/GeocoderProxy;->getConnectedPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    iget-object v6, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mGeocodeProvider:Lcom/android/server/location/GeocoderProxy;
    invoke-static {v6}, Lcom/android/server/LocationManagerService;->access$2600(Lcom/android/server/LocationManagerService;)Lcom/android/server/location/GeocoderProxy;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/location/GeocoderProxy;->getConnectedPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.baidu.map.location"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    :cond_4
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/location/LocationProviderProxy;->getConnectedPackageName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_5

    invoke-virtual {v1}, Lcom/android/server/location/LocationProviderProxy;->getConnectedPackageName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Lcom/android/server/location/LocationProviderProxy;->getConnectedPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v1}, Lcom/android/server/location/LocationProviderProxy;->getConnectedPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.baidu.map.location"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2606
    :cond_5
    iget-object v6, p0, Lcom/android/server/LocationManagerService$LocationWorkerHandler;->this$0:Lcom/android/server/LocationManagerService;

    # getter for: Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/LocationManagerService;->access$000(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v6

    const-string v7, "activity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 2607
    .local v0, "am":Landroid/app/ActivityManager;
    const-string v6, "com.baidu.map.location"

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2585
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "locationProvider":Lcom/android/server/location/LocationProviderProxy;
    .end local v4    # "realProvider":Lcom/android/server/location/LocationProviderInterface;
    :sswitch_0
    const-string v7, "network"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto/16 :goto_2

    :sswitch_1
    const-string v8, "geocoder"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v8, v7

    goto/16 :goto_2

    .line 2587
    :pswitch_3
    const-string v3, "network"

    .line 2588
    .local v3, "pkgNameUnbinder":Ljava/lang/String;
    goto/16 :goto_3

    .line 2590
    .end local v3    # "pkgNameUnbinder":Ljava/lang/String;
    :pswitch_4
    const-string v6, "geocoder"

    goto/16 :goto_3

    .line 2573
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 2585
    :sswitch_data_0
    .sparse-switch
        0x6d7f6b74 -> :sswitch_1
        0x6de15a2e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
