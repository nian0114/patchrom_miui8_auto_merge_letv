.class Lcom/android/server/net/NetworkPolicyManagerService$23$1;
.super Landroid/os/AsyncTask;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/NetworkPolicyManagerService$23;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/net/NetworkPolicyManagerService$23;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService$23;)V
    .locals 0

    .prologue
    .line 3857
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$23$1;->this$1:Lcom/android/server/net/NetworkPolicyManagerService$23;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3857
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkPolicyManagerService$23$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 34
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 3859
    invoke-static {}, Lcom/letv/tracker/agnes/Agnes;->getInstance()Lcom/letv/tracker/agnes/Agnes;

    move-result-object v2

    const-string v8, "SuperManager"

    invoke-virtual {v2, v8}, Lcom/letv/tracker/agnes/Agnes;->getApp(Ljava/lang/String;)Lcom/letv/tracker/agnes/App;

    move-result-object v9

    .line 3860
    .local v9, "app":Lcom/letv/tracker/agnes/App;
    const-string v2, "1.3.4"

    invoke-virtual {v9, v2}, Lcom/letv/tracker/agnes/App;->createWidget(Ljava/lang/String;)Lcom/letv/tracker/agnes/Widget;

    move-result-object v27

    .line 3861
    .local v27, "widget":Lcom/letv/tracker/agnes/Widget;
    sget-object v2, Lcom/letv/tracker/enums/EventType;->Send:Lcom/letv/tracker/enums/EventType;

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lcom/letv/tracker/agnes/Widget;->createEvent(Lcom/letv/tracker/enums/EventType;)Lcom/letv/tracker/agnes/Event;

    move-result-object v15

    .line 3863
    .local v15, "event":Lcom/letv/tracker/agnes/Event;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 3864
    .local v11, "calendar":Ljava/util/Calendar;
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 3865
    .local v6, "endTime":J
    const/4 v2, 0x2

    const/4 v8, -0x1

    invoke-virtual {v11, v2, v8}, Ljava/util/Calendar;->add(II)V

    .line 3866
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 3867
    .local v4, "startTime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$23$1;->this$1:Lcom/android/server/net/NetworkPolicyManagerService$23;

    iget-object v2, v2, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v26

    .line 3868
    .local v26, "tele":Landroid/telephony/TelephonyManager;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$23$1;->this$1:Lcom/android/server/net/NetworkPolicyManagerService$23;

    iget-object v2, v2, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v22

    .line 3869
    .local v22, "sub":Landroid/telephony/SubscriptionManager;
    invoke-virtual/range {v22 .. v22}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v24

    .line 3870
    .local v24, "subIds":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$23$1;->this$1:Lcom/android/server/net/NetworkPolicyManagerService$23;

    iget-object v2, v2, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$000(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    .line 3871
    .local v20, "pm":Landroid/content/pm/PackageManager;
    move-object/from16 v10, v24

    .local v10, "arr$":[I
    array-length v0, v10

    move/from16 v18, v0

    .local v18, "len$":I
    const/16 v17, 0x0

    .local v17, "i$":I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    aget v23, v10, v17

    .line 3872
    .local v23, "subId":I
    move-object/from16 v0, v26

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v25

    .line 3873
    .local v25, "subscriberId":Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v3

    .line 3876
    .local v3, "template":Landroid/net/NetworkTemplate;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/net/NetworkPolicyManagerService$23$1;->this$1:Lcom/android/server/net/NetworkPolicyManagerService$23;

    iget-object v2, v2, Lcom/android/server/net/NetworkPolicyManagerService$23;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    # getter for: Lcom/android/server/net/NetworkPolicyManagerService;->mStatsSession:Landroid/net/INetworkStatsSession;
    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->access$2400(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/net/INetworkStatsSession;

    move-result-object v2

    const/4 v8, 0x0

    invoke-interface/range {v2 .. v8}, Landroid/net/INetworkStatsSession;->getSummaryForAllUid(Landroid/net/NetworkTemplate;JJZ)Landroid/net/NetworkStats;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 3880
    .local v12, "data":Landroid/net/NetworkStats;
    invoke-virtual {v12}, Landroid/net/NetworkStats;->size()I

    move-result v21

    .line 3881
    .local v21, "size":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    .line 3882
    const/4 v2, 0x0

    move/from16 v0, v16

    invoke-virtual {v12, v0, v2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v14

    .line 3883
    .local v14, "entry":Landroid/net/NetworkStats$Entry;
    iget v2, v14, Landroid/net/NetworkStats$Entry;->uid:I

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v19

    .line 3884
    .local v19, "packageNames":[Ljava/lang/String;
    iget-wide v0, v14, Landroid/net/NetworkStats$Entry;->rxBytes:J

    move-wide/from16 v30, v0

    iget-wide v0, v14, Landroid/net/NetworkStats$Entry;->txBytes:J

    move-wide/from16 v32, v0

    add-long v28, v30, v32

    .line 3885
    .local v28, "total":J
    if-eqz v19, :cond_0

    .line 3887
    const-string v2, "packageName"

    invoke-static/range {v19 .. v19}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v2, v8}, Lcom/letv/tracker/agnes/Event;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 3888
    const-string v2, "dataUsage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v0, v28

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v30, ""

    move-object/from16 v0, v30

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v15, v2, v8}, Lcom/letv/tracker/agnes/Event;->addProp(Ljava/lang/String;Ljava/lang/String;)V

    .line 3881
    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 3877
    .end local v12    # "data":Landroid/net/NetworkStats;
    .end local v14    # "entry":Landroid/net/NetworkStats$Entry;
    .end local v16    # "i":I
    .end local v19    # "packageNames":[Ljava/lang/String;
    .end local v21    # "size":I
    .end local v28    # "total":J
    :catch_0
    move-exception v13

    .line 3871
    :goto_2
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 3891
    .restart local v12    # "data":Landroid/net/NetworkStats;
    .restart local v16    # "i":I
    .restart local v21    # "size":I
    :cond_1
    invoke-static {}, Lcom/letv/tracker/agnes/Agnes;->getInstance()Lcom/letv/tracker/agnes/Agnes;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/letv/tracker/agnes/Agnes;->report(Lcom/letv/tracker/agnes/Event;)V

    goto :goto_2

    .line 3893
    .end local v3    # "template":Landroid/net/NetworkTemplate;
    .end local v12    # "data":Landroid/net/NetworkStats;
    .end local v16    # "i":I
    .end local v21    # "size":I
    .end local v23    # "subId":I
    .end local v25    # "subscriberId":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method
