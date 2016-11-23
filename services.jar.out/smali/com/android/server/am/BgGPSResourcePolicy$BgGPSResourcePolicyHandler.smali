.class final Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;
.super Landroid/os/Handler;
.source "BackAppResourcePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/BgGPSResourcePolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BgGPSResourcePolicyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/BgGPSResourcePolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/am/BgGPSResourcePolicy;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1047
    iput-object p1, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    .line 1048
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1049
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 1053
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->mBGControlOpen:Z

    if-nez v3, :cond_2

    .line 1054
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v3, :cond_0

    const-string v3, "BgGPSResourcePolicy"

    const-string v4, "LIMIT_APP: not open feature,resetSample"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # invokes: Lcom/android/server/am/BgGPSResourcePolicy;->resetSample()V
    invoke-static {v3}, Lcom/android/server/am/BgGPSResourcePolicy;->access$200(Lcom/android/server/am/BgGPSResourcePolicy;)V

    .line 1145
    :cond_1
    :goto_0
    return-void

    .line 1058
    :cond_2
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 1060
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # invokes: Lcom/android/server/am/BgGPSResourcePolicy;->resetSample()V
    invoke-static {v3}, Lcom/android/server/am/BgGPSResourcePolicy;->access$200(Lcom/android/server/am/BgGPSResourcePolicy;)V

    .line 1061
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v3, :cond_3

    const-string v3, "BgGPSResourcePolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LIMIT_APP: Check Gps State ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # getter for: Lcom/android/server/am/BgGPSResourcePolicy;->mCheckGpsState:I
    invoke-static {v5}, Lcom/android/server/am/BgGPSResourcePolicy;->access$500(Lcom/android/server/am/BgGPSResourcePolicy;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mCurrent Gps State = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # invokes: Lcom/android/server/am/BgGPSResourcePolicy;->getCurrentGpsState()I
    invoke-static {v5}, Lcom/android/server/am/BgGPSResourcePolicy;->access$000(Lcom/android/server/am/BgGPSResourcePolicy;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    :cond_3
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # getter for: Lcom/android/server/am/BgGPSResourcePolicy;->mRestoreGpsState:I
    invoke-static {v3}, Lcom/android/server/am/BgGPSResourcePolicy;->access$100(Lcom/android/server/am/BgGPSResourcePolicy;)I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # getter for: Lcom/android/server/am/BgGPSResourcePolicy;->mCheckGpsState:I
    invoke-static {v3}, Lcom/android/server/am/BgGPSResourcePolicy;->access$500(Lcom/android/server/am/BgGPSResourcePolicy;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # invokes: Lcom/android/server/am/BgGPSResourcePolicy;->getCurrentGpsState()I
    invoke-static {v4}, Lcom/android/server/am/BgGPSResourcePolicy;->access$000(Lcom/android/server/am/BgGPSResourcePolicy;)I

    move-result v4

    if-ne v3, v4, :cond_1

    .line 1065
    const-string v3, "BgGPSResourcePolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LIMIT_APP: Stationary restore from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # invokes: Lcom/android/server/am/BgGPSResourcePolicy;->getCurrentGpsState()I
    invoke-static {v5}, Lcom/android/server/am/BgGPSResourcePolicy;->access$000(Lcom/android/server/am/BgGPSResourcePolicy;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # getter for: Lcom/android/server/am/BgGPSResourcePolicy;->mRestoreGpsState:I
    invoke-static {v5}, Lcom/android/server/am/BgGPSResourcePolicy;->access$100(Lcom/android/server/am/BgGPSResourcePolicy;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # getter for: Lcom/android/server/am/BgGPSResourcePolicy;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/am/BgGPSResourcePolicy;->access$400(Lcom/android/server/am/BgGPSResourcePolicy;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "location_mode"

    iget-object v5, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # getter for: Lcom/android/server/am/BgGPSResourcePolicy;->mRestoreGpsState:I
    invoke-static {v5}, Lcom/android/server/am/BgGPSResourcePolicy;->access$100(Lcom/android/server/am/BgGPSResourcePolicy;)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v1

    .line 1068
    .local v1, "isGpsRestoreState":Z
    const-string v3, "BgGPSResourcePolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LIMIT_APP: after restore Current Gps State = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # invokes: Lcom/android/server/am/BgGPSResourcePolicy;->getCurrentGpsState()I
    invoke-static {v5}, Lcom/android/server/am/BgGPSResourcePolicy;->access$000(Lcom/android/server/am/BgGPSResourcePolicy;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # setter for: Lcom/android/server/am/BgGPSResourcePolicy;->mRestoreGpsState:I
    invoke-static {v3, v6}, Lcom/android/server/am/BgGPSResourcePolicy;->access$102(Lcom/android/server/am/BgGPSResourcePolicy;I)I

    .line 1070
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # setter for: Lcom/android/server/am/BgGPSResourcePolicy;->mCheckGpsState:I
    invoke-static {v3, v6}, Lcom/android/server/am/BgGPSResourcePolicy;->access$502(Lcom/android/server/am/BgGPSResourcePolicy;I)I

    goto/16 :goto_0

    .line 1075
    .end local v1    # "isGpsRestoreState":Z
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # getter for: Lcom/android/server/am/BgGPSResourcePolicy;->mHandler:Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;
    invoke-static {v3}, Lcom/android/server/am/BgGPSResourcePolicy;->access$600(Lcom/android/server/am/BgGPSResourcePolicy;)Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;

    move-result-object v3

    const/16 v4, 0x66

    invoke-virtual {v3, v4}, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->removeMessages(I)V

    .line 1076
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # getter for: Lcom/android/server/am/BgGPSResourcePolicy;->mSamplingInProgress:Z
    invoke-static {v3}, Lcom/android/server/am/BgGPSResourcePolicy;->access$700(Lcom/android/server/am/BgGPSResourcePolicy;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1077
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    const/4 v4, 0x1

    # setter for: Lcom/android/server/am/BgGPSResourcePolicy;->mSamplingInProgress:Z
    invoke-static {v3, v4}, Lcom/android/server/am/BgGPSResourcePolicy;->access$702(Lcom/android/server/am/BgGPSResourcePolicy;Z)Z

    .line 1078
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # getter for: Lcom/android/server/am/BgGPSResourcePolicy;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v3}, Lcom/android/server/am/BgGPSResourcePolicy;->access$1000(Lcom/android/server/am/BgGPSResourcePolicy;)Landroid/hardware/SensorManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # getter for: Lcom/android/server/am/BgGPSResourcePolicy;->mListener:Landroid/hardware/SensorEventListener;
    invoke-static {v4}, Lcom/android/server/am/BgGPSResourcePolicy;->access$800(Lcom/android/server/am/BgGPSResourcePolicy;)Landroid/hardware/SensorEventListener;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # getter for: Lcom/android/server/am/BgGPSResourcePolicy;->mSensor:Landroid/hardware/Sensor;
    invoke-static {v5}, Lcom/android/server/am/BgGPSResourcePolicy;->access$900(Lcom/android/server/am/BgGPSResourcePolicy;)Landroid/hardware/Sensor;

    move-result-object v5

    const/16 v6, 0x3e8

    const v7, 0x1e8480

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;II)Z

    goto/16 :goto_0

    .line 1086
    :pswitch_2
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # getter for: Lcom/android/server/am/BgGPSResourcePolicy;->mHandler:Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;
    invoke-static {v3}, Lcom/android/server/am/BgGPSResourcePolicy;->access$600(Lcom/android/server/am/BgGPSResourcePolicy;)Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;

    move-result-object v3

    const/16 v4, 0x67

    invoke-virtual {v3, v4}, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->removeMessages(I)V

    .line 1087
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # getter for: Lcom/android/server/am/BgGPSResourcePolicy;->mHandler:Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;
    invoke-static {v3}, Lcom/android/server/am/BgGPSResourcePolicy;->access$600(Lcom/android/server/am/BgGPSResourcePolicy;)Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;

    move-result-object v3

    const/16 v4, 0x68

    invoke-virtual {v3, v4}, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->removeMessages(I)V

    .line 1088
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # getter for: Lcom/android/server/am/BgGPSResourcePolicy;->mSamplingInProgress:Z
    invoke-static {v3}, Lcom/android/server/am/BgGPSResourcePolicy;->access$700(Lcom/android/server/am/BgGPSResourcePolicy;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1089
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # getter for: Lcom/android/server/am/BgGPSResourcePolicy;->mSamplingTimes:I
    invoke-static {v3}, Lcom/android/server/am/BgGPSResourcePolicy;->access$1100(Lcom/android/server/am/BgGPSResourcePolicy;)I

    move-result v3

    if-ge v3, v8, :cond_7

    .line 1090
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # operator++ for: Lcom/android/server/am/BgGPSResourcePolicy;->mSamplingTimes:I
    invoke-static {v3}, Lcom/android/server/am/BgGPSResourcePolicy;->access$1108(Lcom/android/server/am/BgGPSResourcePolicy;)I

    .line 1091
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v3, :cond_4

    const-string v3, "BgGPSResourcePolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LIMIT_APP: mSamplingTimes = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # getter for: Lcom/android/server/am/BgGPSResourcePolicy;->mSamplingTimes:I
    invoke-static {v5}, Lcom/android/server/am/BgGPSResourcePolicy;->access$1100(Lcom/android/server/am/BgGPSResourcePolicy;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mSampleStationaryTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # getter for: Lcom/android/server/am/BgGPSResourcePolicy;->mSampleStationaryTime:I
    invoke-static {v5}, Lcom/android/server/am/BgGPSResourcePolicy;->access$1200(Lcom/android/server/am/BgGPSResourcePolicy;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # invokes: Lcom/android/server/am/BgGPSResourcePolicy;->scduleNextSample()V
    invoke-static {v3}, Lcom/android/server/am/BgGPSResourcePolicy;->access$1300(Lcom/android/server/am/BgGPSResourcePolicy;)V

    .line 1097
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # getter for: Lcom/android/server/am/BgGPSResourcePolicy;->mCurrSteps:I
    invoke-static {v3}, Lcom/android/server/am/BgGPSResourcePolicy;->access$1400(Lcom/android/server/am/BgGPSResourcePolicy;)I

    move-result v3

    if-ge v3, v8, :cond_5

    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # invokes: Lcom/android/server/am/BgGPSResourcePolicy;->isUsingGps()Z
    invoke-static {v3}, Lcom/android/server/am/BgGPSResourcePolicy;->access$1500(Lcom/android/server/am/BgGPSResourcePolicy;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # getter for: Lcom/android/server/am/BgGPSResourcePolicy;->mMoving:Z
    invoke-static {v3}, Lcom/android/server/am/BgGPSResourcePolicy;->access$1600(Lcom/android/server/am/BgGPSResourcePolicy;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 1098
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # operator++ for: Lcom/android/server/am/BgGPSResourcePolicy;->mSampleStationaryTime:I
    invoke-static {v3}, Lcom/android/server/am/BgGPSResourcePolicy;->access$1208(Lcom/android/server/am/BgGPSResourcePolicy;)I

    .line 1099
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v3, :cond_5

    const-string v3, "BgGPSResourcePolicy"

    const-string v4, "LIMIT_APP: mSampleStationaryTime++"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    :cond_5
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # getter for: Lcom/android/server/am/BgGPSResourcePolicy;->mSampleStationaryTime:I
    invoke-static {v3}, Lcom/android/server/am/BgGPSResourcePolicy;->access$1200(Lcom/android/server/am/BgGPSResourcePolicy;)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6

    .line 1102
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    iget-object v4, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # invokes: Lcom/android/server/am/BgGPSResourcePolicy;->getCurrentGpsState()I
    invoke-static {v4}, Lcom/android/server/am/BgGPSResourcePolicy;->access$000(Lcom/android/server/am/BgGPSResourcePolicy;)I

    move-result v4

    # setter for: Lcom/android/server/am/BgGPSResourcePolicy;->mRestoreGpsState:I
    invoke-static {v3, v4}, Lcom/android/server/am/BgGPSResourcePolicy;->access$102(Lcom/android/server/am/BgGPSResourcePolicy;I)I

    .line 1103
    const/4 v0, -0x1

    .line 1104
    .local v0, "gpsSetState":I
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # getter for: Lcom/android/server/am/BgGPSResourcePolicy;->mRestoreGpsState:I
    invoke-static {v3}, Lcom/android/server/am/BgGPSResourcePolicy;->access$100(Lcom/android/server/am/BgGPSResourcePolicy;)I

    move-result v3

    packed-switch v3, :pswitch_data_1

    .line 1112
    :pswitch_3
    const-string v3, "BgGPSResourcePolicy"

    const-string v4, "LIMIT_APP:STEP_END this should not happen"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    :goto_2
    if-ltz v0, :cond_9

    .line 1117
    const-string v3, "BgGPSResourcePolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LIMIT_APP: Stationary set from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # getter for: Lcom/android/server/am/BgGPSResourcePolicy;->mRestoreGpsState:I
    invoke-static {v5}, Lcom/android/server/am/BgGPSResourcePolicy;->access$100(Lcom/android/server/am/BgGPSResourcePolicy;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1118
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # getter for: Lcom/android/server/am/BgGPSResourcePolicy;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/am/BgGPSResourcePolicy;->access$400(Lcom/android/server/am/BgGPSResourcePolicy;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "location_mode"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v2

    .line 1120
    .local v2, "isGpsSetState":Z
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    iget-object v4, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # invokes: Lcom/android/server/am/BgGPSResourcePolicy;->getCurrentGpsState()I
    invoke-static {v4}, Lcom/android/server/am/BgGPSResourcePolicy;->access$000(Lcom/android/server/am/BgGPSResourcePolicy;)I

    move-result v4

    # setter for: Lcom/android/server/am/BgGPSResourcePolicy;->mCheckGpsState:I
    invoke-static {v3, v4}, Lcom/android/server/am/BgGPSResourcePolicy;->access$502(Lcom/android/server/am/BgGPSResourcePolicy;I)I

    .line 1121
    const-string v3, "BgGPSResourcePolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LIMIT_APP: after set Current Gps State mCheckGpsState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # getter for: Lcom/android/server/am/BgGPSResourcePolicy;->mCheckGpsState:I
    invoke-static {v5}, Lcom/android/server/am/BgGPSResourcePolicy;->access$500(Lcom/android/server/am/BgGPSResourcePolicy;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1128
    .end local v2    # "isGpsSetState":Z
    :goto_3
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # setter for: Lcom/android/server/am/BgGPSResourcePolicy;->mSampleStationaryTime:I
    invoke-static {v3, v7}, Lcom/android/server/am/BgGPSResourcePolicy;->access$1202(Lcom/android/server/am/BgGPSResourcePolicy;I)I

    .line 1130
    .end local v0    # "gpsSetState":I
    :cond_6
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # getter for: Lcom/android/server/am/BgGPSResourcePolicy;->mSensorManager:Landroid/hardware/SensorManager;
    invoke-static {v3}, Lcom/android/server/am/BgGPSResourcePolicy;->access$1000(Lcom/android/server/am/BgGPSResourcePolicy;)Landroid/hardware/SensorManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # getter for: Lcom/android/server/am/BgGPSResourcePolicy;->mListener:Landroid/hardware/SensorEventListener;
    invoke-static {v4}, Lcom/android/server/am/BgGPSResourcePolicy;->access$800(Lcom/android/server/am/BgGPSResourcePolicy;)Landroid/hardware/SensorEventListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 1131
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # setter for: Lcom/android/server/am/BgGPSResourcePolicy;->mCurrSteps:I
    invoke-static {v3, v7}, Lcom/android/server/am/BgGPSResourcePolicy;->access$1402(Lcom/android/server/am/BgGPSResourcePolicy;I)I

    .line 1132
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # setter for: Lcom/android/server/am/BgGPSResourcePolicy;->mLastSteps:I
    invoke-static {v3, v7}, Lcom/android/server/am/BgGPSResourcePolicy;->access$1702(Lcom/android/server/am/BgGPSResourcePolicy;I)I

    .line 1133
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # setter for: Lcom/android/server/am/BgGPSResourcePolicy;->mSamplingInProgress:Z
    invoke-static {v3, v7}, Lcom/android/server/am/BgGPSResourcePolicy;->access$702(Lcom/android/server/am/BgGPSResourcePolicy;Z)Z

    goto/16 :goto_0

    .line 1094
    :cond_7
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v3, :cond_8

    const-string v3, "BgGPSResourcePolicy"

    const-string v4, "LIMIT_APP: stop watching gps uri,reason 2"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    :cond_8
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # getter for: Lcom/android/server/am/BgGPSResourcePolicy;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/am/BgGPSResourcePolicy;->access$400(Lcom/android/server/am/BgGPSResourcePolicy;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # getter for: Lcom/android/server/am/BgGPSResourcePolicy;->mBgGPSSettingsObserver:Lcom/android/server/am/BgGPSResourcePolicy$BgGPSSettingsObserver;
    invoke-static {v4}, Lcom/android/server/am/BgGPSResourcePolicy;->access$300(Lcom/android/server/am/BgGPSResourcePolicy;)Lcom/android/server/am/BgGPSResourcePolicy$BgGPSSettingsObserver;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto/16 :goto_1

    .line 1106
    .restart local v0    # "gpsSetState":I
    :pswitch_4
    const/4 v0, 0x0

    .line 1107
    goto/16 :goto_2

    .line 1109
    :pswitch_5
    const/4 v0, 0x2

    .line 1110
    goto/16 :goto_2

    .line 1123
    :cond_9
    const-string v3, "BgGPSResourcePolicy"

    const-string v4, "LIMIT_APP: Stationary but not set because Set State param <0,wrong flow but harmless "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # setter for: Lcom/android/server/am/BgGPSResourcePolicy;->mRestoreGpsState:I
    invoke-static {v3, v6}, Lcom/android/server/am/BgGPSResourcePolicy;->access$102(Lcom/android/server/am/BgGPSResourcePolicy;I)I

    .line 1125
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # setter for: Lcom/android/server/am/BgGPSResourcePolicy;->mCheckGpsState:I
    invoke-static {v3, v6}, Lcom/android/server/am/BgGPSResourcePolicy;->access$502(Lcom/android/server/am/BgGPSResourcePolicy;I)I

    goto :goto_3

    .line 1138
    .end local v0    # "gpsSetState":I
    :pswitch_6
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LIMIT:Z

    if-eqz v3, :cond_a

    const-string v3, "BgGPSResourcePolicy"

    const-string v4, "LIMIT_APP: STEP_TIME_OUT this should not happen, just in case"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    :cond_a
    iget-object v3, p0, Lcom/android/server/am/BgGPSResourcePolicy$BgGPSResourcePolicyHandler;->this$0:Lcom/android/server/am/BgGPSResourcePolicy;

    # invokes: Lcom/android/server/am/BgGPSResourcePolicy;->resetSample()V
    invoke-static {v3}, Lcom/android/server/am/BgGPSResourcePolicy;->access$200(Lcom/android/server/am/BgGPSResourcePolicy;)V

    goto/16 :goto_0

    .line 1058
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
    .end packed-switch

    .line 1104
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method
